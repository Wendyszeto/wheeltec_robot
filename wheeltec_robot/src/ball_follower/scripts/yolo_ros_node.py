#!/usr/bin/env python3

import os
import rospy
import cv2
import time
from ultralytics import YOLO
from sensor_msgs.msg import Image
from std_msgs.msg import String
from cv_bridge import CvBridge, CvBridgeError
import json

class YoloRosNode:
    def __init__(self):
        # Initialize ROS Node
        rospy.init_node("yolo_ball_detection")

        # Publishers
        self.image_pub = rospy.Publisher("/usb_cam/detected_image", Image, queue_size=10)
        self.metadata_pub = rospy.Publisher("/yolo/metadata", String, queue_size=10)
        
        # Get path to the model file in the same directory as this script
        script_dir = os.path.dirname(os.path.realpath(__file__))
        model_path = os.path.join(script_dir, "weights.engine")

        # Check if the model file exists
        if not os.path.exists(model_path):
            rospy.logerr(f"Model file not found at {model_path}")
            rospy.signal_shutdown("Model file missing.")
            return

        # Initialize YOLO model
        rospy.loginfo(f"Loading YOLO model from: {model_path}")
        self.model = YOLO(model_path)

        # OpenCV Bridge
        self.bridge = CvBridge()

        # Subscribers
        self.image_sub = rospy.Subscriber("/usb_cam/image_raw", Image, self.image_callback)

    def image_callback(self, msg):
        # Start timer for FPS calculation
        start = time.time()

        try:
            # Convert ROS Image message to OpenCV format
            frame = self.bridge.imgmsg_to_cv2(msg, desired_encoding="bgr8")
        except CvBridgeError as e:
            rospy.logerr(f"Failed to convert image: {e}")
            return

        # Perform YOLO detection
        results = self.model.predict(source=frame, device=0, save=False, verbose=False)

        # Parse metadata from YOLO results
        detections = []
        for box in results[0].boxes:
            detections.append({
                "class": int(box.cls),
                "label": results[0].names[int(box.cls)],
                "confidence": float(box.conf),
                "box": [float(v) for v in box.xyxy[0]]  # [x_min, y_min, x_max, y_max]
            })

        # Annotated image
        annotated_frame = results[0].plot()

        # Calculate FPS
        fps = 1 / (time.time() - start)
        print(f"fps:{fps} detections:{len(detections)}")
        cv2.putText(annotated_frame, f"FPS: {fps:.2f}", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)

        # Publish annotated image
        try:
            image_msg = self.bridge.cv2_to_imgmsg(annotated_frame, encoding="bgr8")
            self.image_pub.publish(image_msg)
        except CvBridgeError as e:
            rospy.logerr(f"Failed to convert annotated image: {e}")

        # Publish metadata as JSON
        metadata_msg = json.dumps({"detections": detections, "fps": fps})
        self.metadata_pub.publish(metadata_msg)

    def run(self):
        rospy.spin()

if __name__ == "__main__":
    try:
        node = YoloRosNode()
        node.run()
    except rospy.ROSInterruptException:
        pass

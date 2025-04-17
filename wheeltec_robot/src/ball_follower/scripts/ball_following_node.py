#!/usr/bin/env python3

import os
import rospy
import cv2
import time
import torch
from ultralytics import YOLO
from sensor_msgs.msg import Image
from std_msgs.msg import String
from cv_bridge import CvBridge, CvBridgeError
import json

class YoloV5RosNode:
    def __init__(self):
        # Initialize ROS Node
        rospy.init_node("yolo_ball_detection")

        # Publishers
        self.image_pub = rospy.Publisher("/usb_cam/detected_image", Image, queue_size=10)
        self.metadata_pub = rospy.Publisher("/yolo/metadata", String, queue_size=10)
        
        # Get path to the model files
        script_dir = os.path.dirname(os.path.realpath(__file__))
        model_path = os.path.join(script_dir, "yolov5s.pt")  # Using YOLOv5s model
        
        # Check if CUDA is available
        self.device = 'cuda' if torch.cuda.is_available() else 'cpu'
        rospy.loginfo(f"Using device: {self.device}")

        # Check if the model file exists
        if not os.path.exists(model_path):
            rospy.logerr(f"Model file not found at {model_path}")
            rospy.signal_shutdown("Model file missing.")
            return

        # Initialize YOLO model
        rospy.loginfo(f"Loading YOLOv5 model from: {model_path}")
        self.model = YOLO(model_path)
        
        # Set model parameters
        self.model.conf = 0.25  # Confidence threshold
        self.model.iou = 0.45   # NMS IOU threshold
        self.model.classes = None  # Filter by class, i.e. = [0, 15, 16] for persons, cats and dogs

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

        # Perform YOLOv5 detection
        results = self.model(frame, size=640)  # size can be adjusted (must be multiple of 32)

        # Parse metadata from YOLO results
        detections = []
        for pred in results.pred[0]:  # Only process first image in batch
            x1, y1, x2, y2, conf, cls = pred
            detections.append({
                "class": int(cls),
                "label": results.names[int(cls)],
                "confidence": float(conf),
                "box": [float(x1), float(y1), float(x2), float(y2)]
            })

        # Draw detections on frame
        annotated_frame = frame.copy()
        for det in detections:
            box = det["box"]
            label = f"{det['label']} {det['confidence']:.2f}"
            
            # Draw box
            cv2.rectangle(annotated_frame, 
                        (int(box[0]), int(box[1])), 
                        (int(box[2]), int(box[3])), 
                        (0, 255, 0), 2)
            
            # Draw label
            cv2.putText(annotated_frame, label, 
                       (int(box[0]), int(box[1] - 10)), 
                       cv2.FONT_HERSHEY_SIMPLEX, 0.5, 
                       (0, 255, 0), 2)

        # Calculate FPS
        fps = 1 / (time.time() - start)
        rospy.loginfo(f"FPS: {fps:.2f} Detections: {len(detections)}")
        cv2.putText(annotated_frame, f"FPS: {fps:.2f}", 
                   (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 
                   1, (0, 255, 0), 2)

        # Publish annotated image
        try:
            image_msg = self.bridge.cv2_to_imgmsg(annotated_frame, encoding="bgr8")
            self.image_pub.publish(image_msg)
        except CvBridgeError as e:
            rospy.logerr(f"Failed to convert annotated image: {e}")

        # Publish metadata as JSON
        metadata_msg = json.dumps({
            "detections": detections,
            "fps": fps,
            "device": self.device
        })
        self.metadata_pub.publish(metadata_msg)

    def run(self):
        rospy.spin()

if __name__ == "__main__":
    try:
        node = YoloV5RosNode()
        node.run()
    except rospy.ROSInterruptException:
        pass

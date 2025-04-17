#!/usr/bin/env python3

import rospy
import json
from geometry_msgs.msg import Twist
from std_msgs.msg import String

class BallFollower:
    
    def __init__(self):
        rospy.init_node("ball_follower")

        # Publisher for robot velocity
        self.cmd_pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)

        # Subscriber for YOLO metadata
        self.metadata_sub = rospy.Subscriber("/yolo/metadata", String, self.metadata_callback)

        # Screen width (replace with actual dimensions of your camera feed)
        self.screen_width = 640  # Default for a 640x480 camera
        self.center_region = (self.screen_width * 0.3, self.screen_width * 0.7)  # Middle third of the screen

        # Movement command and timeout
        self.twist = Twist()  # The latest Twist command to publish
        self.last_detection_time = None  # Timestamp of the last detection
        self.detection_timeout = 1.0  # Stop if no detection is received for 1 second

        # Publish Twist commands at a regular rate
        self.publish_rate = rospy.Rate(30)  # 30 Hz
        
        self.iscatch = False

    def calculate_center_x(self, box):
        """
        Calculate the x-coordinate of the center of a bounding box.
        """
        x_min, y_min, x_max, y_max = box
        return (x_min + x_max) / 2

    def calculate_area(self, box):
        """
        Calculate the area of a bounding box.
        """
        x_min, y_min, x_max, y_max = box
        return (x_max - x_min) * (y_max - y_min)
        
    def calculate_x(self, box):
        x_min, y_min, x_max, y_max = box
        return (x_max - x_min)

    def metadata_callback(self, msg):
        """
        Callback for YOLO metadata. Processes detections, selects the ball, and updates robot velocity.
        """
        
        try:
            # Deserialize JSON metadata
            metadata = json.loads(msg.data)

            # Check if there are detections
            detections = metadata.get("detections", [])
            if not detections:
                rospy.loginfo("No detections found.")
                #self.stop_robot()
                self.twist.angular.z = 0.30
                return

            # Sort detections by confidence and size (area of bounding box)
            detections = sorted(
                detections,
                key=lambda d: (d["confidence"], self.calculate_area(d["box"])),
                reverse=True
            )

            # Pick the first detection (most confident and largest)
            best_detection = detections[0]

            # Extract the x position (center of the bounding box)
            ball_x = self.calculate_center_x(best_detection["box"])

            # Determine movement based on ball position
            
            #rospy.loginfo(best_detection["class"])
            #rospy.loginfo(self.calculate_x(best_detection["box"]))
            if best_detection["class"] != 1:
                rospy.loginfo("find 0")
                if self.calculate_area(best_detection["box"]) > 45000:
                    rospy.loginfo("Ball in center region. Stop")
                    self.stop_robot()
                    self.iscatch = True
                elif self.center_region[0] <= ball_x <= self.center_region[1]:
                    # Ball is in the center region -> Stop rotating
                    rospy.loginfo("Ball in center region. Stopping rotation.")
                    #rospy.loginfo(self.calculate_area(best_detection["box"]))
                    self.twist.angular.z = 0.0
                    self.twist.linear.x = 0.1
                elif ball_x < self.center_region[0]:
                    # Ball is on the left -> Rotate clockwise
                    rospy.loginfo("Ball on the left. Rotating clockwise.")
                    self.twist.angular.z = 0.2
                    self.twist.linear.x = 0
                else:
                    # Ball is on the right -> Rotate counterclockwise
                    rospy.loginfo("Ball on the right. Rotating counterclockwise.")
                    self.twist.angular.z = -0.2
                    self.twist.linear.x = 0
            elif best_detection["class"] == 1 and self.iscatch == True:
                rospy.loginfo("find 1")
                if self.calculate_x(best_detection["box"]) > 210:
                    rospy.loginfo("Box in center region. Stop")
                    self.stop_robot()
                elif self.center_region[0] <= ball_x <= self.center_region[1]:
                    # Ball is in the center region -> Stop rotating
                    rospy.loginfo("Box in center region. Stopping rotation.")
                    #rospy.loginfo(self.calculate_area(best_detection["box"]))
                    self.twist.angular.z = 0.0
                    self.twist.linear.x = 0.1
                elif ball_x < self.center_region[0]:
                    # Ball is on the left -> Rotate clockwise
                    rospy.loginfo("Box on the left. Rotating clockwise.")
                    self.twist.angular.z = 0.17
                    self.twist.linear.x = 0
                else:
                    # Ball is on the right -> Rotate counterclockwise
                    rospy.loginfo("Box on the right. Rotating counterclockwise.")
                    self.twist.angular.z = -0.17
                    self.twist.linear.x = 0

            # Update the last detection timestamp
            self.last_detection_time = rospy.Time.now()

        except Exception as e:
            rospy.logerr(f"Error processing metadata: {e}")
            self.stop_robot()

    def stop_robot(self):
        """
        Stop the robot by publishing a zero Twist message.
        """
        self.twist = Twist()  # Reset Twist command to zero
        self.cmd_pub.publish(self.twist)

    def publish_twist(self):
        """
        Continuously publish the latest Twist message at a fixed rate.
        If no detection is received within the timeout, stop the robot.
        """
        while not rospy.is_shutdown():
            # Check for detection timeout
            if self.last_detection_time:
                time_since_detection = (rospy.Time.now() - self.last_detection_time).to_sec()
                if time_since_detection > self.detection_timeout:
                    rospy.logwarn("No ball detected. Stopping the robot.")
                    self.stop_robot()
                    self.last_detection_time = None  # Reset detection timestamp

            # Publish the latest Twist command
            self.cmd_pub.publish(self.twist)

            # Sleep to maintain loop rate
            self.publish_rate.sleep()

    def run(self):
        rospy.loginfo("Ball follower node started.")
        self.publish_twist()


if __name__ == "__main__":
    try:
        ball_follower = BallFollower()
        ball_follower.run()
    except rospy.ROSInterruptException:
        pass

'''#!/usr/bin/env python3

import rospy
import json
from geometry_msgs.msg import Twist
from std_msgs.msg import String

class BallFollower:
    def __init__(self):
        rospy.init_node("ball_follower")

        # Publisher for robot velocity
        self.cmd_pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)

        # Subscriber for YOLO metadata
        self.metadata_sub = rospy.Subscriber("/yolo/metadata", String, self.metadata_callback)

        # Screen parameters
        self.screen_width = 640  # Adjust based on your camera resolution
        self.center_region = (self.screen_width * 0.3, self.screen_width * 0.7)

        # Movement parameters
        self.twist = Twist()
        self.last_detection_time = None
        self.detection_timeout = 1.0
        
        # New parameters for distance control
        self.target_area = 10000  # Target bounding box area (pixels) - tune this
        self.area_tolerance = 0.2  # 20% tolerance around target area
        self.max_linear_speed = 0.2  # Maximum forward/backward speed
        self.max_angular_speed = 0.2  # Maximum rotation speed

        # Publish rate
        self.publish_rate = rospy.Rate(30)

    def calculate_center_x(self, box):
        x_min, y_min, x_max, y_max = box
        return (x_min + x_max) / 2

    def calculate_area(self, box):
        x_min, y_min, x_max, y_max = box
        return (x_max - x_min) * (y_max - y_min)

    def metadata_callback(self, msg):
        try:
            metadata = json.loads(msg.data)
            detections = metadata.get("detections", [])
            
            if not detections:
                rospy.loginfo("No detections found.")
                self.stop_robot()
                return

            # Filter for ball class and sort by confidence and size
            ball_detections = [d for d in detections if d.get("class") == "ball"]
            if not ball_detections:
                rospy.loginfo("No ball detected.")
                self.stop_robot()
                return

            best_detection = sorted(
                ball_detections,
                key=lambda d: (d["confidence"], self.calculate_area(d["box"])),
                reverse=True
            )[0]

            # Calculate ball position and size
            ball_x = self.calculate_center_x(best_detection["box"])
            ball_area = self.calculate_area(best_detection["box"])

            # Angular control (rotation)
            if self.center_region[0] <= ball_x <= self.center_region[1]:
                self.twist.angular.z = 0.0
                rospy.loginfo("Ball centered")
            elif ball_x < self.center_region[0]:
                self.twist.angular.z = self.max_angular_speed
                rospy.loginfo("Rotating clockwise")
            else:
                self.twist.angular.z = -self.max_angular_speed
                rospy.loginfo("Rotating counterclockwise")

            # Linear control (forward/backward)
            area_min = self.target_area * (1 - self.area_tolerance)
            area_max = self.target_area * (1 + self.area_tolerance)
            
            if area_min <= ball_area <= area_max:
                self.twist.linear.x = 0.0
                rospy.loginfo("At target distance")
            elif ball_area < area_min:
                # Ball is too far (too small) - move forward
                distance_error = (area_min - ball_area) / area_min
                self.twist.linear.x = min(self.max_linear_speed * distance_error, self.max_linear_speed)
                rospy.loginfo("Moving forward")
            else:
                # Ball is too close (too big) - move backward
                distance_error = (ball_area - area_max) / area_max
                self.twist.linear.x = max(-self.max_linear_speed * distance_error, -self.max_linear_speed)
                rospy.loginfo("Moving backward")

            # Update detection timestamp
            self.last_detection_time = rospy.Time.now()

            # If ball is centered and at target distance, stop completely
            if (self.twist.angular.z == 0.0 and 
                area_min <= ball_area <= area_max):
                self.stop_robot()
                rospy.loginfo("Ball reached - stopping")

        except Exception as e:
            rospy.logerr(f"Error processing metadata: {e}")
            self.stop_robot()

    def stop_robot(self):
        self.twist = Twist()
        self.cmd_pub.publish(self.twist)

    def publish_twist(self):
        while not rospy.is_shutdown():
            if self.last_detection_time:
                time_since_detection = (rospy.Time.now() - self.last_detection_time).to_sec()
                if time_since_detection > self.detection_timeout:
                    rospy.logwarn("No ball detected. Stopping the robot.")
                    self.stop_robot()
                    self.last_detection_time = None

            self.cmd_pub.publish(self.twist)
            self.publish_rate.sleep()

    def run(self):
        rospy.loginfo("Ball follower node started.")
        self.publish_twist()

if __name__ == "__main__":
    try:
        ball_follower = BallFollower()
        ball_follower.run()
    except rospy.ROSInterruptException:
        pass
        '''

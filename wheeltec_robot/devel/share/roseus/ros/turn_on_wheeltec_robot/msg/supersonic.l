;; Auto-generated. Do not edit!


(when (boundp 'turn_on_wheeltec_robot::supersonic)
  (if (not (find-package "TURN_ON_WHEELTEC_ROBOT"))
    (make-package "TURN_ON_WHEELTEC_ROBOT"))
  (shadow 'supersonic (find-package "TURN_ON_WHEELTEC_ROBOT")))
(unless (find-package "TURN_ON_WHEELTEC_ROBOT::SUPERSONIC")
  (make-package "TURN_ON_WHEELTEC_ROBOT::SUPERSONIC"))

(in-package "ROS")
;;//! \htmlinclude supersonic.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass turn_on_wheeltec_robot::supersonic
  :super ros::object
  :slots (_header _distanceA _distanceB _distanceC _distanceD _distanceE _distanceF _distanceG _distanceH ))

(defmethod turn_on_wheeltec_robot::supersonic
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:distanceA __distanceA) 0.0)
    ((:distanceB __distanceB) 0.0)
    ((:distanceC __distanceC) 0.0)
    ((:distanceD __distanceD) 0.0)
    ((:distanceE __distanceE) 0.0)
    ((:distanceF __distanceF) 0.0)
    ((:distanceG __distanceG) 0.0)
    ((:distanceH __distanceH) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _distanceA (float __distanceA))
   (setq _distanceB (float __distanceB))
   (setq _distanceC (float __distanceC))
   (setq _distanceD (float __distanceD))
   (setq _distanceE (float __distanceE))
   (setq _distanceF (float __distanceF))
   (setq _distanceG (float __distanceG))
   (setq _distanceH (float __distanceH))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:distanceA
   (&optional __distanceA)
   (if __distanceA (setq _distanceA __distanceA)) _distanceA)
  (:distanceB
   (&optional __distanceB)
   (if __distanceB (setq _distanceB __distanceB)) _distanceB)
  (:distanceC
   (&optional __distanceC)
   (if __distanceC (setq _distanceC __distanceC)) _distanceC)
  (:distanceD
   (&optional __distanceD)
   (if __distanceD (setq _distanceD __distanceD)) _distanceD)
  (:distanceE
   (&optional __distanceE)
   (if __distanceE (setq _distanceE __distanceE)) _distanceE)
  (:distanceF
   (&optional __distanceF)
   (if __distanceF (setq _distanceF __distanceF)) _distanceF)
  (:distanceG
   (&optional __distanceG)
   (if __distanceG (setq _distanceG __distanceG)) _distanceG)
  (:distanceH
   (&optional __distanceH)
   (if __distanceH (setq _distanceH __distanceH)) _distanceH)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _distanceA
    4
    ;; float32 _distanceB
    4
    ;; float32 _distanceC
    4
    ;; float32 _distanceD
    4
    ;; float32 _distanceE
    4
    ;; float32 _distanceF
    4
    ;; float32 _distanceG
    4
    ;; float32 _distanceH
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _distanceA
       (sys::poke _distanceA (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceB
       (sys::poke _distanceB (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceC
       (sys::poke _distanceC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceD
       (sys::poke _distanceD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceE
       (sys::poke _distanceE (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceF
       (sys::poke _distanceF (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceG
       (sys::poke _distanceG (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceH
       (sys::poke _distanceH (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _distanceA
     (setq _distanceA (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceB
     (setq _distanceB (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceC
     (setq _distanceC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceD
     (setq _distanceD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceE
     (setq _distanceE (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceF
     (setq _distanceF (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceG
     (setq _distanceG (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceH
     (setq _distanceH (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turn_on_wheeltec_robot::supersonic :md5sum-) "aca1ed3052718b36dedbbae37ec7b6eb")
(setf (get turn_on_wheeltec_robot::supersonic :datatype-) "turn_on_wheeltec_robot/supersonic")
(setf (get turn_on_wheeltec_robot::supersonic :definition-)
      "Header header
float32 distanceA
float32 distanceB
float32 distanceC
float32 distanceD
float32 distanceE
float32 distanceF
float32 distanceG
float32 distanceH
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :turn_on_wheeltec_robot/supersonic "aca1ed3052718b36dedbbae37ec7b6eb")



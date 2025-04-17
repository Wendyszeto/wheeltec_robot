; Auto-generated. Do not edit!


(cl:in-package turn_on_wheeltec_robot-msg)


;//! \htmlinclude supersonic.msg.html

(cl:defclass <supersonic> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (distanceA
    :reader distanceA
    :initarg :distanceA
    :type cl:float
    :initform 0.0)
   (distanceB
    :reader distanceB
    :initarg :distanceB
    :type cl:float
    :initform 0.0)
   (distanceC
    :reader distanceC
    :initarg :distanceC
    :type cl:float
    :initform 0.0)
   (distanceD
    :reader distanceD
    :initarg :distanceD
    :type cl:float
    :initform 0.0)
   (distanceE
    :reader distanceE
    :initarg :distanceE
    :type cl:float
    :initform 0.0)
   (distanceF
    :reader distanceF
    :initarg :distanceF
    :type cl:float
    :initform 0.0)
   (distanceG
    :reader distanceG
    :initarg :distanceG
    :type cl:float
    :initform 0.0)
   (distanceH
    :reader distanceH
    :initarg :distanceH
    :type cl:float
    :initform 0.0))
)

(cl:defclass supersonic (<supersonic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supersonic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supersonic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turn_on_wheeltec_robot-msg:<supersonic> is deprecated: use turn_on_wheeltec_robot-msg:supersonic instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <supersonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_on_wheeltec_robot-msg:header-val is deprecated.  Use turn_on_wheeltec_robot-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'distanceA-val :lambda-list '(m))
(cl:defmethod distanceA-val ((m <supersonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_on_wheeltec_robot-msg:distanceA-val is deprecated.  Use turn_on_wheeltec_robot-msg:distanceA instead.")
  (distanceA m))

(cl:ensure-generic-function 'distanceB-val :lambda-list '(m))
(cl:defmethod distanceB-val ((m <supersonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_on_wheeltec_robot-msg:distanceB-val is deprecated.  Use turn_on_wheeltec_robot-msg:distanceB instead.")
  (distanceB m))

(cl:ensure-generic-function 'distanceC-val :lambda-list '(m))
(cl:defmethod distanceC-val ((m <supersonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_on_wheeltec_robot-msg:distanceC-val is deprecated.  Use turn_on_wheeltec_robot-msg:distanceC instead.")
  (distanceC m))

(cl:ensure-generic-function 'distanceD-val :lambda-list '(m))
(cl:defmethod distanceD-val ((m <supersonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_on_wheeltec_robot-msg:distanceD-val is deprecated.  Use turn_on_wheeltec_robot-msg:distanceD instead.")
  (distanceD m))

(cl:ensure-generic-function 'distanceE-val :lambda-list '(m))
(cl:defmethod distanceE-val ((m <supersonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_on_wheeltec_robot-msg:distanceE-val is deprecated.  Use turn_on_wheeltec_robot-msg:distanceE instead.")
  (distanceE m))

(cl:ensure-generic-function 'distanceF-val :lambda-list '(m))
(cl:defmethod distanceF-val ((m <supersonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_on_wheeltec_robot-msg:distanceF-val is deprecated.  Use turn_on_wheeltec_robot-msg:distanceF instead.")
  (distanceF m))

(cl:ensure-generic-function 'distanceG-val :lambda-list '(m))
(cl:defmethod distanceG-val ((m <supersonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_on_wheeltec_robot-msg:distanceG-val is deprecated.  Use turn_on_wheeltec_robot-msg:distanceG instead.")
  (distanceG m))

(cl:ensure-generic-function 'distanceH-val :lambda-list '(m))
(cl:defmethod distanceH-val ((m <supersonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_on_wheeltec_robot-msg:distanceH-val is deprecated.  Use turn_on_wheeltec_robot-msg:distanceH instead.")
  (distanceH m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supersonic>) ostream)
  "Serializes a message object of type '<supersonic>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distanceA))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distanceB))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distanceC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distanceD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distanceE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distanceF))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distanceG))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distanceH))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supersonic>) istream)
  "Deserializes a message object of type '<supersonic>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distanceA) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distanceB) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distanceC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distanceD) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distanceE) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distanceF) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distanceG) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distanceH) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supersonic>)))
  "Returns string type for a message object of type '<supersonic>"
  "turn_on_wheeltec_robot/supersonic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supersonic)))
  "Returns string type for a message object of type 'supersonic"
  "turn_on_wheeltec_robot/supersonic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supersonic>)))
  "Returns md5sum for a message object of type '<supersonic>"
  "aca1ed3052718b36dedbbae37ec7b6eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supersonic)))
  "Returns md5sum for a message object of type 'supersonic"
  "aca1ed3052718b36dedbbae37ec7b6eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supersonic>)))
  "Returns full string definition for message of type '<supersonic>"
  (cl:format cl:nil "Header header~%float32 distanceA~%float32 distanceB~%float32 distanceC~%float32 distanceD~%float32 distanceE~%float32 distanceF~%float32 distanceG~%float32 distanceH~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supersonic)))
  "Returns full string definition for message of type 'supersonic"
  (cl:format cl:nil "Header header~%float32 distanceA~%float32 distanceB~%float32 distanceC~%float32 distanceD~%float32 distanceE~%float32 distanceF~%float32 distanceG~%float32 distanceH~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supersonic>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supersonic>))
  "Converts a ROS message object to a list"
  (cl:list 'supersonic
    (cl:cons ':header (header msg))
    (cl:cons ':distanceA (distanceA msg))
    (cl:cons ':distanceB (distanceB msg))
    (cl:cons ':distanceC (distanceC msg))
    (cl:cons ':distanceD (distanceD msg))
    (cl:cons ':distanceE (distanceE msg))
    (cl:cons ':distanceF (distanceF msg))
    (cl:cons ':distanceG (distanceG msg))
    (cl:cons ':distanceH (distanceH msg))
))

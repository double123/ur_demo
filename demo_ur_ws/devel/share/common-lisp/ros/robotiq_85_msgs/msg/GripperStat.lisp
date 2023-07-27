; Auto-generated. Do not edit!


(cl:in-package robotiq_85_msgs-msg)


;//! \htmlinclude GripperStat.msg.html

(cl:defclass <GripperStat> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_ready
    :reader is_ready
    :initarg :is_ready
    :type cl:boolean
    :initform cl:nil)
   (is_reset
    :reader is_reset
    :initarg :is_reset
    :type cl:boolean
    :initform cl:nil)
   (is_moving
    :reader is_moving
    :initarg :is_moving
    :type cl:boolean
    :initform cl:nil)
   (obj_detected
    :reader obj_detected
    :initarg :obj_detected
    :type cl:boolean
    :initform cl:nil)
   (fault_status
    :reader fault_status
    :initarg :fault_status
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (requested_position
    :reader requested_position
    :initarg :requested_position
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperStat (<GripperStat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperStat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperStat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotiq_85_msgs-msg:<GripperStat> is deprecated: use robotiq_85_msgs-msg:GripperStat instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GripperStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:header-val is deprecated.  Use robotiq_85_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_ready-val :lambda-list '(m))
(cl:defmethod is_ready-val ((m <GripperStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:is_ready-val is deprecated.  Use robotiq_85_msgs-msg:is_ready instead.")
  (is_ready m))

(cl:ensure-generic-function 'is_reset-val :lambda-list '(m))
(cl:defmethod is_reset-val ((m <GripperStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:is_reset-val is deprecated.  Use robotiq_85_msgs-msg:is_reset instead.")
  (is_reset m))

(cl:ensure-generic-function 'is_moving-val :lambda-list '(m))
(cl:defmethod is_moving-val ((m <GripperStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:is_moving-val is deprecated.  Use robotiq_85_msgs-msg:is_moving instead.")
  (is_moving m))

(cl:ensure-generic-function 'obj_detected-val :lambda-list '(m))
(cl:defmethod obj_detected-val ((m <GripperStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:obj_detected-val is deprecated.  Use robotiq_85_msgs-msg:obj_detected instead.")
  (obj_detected m))

(cl:ensure-generic-function 'fault_status-val :lambda-list '(m))
(cl:defmethod fault_status-val ((m <GripperStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:fault_status-val is deprecated.  Use robotiq_85_msgs-msg:fault_status instead.")
  (fault_status m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GripperStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:position-val is deprecated.  Use robotiq_85_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'requested_position-val :lambda-list '(m))
(cl:defmethod requested_position-val ((m <GripperStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:requested_position-val is deprecated.  Use robotiq_85_msgs-msg:requested_position instead.")
  (requested_position m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <GripperStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:current-val is deprecated.  Use robotiq_85_msgs-msg:current instead.")
  (current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperStat>) ostream)
  "Serializes a message object of type '<GripperStat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ready) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_reset) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_moving) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obj_detected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'requested_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperStat>) istream)
  "Deserializes a message object of type '<GripperStat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_reset) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_moving) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obj_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'requested_position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperStat>)))
  "Returns string type for a message object of type '<GripperStat>"
  "robotiq_85_msgs/GripperStat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperStat)))
  "Returns string type for a message object of type 'GripperStat"
  "robotiq_85_msgs/GripperStat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperStat>)))
  "Returns md5sum for a message object of type '<GripperStat>"
  "b008656b72baf8ed957040c01e114fed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperStat)))
  "Returns md5sum for a message object of type 'GripperStat"
  "b008656b72baf8ed957040c01e114fed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperStat>)))
  "Returns full string definition for message of type '<GripperStat>"
  (cl:format cl:nil "Header header~%bool is_ready~%bool is_reset~%bool is_moving~%bool obj_detected~%uint8 fault_status~%float32 position~%float32 requested_position~%float32 current~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperStat)))
  "Returns full string definition for message of type 'GripperStat"
  (cl:format cl:nil "Header header~%bool is_ready~%bool is_reset~%bool is_moving~%bool obj_detected~%uint8 fault_status~%float32 position~%float32 requested_position~%float32 current~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperStat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperStat>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperStat
    (cl:cons ':header (header msg))
    (cl:cons ':is_ready (is_ready msg))
    (cl:cons ':is_reset (is_reset msg))
    (cl:cons ':is_moving (is_moving msg))
    (cl:cons ':obj_detected (obj_detected msg))
    (cl:cons ':fault_status (fault_status msg))
    (cl:cons ':position (position msg))
    (cl:cons ':requested_position (requested_position msg))
    (cl:cons ':current (current msg))
))

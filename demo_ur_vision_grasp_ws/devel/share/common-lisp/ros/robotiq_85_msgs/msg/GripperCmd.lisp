; Auto-generated. Do not edit!


(cl:in-package robotiq_85_msgs-msg)


;//! \htmlinclude GripperCmd.msg.html

(cl:defclass <GripperCmd> (roslisp-msg-protocol:ros-message)
  ((emergency_release
    :reader emergency_release
    :initarg :emergency_release
    :type cl:boolean
    :initform cl:nil)
   (emergency_release_dir
    :reader emergency_release_dir
    :initarg :emergency_release_dir
    :type cl:integer
    :initform 0)
   (stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperCmd (<GripperCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotiq_85_msgs-msg:<GripperCmd> is deprecated: use robotiq_85_msgs-msg:GripperCmd instead.")))

(cl:ensure-generic-function 'emergency_release-val :lambda-list '(m))
(cl:defmethod emergency_release-val ((m <GripperCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:emergency_release-val is deprecated.  Use robotiq_85_msgs-msg:emergency_release instead.")
  (emergency_release m))

(cl:ensure-generic-function 'emergency_release_dir-val :lambda-list '(m))
(cl:defmethod emergency_release_dir-val ((m <GripperCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:emergency_release_dir-val is deprecated.  Use robotiq_85_msgs-msg:emergency_release_dir instead.")
  (emergency_release_dir m))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <GripperCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:stop-val is deprecated.  Use robotiq_85_msgs-msg:stop instead.")
  (stop m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GripperCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:position-val is deprecated.  Use robotiq_85_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GripperCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:speed-val is deprecated.  Use robotiq_85_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <GripperCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_85_msgs-msg:force-val is deprecated.  Use robotiq_85_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperCmd>) ostream)
  "Serializes a message object of type '<GripperCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_release) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_release_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'emergency_release_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'emergency_release_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'emergency_release_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperCmd>) istream)
  "Deserializes a message object of type '<GripperCmd>"
    (cl:setf (cl:slot-value msg 'emergency_release) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_release_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'emergency_release_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'emergency_release_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'emergency_release_dir)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperCmd>)))
  "Returns string type for a message object of type '<GripperCmd>"
  "robotiq_85_msgs/GripperCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperCmd)))
  "Returns string type for a message object of type 'GripperCmd"
  "robotiq_85_msgs/GripperCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperCmd>)))
  "Returns md5sum for a message object of type '<GripperCmd>"
  "017fc0d464f4a4d072ae2519e0fc1789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperCmd)))
  "Returns md5sum for a message object of type 'GripperCmd"
  "017fc0d464f4a4d072ae2519e0fc1789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperCmd>)))
  "Returns full string definition for message of type '<GripperCmd>"
  (cl:format cl:nil "bool emergency_release~%uint32 emergency_release_dir~%bool stop~%float32 position~%float32 speed~%float32 force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperCmd)))
  "Returns full string definition for message of type 'GripperCmd"
  (cl:format cl:nil "bool emergency_release~%uint32 emergency_release_dir~%bool stop~%float32 position~%float32 speed~%float32 force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperCmd>))
  (cl:+ 0
     1
     4
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperCmd
    (cl:cons ':emergency_release (emergency_release msg))
    (cl:cons ':emergency_release_dir (emergency_release_dir msg))
    (cl:cons ':stop (stop msg))
    (cl:cons ':position (position msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':force (force msg))
))

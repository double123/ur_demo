; Auto-generated. Do not edit!


(cl:in-package manipulation_msgs-msg)


;//! \htmlinclude GraspPlanningErrorCode.msg.html

(cl:defclass <GraspPlanningErrorCode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass GraspPlanningErrorCode (<GraspPlanningErrorCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspPlanningErrorCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspPlanningErrorCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manipulation_msgs-msg:<GraspPlanningErrorCode> is deprecated: use manipulation_msgs-msg:GraspPlanningErrorCode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GraspPlanningErrorCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:value-val is deprecated.  Use manipulation_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GraspPlanningErrorCode>)))
    "Constants for message type '<GraspPlanningErrorCode>"
  '((:SUCCESS . 0)
    (:TF_ERROR . 1)
    (:OTHER_ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GraspPlanningErrorCode)))
    "Constants for message type 'GraspPlanningErrorCode"
  '((:SUCCESS . 0)
    (:TF_ERROR . 1)
    (:OTHER_ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspPlanningErrorCode>) ostream)
  "Serializes a message object of type '<GraspPlanningErrorCode>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspPlanningErrorCode>) istream)
  "Deserializes a message object of type '<GraspPlanningErrorCode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspPlanningErrorCode>)))
  "Returns string type for a message object of type '<GraspPlanningErrorCode>"
  "manipulation_msgs/GraspPlanningErrorCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspPlanningErrorCode)))
  "Returns string type for a message object of type 'GraspPlanningErrorCode"
  "manipulation_msgs/GraspPlanningErrorCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspPlanningErrorCode>)))
  "Returns md5sum for a message object of type '<GraspPlanningErrorCode>"
  "d0cbf262cc3d8075a46b994eef1bdb2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspPlanningErrorCode)))
  "Returns md5sum for a message object of type 'GraspPlanningErrorCode"
  "d0cbf262cc3d8075a46b994eef1bdb2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspPlanningErrorCode>)))
  "Returns full string definition for message of type '<GraspPlanningErrorCode>"
  (cl:format cl:nil "# Error codes for grasp and place planning~%~%# plan completed as expected~%int32 SUCCESS = 0~%~%# tf error encountered while transforming~%int32 TF_ERROR = 1 ~%~%# some other error~%int32 OTHER_ERROR = 2~%~%# the actual value of this error code~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspPlanningErrorCode)))
  "Returns full string definition for message of type 'GraspPlanningErrorCode"
  (cl:format cl:nil "# Error codes for grasp and place planning~%~%# plan completed as expected~%int32 SUCCESS = 0~%~%# tf error encountered while transforming~%int32 TF_ERROR = 1 ~%~%# some other error~%int32 OTHER_ERROR = 2~%~%# the actual value of this error code~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspPlanningErrorCode>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspPlanningErrorCode>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspPlanningErrorCode
    (cl:cons ':value (value msg))
))

; Auto-generated. Do not edit!


(cl:in-package manipulation_msgs-msg)


;//! \htmlinclude GraspResult.msg.html

(cl:defclass <GraspResult> (roslisp-msg-protocol:ros-message)
  ((result_code
    :reader result_code
    :initarg :result_code
    :type cl:integer
    :initform 0)
   (continuation_possible
    :reader continuation_possible
    :initarg :continuation_possible
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GraspResult (<GraspResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manipulation_msgs-msg:<GraspResult> is deprecated: use manipulation_msgs-msg:GraspResult instead.")))

(cl:ensure-generic-function 'result_code-val :lambda-list '(m))
(cl:defmethod result_code-val ((m <GraspResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:result_code-val is deprecated.  Use manipulation_msgs-msg:result_code instead.")
  (result_code m))

(cl:ensure-generic-function 'continuation_possible-val :lambda-list '(m))
(cl:defmethod continuation_possible-val ((m <GraspResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:continuation_possible-val is deprecated.  Use manipulation_msgs-msg:continuation_possible instead.")
  (continuation_possible m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GraspResult>)))
    "Constants for message type '<GraspResult>"
  '((:SUCCESS . 1)
    (:GRASP_OUT_OF_REACH . 2)
    (:GRASP_IN_COLLISION . 3)
    (:GRASP_UNFEASIBLE . 4)
    (:PREGRASP_OUT_OF_REACH . 5)
    (:PREGRASP_IN_COLLISION . 6)
    (:PREGRASP_UNFEASIBLE . 7)
    (:LIFT_OUT_OF_REACH . 8)
    (:LIFT_IN_COLLISION . 9)
    (:LIFT_UNFEASIBLE . 10)
    (:MOVE_ARM_FAILED . 11)
    (:GRASP_FAILED . 12)
    (:LIFT_FAILED . 13)
    (:RETREAT_FAILED . 14))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GraspResult)))
    "Constants for message type 'GraspResult"
  '((:SUCCESS . 1)
    (:GRASP_OUT_OF_REACH . 2)
    (:GRASP_IN_COLLISION . 3)
    (:GRASP_UNFEASIBLE . 4)
    (:PREGRASP_OUT_OF_REACH . 5)
    (:PREGRASP_IN_COLLISION . 6)
    (:PREGRASP_UNFEASIBLE . 7)
    (:LIFT_OUT_OF_REACH . 8)
    (:LIFT_IN_COLLISION . 9)
    (:LIFT_UNFEASIBLE . 10)
    (:MOVE_ARM_FAILED . 11)
    (:GRASP_FAILED . 12)
    (:LIFT_FAILED . 13)
    (:RETREAT_FAILED . 14))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspResult>) ostream)
  "Serializes a message object of type '<GraspResult>"
  (cl:let* ((signed (cl:slot-value msg 'result_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'continuation_possible) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspResult>) istream)
  "Deserializes a message object of type '<GraspResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'continuation_possible) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspResult>)))
  "Returns string type for a message object of type '<GraspResult>"
  "manipulation_msgs/GraspResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspResult)))
  "Returns string type for a message object of type 'GraspResult"
  "manipulation_msgs/GraspResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspResult>)))
  "Returns md5sum for a message object of type '<GraspResult>"
  "c8a909da895cdddc0630aafd59848191")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspResult)))
  "Returns md5sum for a message object of type 'GraspResult"
  "c8a909da895cdddc0630aafd59848191")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspResult>)))
  "Returns full string definition for message of type '<GraspResult>"
  (cl:format cl:nil "int32 SUCCESS = 1~%int32 GRASP_OUT_OF_REACH = 2~%int32 GRASP_IN_COLLISION = 3~%int32 GRASP_UNFEASIBLE = 4~%int32 PREGRASP_OUT_OF_REACH = 5~%int32 PREGRASP_IN_COLLISION = 6~%int32 PREGRASP_UNFEASIBLE = 7~%int32 LIFT_OUT_OF_REACH = 8~%int32 LIFT_IN_COLLISION = 9~%int32 LIFT_UNFEASIBLE = 10~%int32 MOVE_ARM_FAILED = 11~%int32 GRASP_FAILED = 12~%int32 LIFT_FAILED = 13~%int32 RETREAT_FAILED = 14~%int32 result_code~%~%# whether the state of the world was disturbed by this attempt. generally, this flag~%# shows if another task can be attempted, or a new sensed world model is recommeded~%# before proceeding~%bool continuation_possible~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspResult)))
  "Returns full string definition for message of type 'GraspResult"
  (cl:format cl:nil "int32 SUCCESS = 1~%int32 GRASP_OUT_OF_REACH = 2~%int32 GRASP_IN_COLLISION = 3~%int32 GRASP_UNFEASIBLE = 4~%int32 PREGRASP_OUT_OF_REACH = 5~%int32 PREGRASP_IN_COLLISION = 6~%int32 PREGRASP_UNFEASIBLE = 7~%int32 LIFT_OUT_OF_REACH = 8~%int32 LIFT_IN_COLLISION = 9~%int32 LIFT_UNFEASIBLE = 10~%int32 MOVE_ARM_FAILED = 11~%int32 GRASP_FAILED = 12~%int32 LIFT_FAILED = 13~%int32 RETREAT_FAILED = 14~%int32 result_code~%~%# whether the state of the world was disturbed by this attempt. generally, this flag~%# shows if another task can be attempted, or a new sensed world model is recommeded~%# before proceeding~%bool continuation_possible~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspResult>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspResult>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspResult
    (cl:cons ':result_code (result_code msg))
    (cl:cons ':continuation_possible (continuation_possible msg))
))

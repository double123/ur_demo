; Auto-generated. Do not edit!


(cl:in-package manipulation_msgs-msg)


;//! \htmlinclude ManipulationPhase.msg.html

(cl:defclass <ManipulationPhase> (roslisp-msg-protocol:ros-message)
  ((phase
    :reader phase
    :initarg :phase
    :type cl:integer
    :initform 0))
)

(cl:defclass ManipulationPhase (<ManipulationPhase>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipulationPhase>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipulationPhase)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manipulation_msgs-msg:<ManipulationPhase> is deprecated: use manipulation_msgs-msg:ManipulationPhase instead.")))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <ManipulationPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:phase-val is deprecated.  Use manipulation_msgs-msg:phase instead.")
  (phase m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManipulationPhase>)))
    "Constants for message type '<ManipulationPhase>"
  '((:CHECKING_FEASIBILITY . 0)
    (:MOVING_TO_PREGRASP . 1)
    (:MOVING_TO_GRASP . 2)
    (:CLOSING . 3)
    (:ADJUSTING_GRASP . 4)
    (:LIFTING . 5)
    (:MOVING_WITH_OBJECT . 6)
    (:MOVING_TO_PLACE . 7)
    (:PLACING . 8)
    (:OPENING . 9)
    (:RETREATING . 10)
    (:MOVING_WITHOUT_OBJECT . 11)
    (:SHAKING . 12)
    (:SUCCEEDED . 13)
    (:FAILED . 14)
    (:ABORTED . 15)
    (:HOLDING_OBJECT . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManipulationPhase)))
    "Constants for message type 'ManipulationPhase"
  '((:CHECKING_FEASIBILITY . 0)
    (:MOVING_TO_PREGRASP . 1)
    (:MOVING_TO_GRASP . 2)
    (:CLOSING . 3)
    (:ADJUSTING_GRASP . 4)
    (:LIFTING . 5)
    (:MOVING_WITH_OBJECT . 6)
    (:MOVING_TO_PLACE . 7)
    (:PLACING . 8)
    (:OPENING . 9)
    (:RETREATING . 10)
    (:MOVING_WITHOUT_OBJECT . 11)
    (:SHAKING . 12)
    (:SUCCEEDED . 13)
    (:FAILED . 14)
    (:ABORTED . 15)
    (:HOLDING_OBJECT . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipulationPhase>) ostream)
  "Serializes a message object of type '<ManipulationPhase>"
  (cl:let* ((signed (cl:slot-value msg 'phase)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipulationPhase>) istream)
  "Deserializes a message object of type '<ManipulationPhase>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'phase) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipulationPhase>)))
  "Returns string type for a message object of type '<ManipulationPhase>"
  "manipulation_msgs/ManipulationPhase")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulationPhase)))
  "Returns string type for a message object of type 'ManipulationPhase"
  "manipulation_msgs/ManipulationPhase")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipulationPhase>)))
  "Returns md5sum for a message object of type '<ManipulationPhase>"
  "2c824c847a35d8fd9277d324a3723378")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipulationPhase)))
  "Returns md5sum for a message object of type 'ManipulationPhase"
  "2c824c847a35d8fd9277d324a3723378")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipulationPhase>)))
  "Returns full string definition for message of type '<ManipulationPhase>"
  (cl:format cl:nil "int32 CHECKING_FEASIBILITY = 0~%int32 MOVING_TO_PREGRASP = 1~%int32 MOVING_TO_GRASP = 2~%int32 CLOSING = 3 ~%int32 ADJUSTING_GRASP = 4~%int32 LIFTING = 5~%int32 MOVING_WITH_OBJECT = 6~%int32 MOVING_TO_PLACE = 7~%int32 PLACING = 8~%int32 OPENING = 9~%int32 RETREATING = 10~%int32 MOVING_WITHOUT_OBJECT = 11~%int32 SHAKING = 12~%int32 SUCCEEDED = 13~%int32 FAILED = 14~%int32 ABORTED = 15~%int32 HOLDING_OBJECT = 16~%~%int32 phase~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipulationPhase)))
  "Returns full string definition for message of type 'ManipulationPhase"
  (cl:format cl:nil "int32 CHECKING_FEASIBILITY = 0~%int32 MOVING_TO_PREGRASP = 1~%int32 MOVING_TO_GRASP = 2~%int32 CLOSING = 3 ~%int32 ADJUSTING_GRASP = 4~%int32 LIFTING = 5~%int32 MOVING_WITH_OBJECT = 6~%int32 MOVING_TO_PLACE = 7~%int32 PLACING = 8~%int32 OPENING = 9~%int32 RETREATING = 10~%int32 MOVING_WITHOUT_OBJECT = 11~%int32 SHAKING = 12~%int32 SUCCEEDED = 13~%int32 FAILED = 14~%int32 ABORTED = 15~%int32 HOLDING_OBJECT = 16~%~%int32 phase~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipulationPhase>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipulationPhase>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipulationPhase
    (cl:cons ':phase (phase msg))
))

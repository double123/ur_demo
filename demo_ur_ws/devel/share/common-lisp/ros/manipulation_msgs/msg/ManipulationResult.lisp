; Auto-generated. Do not edit!


(cl:in-package manipulation_msgs-msg)


;//! \htmlinclude ManipulationResult.msg.html

(cl:defclass <ManipulationResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass ManipulationResult (<ManipulationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipulationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipulationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manipulation_msgs-msg:<ManipulationResult> is deprecated: use manipulation_msgs-msg:ManipulationResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ManipulationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:value-val is deprecated.  Use manipulation_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManipulationResult>)))
    "Constants for message type '<ManipulationResult>"
  '((:SUCCESS . 1)
    (:UNFEASIBLE . -1)
    (:FAILED . -2)
    (:ERROR . -3)
    (:ARM_MOVEMENT_PREVENTED . -4)
    (:LIFT_FAILED . -5)
    (:RETREAT_FAILED . -6)
    (:CANCELLED . -7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManipulationResult)))
    "Constants for message type 'ManipulationResult"
  '((:SUCCESS . 1)
    (:UNFEASIBLE . -1)
    (:FAILED . -2)
    (:ERROR . -3)
    (:ARM_MOVEMENT_PREVENTED . -4)
    (:LIFT_FAILED . -5)
    (:RETREAT_FAILED . -6)
    (:CANCELLED . -7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipulationResult>) ostream)
  "Serializes a message object of type '<ManipulationResult>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipulationResult>) istream)
  "Deserializes a message object of type '<ManipulationResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipulationResult>)))
  "Returns string type for a message object of type '<ManipulationResult>"
  "manipulation_msgs/ManipulationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulationResult)))
  "Returns string type for a message object of type 'ManipulationResult"
  "manipulation_msgs/ManipulationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipulationResult>)))
  "Returns md5sum for a message object of type '<ManipulationResult>"
  "85f8d010e045fcb335637fc8fc59184b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipulationResult)))
  "Returns md5sum for a message object of type 'ManipulationResult"
  "85f8d010e045fcb335637fc8fc59184b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipulationResult>)))
  "Returns full string definition for message of type '<ManipulationResult>"
  (cl:format cl:nil "# Result codes for manipulation tasks~%~%# task completed as expected~%# generally means you can proceed as planned~%int32 SUCCESS = 1~%~%# task not possible (e.g. out of reach or obstacles in the way)~%# generally means that the world was not disturbed, so you can try another task~%int32 UNFEASIBLE = -1~%~%# task was thought possible, but failed due to unexpected events during execution~%# it is likely that the world was disturbed, so you are encouraged to refresh~%# your sensed world model before proceeding to another task~%int32 FAILED = -2~%~%# a lower level error prevented task completion (e.g. joint controller not responding)~%# generally requires human attention~%int32 ERROR = -3~%~%# means that at some point during execution we ended up in a state that the collision-aware~%# arm navigation module will not move out of. The world was likely not disturbed, but you ~%# probably need a new collision map to move the arm out of the stuck position~%int32 ARM_MOVEMENT_PREVENTED = -4~%~%# specific to grasp actions~%# the object was grasped successfully, but the lift attempt could not achieve the minimum lift distance requested~%# it is likely that the collision environment will see collisions between the hand/object and the support surface~%int32 LIFT_FAILED = -5~%~%# specific to place actions~%# the object was placed successfully, but the retreat attempt could not achieve the minimum retreat distance requested~%# it is likely that the collision environment will see collisions between the hand and the object~%int32 RETREAT_FAILED = -6~%~%# indicates that somewhere along the line a human said \"wait, stop, this is bad, go back and do something else\"~%int32 CANCELLED = -7~%~%# the actual value of this error code~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipulationResult)))
  "Returns full string definition for message of type 'ManipulationResult"
  (cl:format cl:nil "# Result codes for manipulation tasks~%~%# task completed as expected~%# generally means you can proceed as planned~%int32 SUCCESS = 1~%~%# task not possible (e.g. out of reach or obstacles in the way)~%# generally means that the world was not disturbed, so you can try another task~%int32 UNFEASIBLE = -1~%~%# task was thought possible, but failed due to unexpected events during execution~%# it is likely that the world was disturbed, so you are encouraged to refresh~%# your sensed world model before proceeding to another task~%int32 FAILED = -2~%~%# a lower level error prevented task completion (e.g. joint controller not responding)~%# generally requires human attention~%int32 ERROR = -3~%~%# means that at some point during execution we ended up in a state that the collision-aware~%# arm navigation module will not move out of. The world was likely not disturbed, but you ~%# probably need a new collision map to move the arm out of the stuck position~%int32 ARM_MOVEMENT_PREVENTED = -4~%~%# specific to grasp actions~%# the object was grasped successfully, but the lift attempt could not achieve the minimum lift distance requested~%# it is likely that the collision environment will see collisions between the hand/object and the support surface~%int32 LIFT_FAILED = -5~%~%# specific to place actions~%# the object was placed successfully, but the retreat attempt could not achieve the minimum retreat distance requested~%# it is likely that the collision environment will see collisions between the hand and the object~%int32 RETREAT_FAILED = -6~%~%# indicates that somewhere along the line a human said \"wait, stop, this is bad, go back and do something else\"~%int32 CANCELLED = -7~%~%# the actual value of this error code~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipulationResult>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipulationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipulationResult
    (cl:cons ':value (value msg))
))

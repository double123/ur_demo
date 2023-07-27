; Auto-generated. Do not edit!


(cl:in-package manipulation_msgs-msg)


;//! \htmlinclude PlaceLocationResult.msg.html

(cl:defclass <PlaceLocationResult> (roslisp-msg-protocol:ros-message)
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

(cl:defclass PlaceLocationResult (<PlaceLocationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaceLocationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaceLocationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manipulation_msgs-msg:<PlaceLocationResult> is deprecated: use manipulation_msgs-msg:PlaceLocationResult instead.")))

(cl:ensure-generic-function 'result_code-val :lambda-list '(m))
(cl:defmethod result_code-val ((m <PlaceLocationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:result_code-val is deprecated.  Use manipulation_msgs-msg:result_code instead.")
  (result_code m))

(cl:ensure-generic-function 'continuation_possible-val :lambda-list '(m))
(cl:defmethod continuation_possible-val ((m <PlaceLocationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:continuation_possible-val is deprecated.  Use manipulation_msgs-msg:continuation_possible instead.")
  (continuation_possible m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlaceLocationResult>)))
    "Constants for message type '<PlaceLocationResult>"
  '((:SUCCESS . 1)
    (:PLACE_OUT_OF_REACH . 2)
    (:PLACE_IN_COLLISION . 3)
    (:PLACE_UNFEASIBLE . 4)
    (:PREPLACE_OUT_OF_REACH . 5)
    (:PREPLACE_IN_COLLISION . 6)
    (:PREPLACE_UNFEASIBLE . 7)
    (:RETREAT_OUT_OF_REACH . 8)
    (:RETREAT_IN_COLLISION . 9)
    (:RETREAT_UNFEASIBLE . 10)
    (:MOVE_ARM_FAILED . 11)
    (:PLACE_FAILED . 12)
    (:RETREAT_FAILED . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlaceLocationResult)))
    "Constants for message type 'PlaceLocationResult"
  '((:SUCCESS . 1)
    (:PLACE_OUT_OF_REACH . 2)
    (:PLACE_IN_COLLISION . 3)
    (:PLACE_UNFEASIBLE . 4)
    (:PREPLACE_OUT_OF_REACH . 5)
    (:PREPLACE_IN_COLLISION . 6)
    (:PREPLACE_UNFEASIBLE . 7)
    (:RETREAT_OUT_OF_REACH . 8)
    (:RETREAT_IN_COLLISION . 9)
    (:RETREAT_UNFEASIBLE . 10)
    (:MOVE_ARM_FAILED . 11)
    (:PLACE_FAILED . 12)
    (:RETREAT_FAILED . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaceLocationResult>) ostream)
  "Serializes a message object of type '<PlaceLocationResult>"
  (cl:let* ((signed (cl:slot-value msg 'result_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'continuation_possible) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaceLocationResult>) istream)
  "Deserializes a message object of type '<PlaceLocationResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'continuation_possible) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaceLocationResult>)))
  "Returns string type for a message object of type '<PlaceLocationResult>"
  "manipulation_msgs/PlaceLocationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaceLocationResult)))
  "Returns string type for a message object of type 'PlaceLocationResult"
  "manipulation_msgs/PlaceLocationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaceLocationResult>)))
  "Returns md5sum for a message object of type '<PlaceLocationResult>"
  "8dd9edc3a2a98cab298ca81031224cda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaceLocationResult)))
  "Returns md5sum for a message object of type 'PlaceLocationResult"
  "8dd9edc3a2a98cab298ca81031224cda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaceLocationResult>)))
  "Returns full string definition for message of type '<PlaceLocationResult>"
  (cl:format cl:nil "int32 SUCCESS = 1~%int32 PLACE_OUT_OF_REACH = 2~%int32 PLACE_IN_COLLISION = 3~%int32 PLACE_UNFEASIBLE = 4~%int32 PREPLACE_OUT_OF_REACH = 5~%int32 PREPLACE_IN_COLLISION = 6~%int32 PREPLACE_UNFEASIBLE = 7~%int32 RETREAT_OUT_OF_REACH = 8~%int32 RETREAT_IN_COLLISION = 9~%int32 RETREAT_UNFEASIBLE = 10~%int32 MOVE_ARM_FAILED = 11~%int32 PLACE_FAILED = 12~%int32 RETREAT_FAILED = 13~%int32 result_code~%~%# whether the state of the world was disturbed by this attempt. generally, this flag~%# shows if another task can be attempted, or a new sensed world model is recommeded~%# before proceeding~%bool continuation_possible~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaceLocationResult)))
  "Returns full string definition for message of type 'PlaceLocationResult"
  (cl:format cl:nil "int32 SUCCESS = 1~%int32 PLACE_OUT_OF_REACH = 2~%int32 PLACE_IN_COLLISION = 3~%int32 PLACE_UNFEASIBLE = 4~%int32 PREPLACE_OUT_OF_REACH = 5~%int32 PREPLACE_IN_COLLISION = 6~%int32 PREPLACE_UNFEASIBLE = 7~%int32 RETREAT_OUT_OF_REACH = 8~%int32 RETREAT_IN_COLLISION = 9~%int32 RETREAT_UNFEASIBLE = 10~%int32 MOVE_ARM_FAILED = 11~%int32 PLACE_FAILED = 12~%int32 RETREAT_FAILED = 13~%int32 result_code~%~%# whether the state of the world was disturbed by this attempt. generally, this flag~%# shows if another task can be attempted, or a new sensed world model is recommeded~%# before proceeding~%bool continuation_possible~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaceLocationResult>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaceLocationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaceLocationResult
    (cl:cons ':result_code (result_code msg))
    (cl:cons ':continuation_possible (continuation_possible msg))
))

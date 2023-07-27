; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-msg)


;//! \htmlinclude DatabaseReturnCode.msg.html

(cl:defclass <DatabaseReturnCode> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type cl:integer
    :initform 0))
)

(cl:defclass DatabaseReturnCode (<DatabaseReturnCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DatabaseReturnCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DatabaseReturnCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-msg:<DatabaseReturnCode> is deprecated: use household_objects_database_msgs-msg:DatabaseReturnCode instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <DatabaseReturnCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:code-val is deprecated.  Use household_objects_database_msgs-msg:code instead.")
  (code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DatabaseReturnCode>)))
    "Constants for message type '<DatabaseReturnCode>"
  '((:UNKNOWN_ERROR . 1)
    (:DATABASE_NOT_CONNECTED . 2)
    (:DATABASE_QUERY_ERROR . 3)
    (:SUCCESS . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DatabaseReturnCode)))
    "Constants for message type 'DatabaseReturnCode"
  '((:UNKNOWN_ERROR . 1)
    (:DATABASE_NOT_CONNECTED . 2)
    (:DATABASE_QUERY_ERROR . 3)
    (:SUCCESS . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DatabaseReturnCode>) ostream)
  "Serializes a message object of type '<DatabaseReturnCode>"
  (cl:let* ((signed (cl:slot-value msg 'code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DatabaseReturnCode>) istream)
  "Deserializes a message object of type '<DatabaseReturnCode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DatabaseReturnCode>)))
  "Returns string type for a message object of type '<DatabaseReturnCode>"
  "household_objects_database_msgs/DatabaseReturnCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DatabaseReturnCode)))
  "Returns string type for a message object of type 'DatabaseReturnCode"
  "household_objects_database_msgs/DatabaseReturnCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DatabaseReturnCode>)))
  "Returns md5sum for a message object of type '<DatabaseReturnCode>"
  "b649fd6fa3a4e3bf8e3f4b4e648fa0f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DatabaseReturnCode)))
  "Returns md5sum for a message object of type 'DatabaseReturnCode"
  "b649fd6fa3a4e3bf8e3f4b4e648fa0f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DatabaseReturnCode>)))
  "Returns full string definition for message of type '<DatabaseReturnCode>"
  (cl:format cl:nil "# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DatabaseReturnCode)))
  "Returns full string definition for message of type 'DatabaseReturnCode"
  (cl:format cl:nil "# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DatabaseReturnCode>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DatabaseReturnCode>))
  "Converts a ROS message object to a list"
  (cl:list 'DatabaseReturnCode
    (cl:cons ':code (code msg))
))

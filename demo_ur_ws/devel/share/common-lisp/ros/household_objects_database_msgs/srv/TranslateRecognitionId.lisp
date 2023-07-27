; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-srv)


;//! \htmlinclude TranslateRecognitionId-request.msg.html

(cl:defclass <TranslateRecognitionId-request> (roslisp-msg-protocol:ros-message)
  ((recognition_id
    :reader recognition_id
    :initarg :recognition_id
    :type cl:string
    :initform ""))
)

(cl:defclass TranslateRecognitionId-request (<TranslateRecognitionId-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TranslateRecognitionId-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TranslateRecognitionId-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<TranslateRecognitionId-request> is deprecated: use household_objects_database_msgs-srv:TranslateRecognitionId-request instead.")))

(cl:ensure-generic-function 'recognition_id-val :lambda-list '(m))
(cl:defmethod recognition_id-val ((m <TranslateRecognitionId-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:recognition_id-val is deprecated.  Use household_objects_database_msgs-srv:recognition_id instead.")
  (recognition_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TranslateRecognitionId-request>) ostream)
  "Serializes a message object of type '<TranslateRecognitionId-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'recognition_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'recognition_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TranslateRecognitionId-request>) istream)
  "Deserializes a message object of type '<TranslateRecognitionId-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recognition_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'recognition_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TranslateRecognitionId-request>)))
  "Returns string type for a service object of type '<TranslateRecognitionId-request>"
  "household_objects_database_msgs/TranslateRecognitionIdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TranslateRecognitionId-request)))
  "Returns string type for a service object of type 'TranslateRecognitionId-request"
  "household_objects_database_msgs/TranslateRecognitionIdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TranslateRecognitionId-request>)))
  "Returns md5sum for a message object of type '<TranslateRecognitionId-request>"
  "4c59c4be3a6f662f70d4287dcaff730f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TranslateRecognitionId-request)))
  "Returns md5sum for a message object of type 'TranslateRecognitionId-request"
  "4c59c4be3a6f662f70d4287dcaff730f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TranslateRecognitionId-request>)))
  "Returns full string definition for message of type '<TranslateRecognitionId-request>"
  (cl:format cl:nil "string recognition_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TranslateRecognitionId-request)))
  "Returns full string definition for message of type 'TranslateRecognitionId-request"
  (cl:format cl:nil "string recognition_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TranslateRecognitionId-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'recognition_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TranslateRecognitionId-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TranslateRecognitionId-request
    (cl:cons ':recognition_id (recognition_id msg))
))
;//! \htmlinclude TranslateRecognitionId-response.msg.html

(cl:defclass <TranslateRecognitionId-response> (roslisp-msg-protocol:ros-message)
  ((household_objects_id
    :reader household_objects_id
    :initarg :household_objects_id
    :type cl:integer
    :initform 0)
   (ID_NOT_FOUND
    :reader ID_NOT_FOUND
    :initarg :ID_NOT_FOUND
    :type cl:integer
    :initform 0)
   (DATABASE_ERROR
    :reader DATABASE_ERROR
    :initarg :DATABASE_ERROR
    :type cl:integer
    :initform 0)
   (OTHER_ERROR
    :reader OTHER_ERROR
    :initarg :OTHER_ERROR
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass TranslateRecognitionId-response (<TranslateRecognitionId-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TranslateRecognitionId-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TranslateRecognitionId-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<TranslateRecognitionId-response> is deprecated: use household_objects_database_msgs-srv:TranslateRecognitionId-response instead.")))

(cl:ensure-generic-function 'household_objects_id-val :lambda-list '(m))
(cl:defmethod household_objects_id-val ((m <TranslateRecognitionId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:household_objects_id-val is deprecated.  Use household_objects_database_msgs-srv:household_objects_id instead.")
  (household_objects_id m))

(cl:ensure-generic-function 'ID_NOT_FOUND-val :lambda-list '(m))
(cl:defmethod ID_NOT_FOUND-val ((m <TranslateRecognitionId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:ID_NOT_FOUND-val is deprecated.  Use household_objects_database_msgs-srv:ID_NOT_FOUND instead.")
  (ID_NOT_FOUND m))

(cl:ensure-generic-function 'DATABASE_ERROR-val :lambda-list '(m))
(cl:defmethod DATABASE_ERROR-val ((m <TranslateRecognitionId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:DATABASE_ERROR-val is deprecated.  Use household_objects_database_msgs-srv:DATABASE_ERROR instead.")
  (DATABASE_ERROR m))

(cl:ensure-generic-function 'OTHER_ERROR-val :lambda-list '(m))
(cl:defmethod OTHER_ERROR-val ((m <TranslateRecognitionId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:OTHER_ERROR-val is deprecated.  Use household_objects_database_msgs-srv:OTHER_ERROR instead.")
  (OTHER_ERROR m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TranslateRecognitionId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:result-val is deprecated.  Use household_objects_database_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TranslateRecognitionId-response>)))
    "Constants for message type '<TranslateRecognitionId-response>"
  '((:SUCCESS . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TranslateRecognitionId-response)))
    "Constants for message type 'TranslateRecognitionId-response"
  '((:SUCCESS . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TranslateRecognitionId-response>) ostream)
  "Serializes a message object of type '<TranslateRecognitionId-response>"
  (cl:let* ((signed (cl:slot-value msg 'household_objects_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ID_NOT_FOUND)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'DATABASE_ERROR)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'OTHER_ERROR)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TranslateRecognitionId-response>) istream)
  "Deserializes a message object of type '<TranslateRecognitionId-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'household_objects_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID_NOT_FOUND) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DATABASE_ERROR) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'OTHER_ERROR) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TranslateRecognitionId-response>)))
  "Returns string type for a service object of type '<TranslateRecognitionId-response>"
  "household_objects_database_msgs/TranslateRecognitionIdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TranslateRecognitionId-response)))
  "Returns string type for a service object of type 'TranslateRecognitionId-response"
  "household_objects_database_msgs/TranslateRecognitionIdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TranslateRecognitionId-response>)))
  "Returns md5sum for a message object of type '<TranslateRecognitionId-response>"
  "4c59c4be3a6f662f70d4287dcaff730f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TranslateRecognitionId-response)))
  "Returns md5sum for a message object of type 'TranslateRecognitionId-response"
  "4c59c4be3a6f662f70d4287dcaff730f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TranslateRecognitionId-response>)))
  "Returns full string definition for message of type '<TranslateRecognitionId-response>"
  (cl:format cl:nil "int32 household_objects_id~%~%int32 SUCCESS=0~%int32 ID_NOT_FOUND~%int32 DATABASE_ERROR~%int32 OTHER_ERROR~%int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TranslateRecognitionId-response)))
  "Returns full string definition for message of type 'TranslateRecognitionId-response"
  (cl:format cl:nil "int32 household_objects_id~%~%int32 SUCCESS=0~%int32 ID_NOT_FOUND~%int32 DATABASE_ERROR~%int32 OTHER_ERROR~%int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TranslateRecognitionId-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TranslateRecognitionId-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TranslateRecognitionId-response
    (cl:cons ':household_objects_id (household_objects_id msg))
    (cl:cons ':ID_NOT_FOUND (ID_NOT_FOUND msg))
    (cl:cons ':DATABASE_ERROR (DATABASE_ERROR msg))
    (cl:cons ':OTHER_ERROR (OTHER_ERROR msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TranslateRecognitionId)))
  'TranslateRecognitionId-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TranslateRecognitionId)))
  'TranslateRecognitionId-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TranslateRecognitionId)))
  "Returns string type for a service object of type '<TranslateRecognitionId>"
  "household_objects_database_msgs/TranslateRecognitionId")
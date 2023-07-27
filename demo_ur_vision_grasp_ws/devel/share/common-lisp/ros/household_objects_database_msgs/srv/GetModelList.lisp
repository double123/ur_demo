; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-srv)


;//! \htmlinclude GetModelList-request.msg.html

(cl:defclass <GetModelList-request> (roslisp-msg-protocol:ros-message)
  ((model_set
    :reader model_set
    :initarg :model_set
    :type cl:string
    :initform ""))
)

(cl:defclass GetModelList-request (<GetModelList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetModelList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetModelList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<GetModelList-request> is deprecated: use household_objects_database_msgs-srv:GetModelList-request instead.")))

(cl:ensure-generic-function 'model_set-val :lambda-list '(m))
(cl:defmethod model_set-val ((m <GetModelList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:model_set-val is deprecated.  Use household_objects_database_msgs-srv:model_set instead.")
  (model_set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetModelList-request>) ostream)
  "Serializes a message object of type '<GetModelList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_set))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetModelList-request>) istream)
  "Deserializes a message object of type '<GetModelList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_set) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_set) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetModelList-request>)))
  "Returns string type for a service object of type '<GetModelList-request>"
  "household_objects_database_msgs/GetModelListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelList-request)))
  "Returns string type for a service object of type 'GetModelList-request"
  "household_objects_database_msgs/GetModelListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetModelList-request>)))
  "Returns md5sum for a message object of type '<GetModelList-request>"
  "5f1f68d0a220da15352f6f1cb9a37fea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetModelList-request)))
  "Returns md5sum for a message object of type 'GetModelList-request"
  "5f1f68d0a220da15352f6f1cb9a37fea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetModelList-request>)))
  "Returns full string definition for message of type '<GetModelList-request>"
  (cl:format cl:nil "# retrieves model id's from the database~%~%# optional: the name of a model set that the id's should belong to;~%# used to only retrieve a subset of models, pre-specified in the database~%# leave empty to get all available models~%string model_set~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetModelList-request)))
  "Returns full string definition for message of type 'GetModelList-request"
  (cl:format cl:nil "# retrieves model id's from the database~%~%# optional: the name of a model set that the id's should belong to;~%# used to only retrieve a subset of models, pre-specified in the database~%# leave empty to get all available models~%string model_set~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetModelList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_set))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetModelList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetModelList-request
    (cl:cons ':model_set (model_set msg))
))
;//! \htmlinclude GetModelList-response.msg.html

(cl:defclass <GetModelList-response> (roslisp-msg-protocol:ros-message)
  ((return_code
    :reader return_code
    :initarg :return_code
    :type household_objects_database_msgs-msg:DatabaseReturnCode
    :initform (cl:make-instance 'household_objects_database_msgs-msg:DatabaseReturnCode))
   (model_ids
    :reader model_ids
    :initarg :model_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetModelList-response (<GetModelList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetModelList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetModelList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<GetModelList-response> is deprecated: use household_objects_database_msgs-srv:GetModelList-response instead.")))

(cl:ensure-generic-function 'return_code-val :lambda-list '(m))
(cl:defmethod return_code-val ((m <GetModelList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:return_code-val is deprecated.  Use household_objects_database_msgs-srv:return_code instead.")
  (return_code m))

(cl:ensure-generic-function 'model_ids-val :lambda-list '(m))
(cl:defmethod model_ids-val ((m <GetModelList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:model_ids-val is deprecated.  Use household_objects_database_msgs-srv:model_ids instead.")
  (model_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetModelList-response>) ostream)
  "Serializes a message object of type '<GetModelList-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'return_code) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'model_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'model_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetModelList-response>) istream)
  "Deserializes a message object of type '<GetModelList-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'return_code) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'model_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'model_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetModelList-response>)))
  "Returns string type for a service object of type '<GetModelList-response>"
  "household_objects_database_msgs/GetModelListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelList-response)))
  "Returns string type for a service object of type 'GetModelList-response"
  "household_objects_database_msgs/GetModelListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetModelList-response>)))
  "Returns md5sum for a message object of type '<GetModelList-response>"
  "5f1f68d0a220da15352f6f1cb9a37fea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetModelList-response)))
  "Returns md5sum for a message object of type 'GetModelList-response"
  "5f1f68d0a220da15352f6f1cb9a37fea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetModelList-response>)))
  "Returns full string definition for message of type '<GetModelList-response>"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%# the actual model ids~%int32[] model_ids~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetModelList-response)))
  "Returns full string definition for message of type 'GetModelList-response"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%# the actual model ids~%int32[] model_ids~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetModelList-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'return_code))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'model_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetModelList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetModelList-response
    (cl:cons ':return_code (return_code msg))
    (cl:cons ':model_ids (model_ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetModelList)))
  'GetModelList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetModelList)))
  'GetModelList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelList)))
  "Returns string type for a service object of type '<GetModelList>"
  "household_objects_database_msgs/GetModelList")
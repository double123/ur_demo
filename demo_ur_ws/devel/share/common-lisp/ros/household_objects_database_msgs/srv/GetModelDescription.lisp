; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-srv)


;//! \htmlinclude GetModelDescription-request.msg.html

(cl:defclass <GetModelDescription-request> (roslisp-msg-protocol:ros-message)
  ((model_id
    :reader model_id
    :initarg :model_id
    :type cl:integer
    :initform 0))
)

(cl:defclass GetModelDescription-request (<GetModelDescription-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetModelDescription-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetModelDescription-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<GetModelDescription-request> is deprecated: use household_objects_database_msgs-srv:GetModelDescription-request instead.")))

(cl:ensure-generic-function 'model_id-val :lambda-list '(m))
(cl:defmethod model_id-val ((m <GetModelDescription-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:model_id-val is deprecated.  Use household_objects_database_msgs-srv:model_id instead.")
  (model_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetModelDescription-request>) ostream)
  "Serializes a message object of type '<GetModelDescription-request>"
  (cl:let* ((signed (cl:slot-value msg 'model_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetModelDescription-request>) istream)
  "Deserializes a message object of type '<GetModelDescription-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetModelDescription-request>)))
  "Returns string type for a service object of type '<GetModelDescription-request>"
  "household_objects_database_msgs/GetModelDescriptionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelDescription-request)))
  "Returns string type for a service object of type 'GetModelDescription-request"
  "household_objects_database_msgs/GetModelDescriptionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetModelDescription-request>)))
  "Returns md5sum for a message object of type '<GetModelDescription-request>"
  "1fee77e674730723af04cd39a4e3e0b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetModelDescription-request)))
  "Returns md5sum for a message object of type 'GetModelDescription-request"
  "1fee77e674730723af04cd39a4e3e0b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetModelDescription-request>)))
  "Returns full string definition for message of type '<GetModelDescription-request>"
  (cl:format cl:nil "# retreieves various metadata for an model id~%~%# the id of the model~%int32 model_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetModelDescription-request)))
  "Returns full string definition for message of type 'GetModelDescription-request"
  (cl:format cl:nil "# retreieves various metadata for an model id~%~%# the id of the model~%int32 model_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetModelDescription-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetModelDescription-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetModelDescription-request
    (cl:cons ':model_id (model_id msg))
))
;//! \htmlinclude GetModelDescription-response.msg.html

(cl:defclass <GetModelDescription-response> (roslisp-msg-protocol:ros-message)
  ((return_code
    :reader return_code
    :initarg :return_code
    :type household_objects_database_msgs-msg:DatabaseReturnCode
    :initform (cl:make-instance 'household_objects_database_msgs-msg:DatabaseReturnCode))
   (tags
    :reader tags
    :initarg :tags
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (maker
    :reader maker
    :initarg :maker
    :type cl:string
    :initform ""))
)

(cl:defclass GetModelDescription-response (<GetModelDescription-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetModelDescription-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetModelDescription-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<GetModelDescription-response> is deprecated: use household_objects_database_msgs-srv:GetModelDescription-response instead.")))

(cl:ensure-generic-function 'return_code-val :lambda-list '(m))
(cl:defmethod return_code-val ((m <GetModelDescription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:return_code-val is deprecated.  Use household_objects_database_msgs-srv:return_code instead.")
  (return_code m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <GetModelDescription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:tags-val is deprecated.  Use household_objects_database_msgs-srv:tags instead.")
  (tags m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetModelDescription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:name-val is deprecated.  Use household_objects_database_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'maker-val :lambda-list '(m))
(cl:defmethod maker-val ((m <GetModelDescription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:maker-val is deprecated.  Use household_objects_database_msgs-srv:maker instead.")
  (maker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetModelDescription-response>) ostream)
  "Serializes a message object of type '<GetModelDescription-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'return_code) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'tags))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'maker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'maker))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetModelDescription-response>) istream)
  "Deserializes a message object of type '<GetModelDescription-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'return_code) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'maker) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'maker) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetModelDescription-response>)))
  "Returns string type for a service object of type '<GetModelDescription-response>"
  "household_objects_database_msgs/GetModelDescriptionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelDescription-response)))
  "Returns string type for a service object of type 'GetModelDescription-response"
  "household_objects_database_msgs/GetModelDescriptionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetModelDescription-response>)))
  "Returns md5sum for a message object of type '<GetModelDescription-response>"
  "1fee77e674730723af04cd39a4e3e0b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetModelDescription-response)))
  "Returns md5sum for a message object of type 'GetModelDescription-response"
  "1fee77e674730723af04cd39a4e3e0b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetModelDescription-response>)))
  "Returns full string definition for message of type '<GetModelDescription-response>"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%# the tags of the model~%string[] tags~%~%# the name of the model~%string name~%~%# the maker of the model~%string maker~%~%~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetModelDescription-response)))
  "Returns full string definition for message of type 'GetModelDescription-response"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%# the tags of the model~%string[] tags~%~%# the name of the model~%string name~%~%# the maker of the model~%string maker~%~%~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetModelDescription-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'return_code))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'maker))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetModelDescription-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetModelDescription-response
    (cl:cons ':return_code (return_code msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':name (name msg))
    (cl:cons ':maker (maker msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetModelDescription)))
  'GetModelDescription-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetModelDescription)))
  'GetModelDescription-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelDescription)))
  "Returns string type for a service object of type '<GetModelDescription>"
  "household_objects_database_msgs/GetModelDescription")
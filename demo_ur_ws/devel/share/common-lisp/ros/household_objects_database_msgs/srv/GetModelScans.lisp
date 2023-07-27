; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-srv)


;//! \htmlinclude GetModelScans-request.msg.html

(cl:defclass <GetModelScans-request> (roslisp-msg-protocol:ros-message)
  ((model_id
    :reader model_id
    :initarg :model_id
    :type cl:integer
    :initform 0)
   (scan_source
    :reader scan_source
    :initarg :scan_source
    :type cl:string
    :initform ""))
)

(cl:defclass GetModelScans-request (<GetModelScans-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetModelScans-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetModelScans-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<GetModelScans-request> is deprecated: use household_objects_database_msgs-srv:GetModelScans-request instead.")))

(cl:ensure-generic-function 'model_id-val :lambda-list '(m))
(cl:defmethod model_id-val ((m <GetModelScans-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:model_id-val is deprecated.  Use household_objects_database_msgs-srv:model_id instead.")
  (model_id m))

(cl:ensure-generic-function 'scan_source-val :lambda-list '(m))
(cl:defmethod scan_source-val ((m <GetModelScans-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:scan_source-val is deprecated.  Use household_objects_database_msgs-srv:scan_source instead.")
  (scan_source m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetModelScans-request>) ostream)
  "Serializes a message object of type '<GetModelScans-request>"
  (cl:let* ((signed (cl:slot-value msg 'model_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'scan_source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'scan_source))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetModelScans-request>) istream)
  "Deserializes a message object of type '<GetModelScans-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scan_source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'scan_source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetModelScans-request>)))
  "Returns string type for a service object of type '<GetModelScans-request>"
  "household_objects_database_msgs/GetModelScansRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelScans-request)))
  "Returns string type for a service object of type 'GetModelScans-request"
  "household_objects_database_msgs/GetModelScansRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetModelScans-request>)))
  "Returns md5sum for a message object of type '<GetModelScans-request>"
  "8e98ddfab8ff8e5fb3a60b1cd7645437")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetModelScans-request)))
  "Returns md5sum for a message object of type 'GetModelScans-request"
  "8e98ddfab8ff8e5fb3a60b1cd7645437")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetModelScans-request>)))
  "Returns full string definition for message of type '<GetModelScans-request>"
  (cl:format cl:nil "# retrieves a list of object scans which match a given model id and source~%~%# the id of the model~%int32 model_id~%~%# the string name of the source of the scan data~%string scan_source~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetModelScans-request)))
  "Returns full string definition for message of type 'GetModelScans-request"
  (cl:format cl:nil "# retrieves a list of object scans which match a given model id and source~%~%# the id of the model~%int32 model_id~%~%# the string name of the source of the scan data~%string scan_source~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetModelScans-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'scan_source))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetModelScans-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetModelScans-request
    (cl:cons ':model_id (model_id msg))
    (cl:cons ':scan_source (scan_source msg))
))
;//! \htmlinclude GetModelScans-response.msg.html

(cl:defclass <GetModelScans-response> (roslisp-msg-protocol:ros-message)
  ((return_code
    :reader return_code
    :initarg :return_code
    :type household_objects_database_msgs-msg:DatabaseReturnCode
    :initform (cl:make-instance 'household_objects_database_msgs-msg:DatabaseReturnCode))
   (matching_scans
    :reader matching_scans
    :initarg :matching_scans
    :type (cl:vector household_objects_database_msgs-msg:DatabaseScan)
   :initform (cl:make-array 0 :element-type 'household_objects_database_msgs-msg:DatabaseScan :initial-element (cl:make-instance 'household_objects_database_msgs-msg:DatabaseScan))))
)

(cl:defclass GetModelScans-response (<GetModelScans-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetModelScans-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetModelScans-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<GetModelScans-response> is deprecated: use household_objects_database_msgs-srv:GetModelScans-response instead.")))

(cl:ensure-generic-function 'return_code-val :lambda-list '(m))
(cl:defmethod return_code-val ((m <GetModelScans-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:return_code-val is deprecated.  Use household_objects_database_msgs-srv:return_code instead.")
  (return_code m))

(cl:ensure-generic-function 'matching_scans-val :lambda-list '(m))
(cl:defmethod matching_scans-val ((m <GetModelScans-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:matching_scans-val is deprecated.  Use household_objects_database_msgs-srv:matching_scans instead.")
  (matching_scans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetModelScans-response>) ostream)
  "Serializes a message object of type '<GetModelScans-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'return_code) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'matching_scans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'matching_scans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetModelScans-response>) istream)
  "Deserializes a message object of type '<GetModelScans-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'return_code) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'matching_scans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'matching_scans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'household_objects_database_msgs-msg:DatabaseScan))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetModelScans-response>)))
  "Returns string type for a service object of type '<GetModelScans-response>"
  "household_objects_database_msgs/GetModelScansResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelScans-response)))
  "Returns string type for a service object of type 'GetModelScans-response"
  "household_objects_database_msgs/GetModelScansResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetModelScans-response>)))
  "Returns md5sum for a message object of type '<GetModelScans-response>"
  "8e98ddfab8ff8e5fb3a60b1cd7645437")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetModelScans-response)))
  "Returns md5sum for a message object of type 'GetModelScans-response"
  "8e98ddfab8ff8e5fb3a60b1cd7645437")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetModelScans-response>)))
  "Returns full string definition for message of type '<GetModelScans-response>"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%# the returned scans~%DatabaseScan[] matching_scans~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%================================================================================~%MSG: household_objects_database_msgs/DatabaseScan~%# Contains the location of a stored point cloud scan of an object, ~%# as well as additional metadata about that scan ~%~%# the database id of the model~%int32 model_id~%~%# the location of the bag file storing the scan~%string bagfile_location~%~%# the source of the scan (e.g. simulation)~%string scan_source~%~%# the ground truth pose of the object that was scanned~%geometry_msgs/PoseStamped pose~%~%# the topic that the points in the bag are published on~%string cloud_topic~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetModelScans-response)))
  "Returns full string definition for message of type 'GetModelScans-response"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%# the returned scans~%DatabaseScan[] matching_scans~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%================================================================================~%MSG: household_objects_database_msgs/DatabaseScan~%# Contains the location of a stored point cloud scan of an object, ~%# as well as additional metadata about that scan ~%~%# the database id of the model~%int32 model_id~%~%# the location of the bag file storing the scan~%string bagfile_location~%~%# the source of the scan (e.g. simulation)~%string scan_source~%~%# the ground truth pose of the object that was scanned~%geometry_msgs/PoseStamped pose~%~%# the topic that the points in the bag are published on~%string cloud_topic~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetModelScans-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'return_code))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matching_scans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetModelScans-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetModelScans-response
    (cl:cons ':return_code (return_code msg))
    (cl:cons ':matching_scans (matching_scans msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetModelScans)))
  'GetModelScans-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetModelScans)))
  'GetModelScans-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelScans)))
  "Returns string type for a service object of type '<GetModelScans>"
  "household_objects_database_msgs/GetModelScans")
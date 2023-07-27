; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-srv)


;//! \htmlinclude SaveScan-request.msg.html

(cl:defclass <SaveScan-request> (roslisp-msg-protocol:ros-message)
  ((scaled_model_id
    :reader scaled_model_id
    :initarg :scaled_model_id
    :type cl:integer
    :initform 0)
   (ground_truth_pose
    :reader ground_truth_pose
    :initarg :ground_truth_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (bagfile_location
    :reader bagfile_location
    :initarg :bagfile_location
    :type cl:string
    :initform "")
   (scan_source
    :reader scan_source
    :initarg :scan_source
    :type cl:string
    :initform "")
   (cloud_topic
    :reader cloud_topic
    :initarg :cloud_topic
    :type cl:string
    :initform ""))
)

(cl:defclass SaveScan-request (<SaveScan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveScan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveScan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<SaveScan-request> is deprecated: use household_objects_database_msgs-srv:SaveScan-request instead.")))

(cl:ensure-generic-function 'scaled_model_id-val :lambda-list '(m))
(cl:defmethod scaled_model_id-val ((m <SaveScan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:scaled_model_id-val is deprecated.  Use household_objects_database_msgs-srv:scaled_model_id instead.")
  (scaled_model_id m))

(cl:ensure-generic-function 'ground_truth_pose-val :lambda-list '(m))
(cl:defmethod ground_truth_pose-val ((m <SaveScan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:ground_truth_pose-val is deprecated.  Use household_objects_database_msgs-srv:ground_truth_pose instead.")
  (ground_truth_pose m))

(cl:ensure-generic-function 'bagfile_location-val :lambda-list '(m))
(cl:defmethod bagfile_location-val ((m <SaveScan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:bagfile_location-val is deprecated.  Use household_objects_database_msgs-srv:bagfile_location instead.")
  (bagfile_location m))

(cl:ensure-generic-function 'scan_source-val :lambda-list '(m))
(cl:defmethod scan_source-val ((m <SaveScan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:scan_source-val is deprecated.  Use household_objects_database_msgs-srv:scan_source instead.")
  (scan_source m))

(cl:ensure-generic-function 'cloud_topic-val :lambda-list '(m))
(cl:defmethod cloud_topic-val ((m <SaveScan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:cloud_topic-val is deprecated.  Use household_objects_database_msgs-srv:cloud_topic instead.")
  (cloud_topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveScan-request>) ostream)
  "Serializes a message object of type '<SaveScan-request>"
  (cl:let* ((signed (cl:slot-value msg 'scaled_model_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ground_truth_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bagfile_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bagfile_location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'scan_source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'scan_source))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cloud_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cloud_topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveScan-request>) istream)
  "Deserializes a message object of type '<SaveScan-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scaled_model_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ground_truth_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bagfile_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bagfile_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scan_source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'scan_source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cloud_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cloud_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveScan-request>)))
  "Returns string type for a service object of type '<SaveScan-request>"
  "household_objects_database_msgs/SaveScanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveScan-request)))
  "Returns string type for a service object of type 'SaveScan-request"
  "household_objects_database_msgs/SaveScanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveScan-request>)))
  "Returns md5sum for a message object of type '<SaveScan-request>"
  "855c7b6f2658d8a9de03dd9a5f7b1f1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveScan-request)))
  "Returns md5sum for a message object of type 'SaveScan-request"
  "855c7b6f2658d8a9de03dd9a5f7b1f1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveScan-request>)))
  "Returns full string definition for message of type '<SaveScan-request>"
  (cl:format cl:nil "# Stores information about a saved scan of an object to the database~%~%# the id of the model~%int32 scaled_model_id~%~%# The ground truth location of the object represented by the point cloud~%geometry_msgs/PoseStamped ground_truth_pose~%~%# The location of the bagfile storing the scan~%string bagfile_location~%~%# The string name of the source of the scan data~%string scan_source~%~%# The topic in the bag that the cloud is published on ~%string cloud_topic~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveScan-request)))
  "Returns full string definition for message of type 'SaveScan-request"
  (cl:format cl:nil "# Stores information about a saved scan of an object to the database~%~%# the id of the model~%int32 scaled_model_id~%~%# The ground truth location of the object represented by the point cloud~%geometry_msgs/PoseStamped ground_truth_pose~%~%# The location of the bagfile storing the scan~%string bagfile_location~%~%# The string name of the source of the scan data~%string scan_source~%~%# The topic in the bag that the cloud is published on ~%string cloud_topic~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveScan-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ground_truth_pose))
     4 (cl:length (cl:slot-value msg 'bagfile_location))
     4 (cl:length (cl:slot-value msg 'scan_source))
     4 (cl:length (cl:slot-value msg 'cloud_topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveScan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveScan-request
    (cl:cons ':scaled_model_id (scaled_model_id msg))
    (cl:cons ':ground_truth_pose (ground_truth_pose msg))
    (cl:cons ':bagfile_location (bagfile_location msg))
    (cl:cons ':scan_source (scan_source msg))
    (cl:cons ':cloud_topic (cloud_topic msg))
))
;//! \htmlinclude SaveScan-response.msg.html

(cl:defclass <SaveScan-response> (roslisp-msg-protocol:ros-message)
  ((return_code
    :reader return_code
    :initarg :return_code
    :type household_objects_database_msgs-msg:DatabaseReturnCode
    :initform (cl:make-instance 'household_objects_database_msgs-msg:DatabaseReturnCode)))
)

(cl:defclass SaveScan-response (<SaveScan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveScan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveScan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<SaveScan-response> is deprecated: use household_objects_database_msgs-srv:SaveScan-response instead.")))

(cl:ensure-generic-function 'return_code-val :lambda-list '(m))
(cl:defmethod return_code-val ((m <SaveScan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:return_code-val is deprecated.  Use household_objects_database_msgs-srv:return_code instead.")
  (return_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveScan-response>) ostream)
  "Serializes a message object of type '<SaveScan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'return_code) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveScan-response>) istream)
  "Deserializes a message object of type '<SaveScan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'return_code) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveScan-response>)))
  "Returns string type for a service object of type '<SaveScan-response>"
  "household_objects_database_msgs/SaveScanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveScan-response)))
  "Returns string type for a service object of type 'SaveScan-response"
  "household_objects_database_msgs/SaveScanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveScan-response>)))
  "Returns md5sum for a message object of type '<SaveScan-response>"
  "855c7b6f2658d8a9de03dd9a5f7b1f1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveScan-response)))
  "Returns md5sum for a message object of type 'SaveScan-response"
  "855c7b6f2658d8a9de03dd9a5f7b1f1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveScan-response>)))
  "Returns full string definition for message of type '<SaveScan-response>"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveScan-response)))
  "Returns full string definition for message of type 'SaveScan-response"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveScan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'return_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveScan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveScan-response
    (cl:cons ':return_code (return_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveScan)))
  'SaveScan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveScan)))
  'SaveScan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveScan)))
  "Returns string type for a service object of type '<SaveScan>"
  "household_objects_database_msgs/SaveScan")
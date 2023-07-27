; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-msg)


;//! \htmlinclude DatabaseModelPose.msg.html

(cl:defclass <DatabaseModelPose> (roslisp-msg-protocol:ros-message)
  ((model_id
    :reader model_id
    :initarg :model_id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type object_recognition_msgs-msg:ObjectType
    :initform (cl:make-instance 'object_recognition_msgs-msg:ObjectType))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (detector_name
    :reader detector_name
    :initarg :detector_name
    :type cl:string
    :initform ""))
)

(cl:defclass DatabaseModelPose (<DatabaseModelPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DatabaseModelPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DatabaseModelPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-msg:<DatabaseModelPose> is deprecated: use household_objects_database_msgs-msg:DatabaseModelPose instead.")))

(cl:ensure-generic-function 'model_id-val :lambda-list '(m))
(cl:defmethod model_id-val ((m <DatabaseModelPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:model_id-val is deprecated.  Use household_objects_database_msgs-msg:model_id instead.")
  (model_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DatabaseModelPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:type-val is deprecated.  Use household_objects_database_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <DatabaseModelPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:pose-val is deprecated.  Use household_objects_database_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <DatabaseModelPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:confidence-val is deprecated.  Use household_objects_database_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'detector_name-val :lambda-list '(m))
(cl:defmethod detector_name-val ((m <DatabaseModelPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:detector_name-val is deprecated.  Use household_objects_database_msgs-msg:detector_name instead.")
  (detector_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DatabaseModelPose>) ostream)
  "Serializes a message object of type '<DatabaseModelPose>"
  (cl:let* ((signed (cl:slot-value msg 'model_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detector_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detector_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DatabaseModelPose>) istream)
  "Deserializes a message object of type '<DatabaseModelPose>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detector_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detector_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DatabaseModelPose>)))
  "Returns string type for a message object of type '<DatabaseModelPose>"
  "household_objects_database_msgs/DatabaseModelPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DatabaseModelPose)))
  "Returns string type for a message object of type 'DatabaseModelPose"
  "household_objects_database_msgs/DatabaseModelPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DatabaseModelPose>)))
  "Returns md5sum for a message object of type '<DatabaseModelPose>"
  "6bc39ef48ca57cc7d4341cfc13a5a110")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DatabaseModelPose)))
  "Returns md5sum for a message object of type 'DatabaseModelPose"
  "6bc39ef48ca57cc7d4341cfc13a5a110")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DatabaseModelPose>)))
  "Returns full string definition for message of type '<DatabaseModelPose>"
  (cl:format cl:nil "# Informs that a specific model from the Model Database has been ~%# identified at a certain location~%~%# the database id of the model~%int32 model_id~%~%# if the object was recognized by the ORK pipeline, its type will be in here~%# if this is not empty, then the string in here will be converted to a household_objects_database id~%# leave this empty if providing an id in the model_id field~%object_recognition_msgs/ObjectType type~%~%# the pose that it can be found in~%geometry_msgs/PoseStamped pose~%~%# a measure of the confidence level in this detection result~%float32 confidence~%~%# the name of the object detector that generated this detection result~%string detector_name~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DatabaseModelPose)))
  "Returns full string definition for message of type 'DatabaseModelPose"
  (cl:format cl:nil "# Informs that a specific model from the Model Database has been ~%# identified at a certain location~%~%# the database id of the model~%int32 model_id~%~%# if the object was recognized by the ORK pipeline, its type will be in here~%# if this is not empty, then the string in here will be converted to a household_objects_database id~%# leave this empty if providing an id in the model_id field~%object_recognition_msgs/ObjectType type~%~%# the pose that it can be found in~%geometry_msgs/PoseStamped pose~%~%# a measure of the confidence level in this detection result~%float32 confidence~%~%# the name of the object detector that generated this detection result~%string detector_name~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DatabaseModelPose>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     4 (cl:length (cl:slot-value msg 'detector_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DatabaseModelPose>))
  "Converts a ROS message object to a list"
  (cl:list 'DatabaseModelPose
    (cl:cons ':model_id (model_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':detector_name (detector_name msg))
))

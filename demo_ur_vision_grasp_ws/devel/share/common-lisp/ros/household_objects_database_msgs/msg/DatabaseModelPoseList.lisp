; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-msg)


;//! \htmlinclude DatabaseModelPoseList.msg.html

(cl:defclass <DatabaseModelPoseList> (roslisp-msg-protocol:ros-message)
  ((model_list
    :reader model_list
    :initarg :model_list
    :type (cl:vector household_objects_database_msgs-msg:DatabaseModelPose)
   :initform (cl:make-array 0 :element-type 'household_objects_database_msgs-msg:DatabaseModelPose :initial-element (cl:make-instance 'household_objects_database_msgs-msg:DatabaseModelPose))))
)

(cl:defclass DatabaseModelPoseList (<DatabaseModelPoseList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DatabaseModelPoseList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DatabaseModelPoseList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-msg:<DatabaseModelPoseList> is deprecated: use household_objects_database_msgs-msg:DatabaseModelPoseList instead.")))

(cl:ensure-generic-function 'model_list-val :lambda-list '(m))
(cl:defmethod model_list-val ((m <DatabaseModelPoseList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:model_list-val is deprecated.  Use household_objects_database_msgs-msg:model_list instead.")
  (model_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DatabaseModelPoseList>) ostream)
  "Serializes a message object of type '<DatabaseModelPoseList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'model_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'model_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DatabaseModelPoseList>) istream)
  "Deserializes a message object of type '<DatabaseModelPoseList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'model_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'model_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'household_objects_database_msgs-msg:DatabaseModelPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DatabaseModelPoseList>)))
  "Returns string type for a message object of type '<DatabaseModelPoseList>"
  "household_objects_database_msgs/DatabaseModelPoseList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DatabaseModelPoseList)))
  "Returns string type for a message object of type 'DatabaseModelPoseList"
  "household_objects_database_msgs/DatabaseModelPoseList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DatabaseModelPoseList>)))
  "Returns md5sum for a message object of type '<DatabaseModelPoseList>"
  "f0bb2aa8d2ededee0ffe0f5d2107e099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DatabaseModelPoseList)))
  "Returns md5sum for a message object of type 'DatabaseModelPoseList"
  "f0bb2aa8d2ededee0ffe0f5d2107e099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DatabaseModelPoseList>)))
  "Returns full string definition for message of type '<DatabaseModelPoseList>"
  (cl:format cl:nil "# stores a list of possible database models recognition results~%DatabaseModelPose[] model_list~%================================================================================~%MSG: household_objects_database_msgs/DatabaseModelPose~%# Informs that a specific model from the Model Database has been ~%# identified at a certain location~%~%# the database id of the model~%int32 model_id~%~%# if the object was recognized by the ORK pipeline, its type will be in here~%# if this is not empty, then the string in here will be converted to a household_objects_database id~%# leave this empty if providing an id in the model_id field~%object_recognition_msgs/ObjectType type~%~%# the pose that it can be found in~%geometry_msgs/PoseStamped pose~%~%# a measure of the confidence level in this detection result~%float32 confidence~%~%# the name of the object detector that generated this detection result~%string detector_name~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DatabaseModelPoseList)))
  "Returns full string definition for message of type 'DatabaseModelPoseList"
  (cl:format cl:nil "# stores a list of possible database models recognition results~%DatabaseModelPose[] model_list~%================================================================================~%MSG: household_objects_database_msgs/DatabaseModelPose~%# Informs that a specific model from the Model Database has been ~%# identified at a certain location~%~%# the database id of the model~%int32 model_id~%~%# if the object was recognized by the ORK pipeline, its type will be in here~%# if this is not empty, then the string in here will be converted to a household_objects_database id~%# leave this empty if providing an id in the model_id field~%object_recognition_msgs/ObjectType type~%~%# the pose that it can be found in~%geometry_msgs/PoseStamped pose~%~%# a measure of the confidence level in this detection result~%float32 confidence~%~%# the name of the object detector that generated this detection result~%string detector_name~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DatabaseModelPoseList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'model_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DatabaseModelPoseList>))
  "Converts a ROS message object to a list"
  (cl:list 'DatabaseModelPoseList
    (cl:cons ':model_list (model_list msg))
))

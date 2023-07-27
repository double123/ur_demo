;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::DatabaseModelPoseList)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'DatabaseModelPoseList (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASEMODELPOSELIST")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASEMODELPOSELIST"))

(in-package "ROS")
;;//! \htmlinclude DatabaseModelPoseList.msg.html


(defclass household_objects_database_msgs::DatabaseModelPoseList
  :super ros::object
  :slots (_model_list ))

(defmethod household_objects_database_msgs::DatabaseModelPoseList
  (:init
   (&key
    ((:model_list __model_list) ())
    )
   (send-super :init)
   (setq _model_list __model_list)
   self)
  (:model_list
   (&rest __model_list)
   (if (keywordp (car __model_list))
       (send* _model_list __model_list)
     (progn
       (if __model_list (setq _model_list (car __model_list)))
       _model_list)))
  (:serialization-length
   ()
   (+
    ;; household_objects_database_msgs/DatabaseModelPose[] _model_list
    (apply #'+ (send-all _model_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; household_objects_database_msgs/DatabaseModelPose[] _model_list
     (write-long (length _model_list) s)
     (dolist (elem _model_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; household_objects_database_msgs/DatabaseModelPose[] _model_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _model_list (let (r) (dotimes (i n) (push (instance household_objects_database_msgs::DatabaseModelPose :init) r)) r))
     (dolist (elem- _model_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get household_objects_database_msgs::DatabaseModelPoseList :md5sum-) "f0bb2aa8d2ededee0ffe0f5d2107e099")
(setf (get household_objects_database_msgs::DatabaseModelPoseList :datatype-) "household_objects_database_msgs/DatabaseModelPoseList")
(setf (get household_objects_database_msgs::DatabaseModelPoseList :definition-)
      "# stores a list of possible database models recognition results
DatabaseModelPose[] model_list
================================================================================
MSG: household_objects_database_msgs/DatabaseModelPose
# Informs that a specific model from the Model Database has been 
# identified at a certain location

# the database id of the model
int32 model_id

# if the object was recognized by the ORK pipeline, its type will be in here
# if this is not empty, then the string in here will be converted to a household_objects_database id
# leave this empty if providing an id in the model_id field
object_recognition_msgs/ObjectType type

# the pose that it can be found in
geometry_msgs/PoseStamped pose

# a measure of the confidence level in this detection result
float32 confidence

# the name of the object detector that generated this detection result
string detector_name

================================================================================
MSG: object_recognition_msgs/ObjectType
################################################## OBJECT ID #########################################################

# Contains information about the type of a found object. Those two sets of parameters together uniquely define an
# object

# The key of the found object: the unique identifier in the given db
string key

# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding
# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"
# There is no conventional format for those parameters and it's nice to keep that flexibility.
# The object_recognition_core as a generic DB type that can read those fields
# Current examples:
# For CouchDB:
#   type: 'CouchDB'
#   root: 'http://localhost:5984'
#   collection: 'object_recognition'
# For SQL household database:
#   type: 'SqlHousehold'
#   host: 'wgs36'
#   port: 5432
#   user: 'willow'
#   password: 'willow'
#   name: 'household_objects'
#   module: 'tabletop'
string db

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :household_objects_database_msgs/DatabaseModelPoseList "f0bb2aa8d2ededee0ffe0f5d2107e099")



;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::DatabaseModelPose)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'DatabaseModelPose (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASEMODELPOSE")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASEMODELPOSE"))

(in-package "ROS")
;;//! \htmlinclude DatabaseModelPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "OBJECT_RECOGNITION_MSGS"))
  (ros::roseus-add-msgs "object_recognition_msgs"))


(defclass household_objects_database_msgs::DatabaseModelPose
  :super ros::object
  :slots (_model_id _type _pose _confidence _detector_name ))

(defmethod household_objects_database_msgs::DatabaseModelPose
  (:init
   (&key
    ((:model_id __model_id) 0)
    ((:type __type) (instance object_recognition_msgs::ObjectType :init))
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:confidence __confidence) 0.0)
    ((:detector_name __detector_name) "")
    )
   (send-super :init)
   (setq _model_id (round __model_id))
   (setq _type __type)
   (setq _pose __pose)
   (setq _confidence (float __confidence))
   (setq _detector_name (string __detector_name))
   self)
  (:model_id
   (&optional __model_id)
   (if __model_id (setq _model_id __model_id)) _model_id)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:detector_name
   (&optional __detector_name)
   (if __detector_name (setq _detector_name __detector_name)) _detector_name)
  (:serialization-length
   ()
   (+
    ;; int32 _model_id
    4
    ;; object_recognition_msgs/ObjectType _type
    (send _type :serialization-length)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; float32 _confidence
    4
    ;; string _detector_name
    4 (length _detector_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _model_id
       (write-long _model_id s)
     ;; object_recognition_msgs/ObjectType _type
       (send _type :serialize s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _detector_name
       (write-long (length _detector_name) s) (princ _detector_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _model_id
     (setq _model_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; object_recognition_msgs/ObjectType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _detector_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detector_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get household_objects_database_msgs::DatabaseModelPose :md5sum-) "6bc39ef48ca57cc7d4341cfc13a5a110")
(setf (get household_objects_database_msgs::DatabaseModelPose :datatype-) "household_objects_database_msgs/DatabaseModelPose")
(setf (get household_objects_database_msgs::DatabaseModelPose :definition-)
      "# Informs that a specific model from the Model Database has been 
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



(provide :household_objects_database_msgs/DatabaseModelPose "6bc39ef48ca57cc7d4341cfc13a5a110")



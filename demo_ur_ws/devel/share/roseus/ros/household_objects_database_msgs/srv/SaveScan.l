;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::SaveScan)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'SaveScan (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::SAVESCAN")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::SAVESCAN"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::SAVESCANREQUEST")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::SAVESCANREQUEST"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::SAVESCANRESPONSE")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::SAVESCANRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass household_objects_database_msgs::SaveScanRequest
  :super ros::object
  :slots (_scaled_model_id _ground_truth_pose _bagfile_location _scan_source _cloud_topic ))

(defmethod household_objects_database_msgs::SaveScanRequest
  (:init
   (&key
    ((:scaled_model_id __scaled_model_id) 0)
    ((:ground_truth_pose __ground_truth_pose) (instance geometry_msgs::PoseStamped :init))
    ((:bagfile_location __bagfile_location) "")
    ((:scan_source __scan_source) "")
    ((:cloud_topic __cloud_topic) "")
    )
   (send-super :init)
   (setq _scaled_model_id (round __scaled_model_id))
   (setq _ground_truth_pose __ground_truth_pose)
   (setq _bagfile_location (string __bagfile_location))
   (setq _scan_source (string __scan_source))
   (setq _cloud_topic (string __cloud_topic))
   self)
  (:scaled_model_id
   (&optional __scaled_model_id)
   (if __scaled_model_id (setq _scaled_model_id __scaled_model_id)) _scaled_model_id)
  (:ground_truth_pose
   (&rest __ground_truth_pose)
   (if (keywordp (car __ground_truth_pose))
       (send* _ground_truth_pose __ground_truth_pose)
     (progn
       (if __ground_truth_pose (setq _ground_truth_pose (car __ground_truth_pose)))
       _ground_truth_pose)))
  (:bagfile_location
   (&optional __bagfile_location)
   (if __bagfile_location (setq _bagfile_location __bagfile_location)) _bagfile_location)
  (:scan_source
   (&optional __scan_source)
   (if __scan_source (setq _scan_source __scan_source)) _scan_source)
  (:cloud_topic
   (&optional __cloud_topic)
   (if __cloud_topic (setq _cloud_topic __cloud_topic)) _cloud_topic)
  (:serialization-length
   ()
   (+
    ;; int32 _scaled_model_id
    4
    ;; geometry_msgs/PoseStamped _ground_truth_pose
    (send _ground_truth_pose :serialization-length)
    ;; string _bagfile_location
    4 (length _bagfile_location)
    ;; string _scan_source
    4 (length _scan_source)
    ;; string _cloud_topic
    4 (length _cloud_topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _scaled_model_id
       (write-long _scaled_model_id s)
     ;; geometry_msgs/PoseStamped _ground_truth_pose
       (send _ground_truth_pose :serialize s)
     ;; string _bagfile_location
       (write-long (length _bagfile_location) s) (princ _bagfile_location s)
     ;; string _scan_source
       (write-long (length _scan_source) s) (princ _scan_source s)
     ;; string _cloud_topic
       (write-long (length _cloud_topic) s) (princ _cloud_topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _scaled_model_id
     (setq _scaled_model_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _ground_truth_pose
     (send _ground_truth_pose :deserialize buf ptr-) (incf ptr- (send _ground_truth_pose :serialization-length))
   ;; string _bagfile_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bagfile_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _scan_source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _scan_source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _cloud_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cloud_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass household_objects_database_msgs::SaveScanResponse
  :super ros::object
  :slots (_return_code ))

(defmethod household_objects_database_msgs::SaveScanResponse
  (:init
   (&key
    ((:return_code __return_code) (instance household_objects_database_msgs::DatabaseReturnCode :init))
    )
   (send-super :init)
   (setq _return_code __return_code)
   self)
  (:return_code
   (&rest __return_code)
   (if (keywordp (car __return_code))
       (send* _return_code __return_code)
     (progn
       (if __return_code (setq _return_code (car __return_code)))
       _return_code)))
  (:serialization-length
   ()
   (+
    ;; household_objects_database_msgs/DatabaseReturnCode _return_code
    (send _return_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; household_objects_database_msgs/DatabaseReturnCode _return_code
       (send _return_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; household_objects_database_msgs/DatabaseReturnCode _return_code
     (send _return_code :deserialize buf ptr-) (incf ptr- (send _return_code :serialization-length))
   ;;
   self)
  )

(defclass household_objects_database_msgs::SaveScan
  :super ros::object
  :slots ())

(setf (get household_objects_database_msgs::SaveScan :md5sum-) "855c7b6f2658d8a9de03dd9a5f7b1f1e")
(setf (get household_objects_database_msgs::SaveScan :datatype-) "household_objects_database_msgs/SaveScan")
(setf (get household_objects_database_msgs::SaveScan :request) household_objects_database_msgs::SaveScanRequest)
(setf (get household_objects_database_msgs::SaveScan :response) household_objects_database_msgs::SaveScanResponse)

(defmethod household_objects_database_msgs::SaveScanRequest
  (:response () (instance household_objects_database_msgs::SaveScanResponse :init)))

(setf (get household_objects_database_msgs::SaveScanRequest :md5sum-) "855c7b6f2658d8a9de03dd9a5f7b1f1e")
(setf (get household_objects_database_msgs::SaveScanRequest :datatype-) "household_objects_database_msgs/SaveScanRequest")
(setf (get household_objects_database_msgs::SaveScanRequest :definition-)
      "# Stores information about a saved scan of an object to the database

# the id of the model
int32 scaled_model_id

# The ground truth location of the object represented by the point cloud
geometry_msgs/PoseStamped ground_truth_pose

# The location of the bagfile storing the scan
string bagfile_location

# The string name of the source of the scan data
string scan_source

# The topic in the bag that the cloud is published on 
string cloud_topic


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
---

# the outcome of the query
DatabaseReturnCode return_code

================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

")

(setf (get household_objects_database_msgs::SaveScanResponse :md5sum-) "855c7b6f2658d8a9de03dd9a5f7b1f1e")
(setf (get household_objects_database_msgs::SaveScanResponse :datatype-) "household_objects_database_msgs/SaveScanResponse")
(setf (get household_objects_database_msgs::SaveScanResponse :definition-)
      "# Stores information about a saved scan of an object to the database

# the id of the model
int32 scaled_model_id

# The ground truth location of the object represented by the point cloud
geometry_msgs/PoseStamped ground_truth_pose

# The location of the bagfile storing the scan
string bagfile_location

# The string name of the source of the scan data
string scan_source

# The topic in the bag that the cloud is published on 
string cloud_topic


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
---

# the outcome of the query
DatabaseReturnCode return_code

================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

")



(provide :household_objects_database_msgs/SaveScan "855c7b6f2658d8a9de03dd9a5f7b1f1e")



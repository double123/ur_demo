;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::GetModelScans)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'GetModelScans (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELSCANS")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELSCANS"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELSCANSREQUEST")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELSCANSREQUEST"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELSCANSRESPONSE")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELSCANSRESPONSE"))

(in-package "ROS")





(defclass household_objects_database_msgs::GetModelScansRequest
  :super ros::object
  :slots (_model_id _scan_source ))

(defmethod household_objects_database_msgs::GetModelScansRequest
  (:init
   (&key
    ((:model_id __model_id) 0)
    ((:scan_source __scan_source) "")
    )
   (send-super :init)
   (setq _model_id (round __model_id))
   (setq _scan_source (string __scan_source))
   self)
  (:model_id
   (&optional __model_id)
   (if __model_id (setq _model_id __model_id)) _model_id)
  (:scan_source
   (&optional __scan_source)
   (if __scan_source (setq _scan_source __scan_source)) _scan_source)
  (:serialization-length
   ()
   (+
    ;; int32 _model_id
    4
    ;; string _scan_source
    4 (length _scan_source)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _model_id
       (write-long _model_id s)
     ;; string _scan_source
       (write-long (length _scan_source) s) (princ _scan_source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _model_id
     (setq _model_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _scan_source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _scan_source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass household_objects_database_msgs::GetModelScansResponse
  :super ros::object
  :slots (_return_code _matching_scans ))

(defmethod household_objects_database_msgs::GetModelScansResponse
  (:init
   (&key
    ((:return_code __return_code) (instance household_objects_database_msgs::DatabaseReturnCode :init))
    ((:matching_scans __matching_scans) ())
    )
   (send-super :init)
   (setq _return_code __return_code)
   (setq _matching_scans __matching_scans)
   self)
  (:return_code
   (&rest __return_code)
   (if (keywordp (car __return_code))
       (send* _return_code __return_code)
     (progn
       (if __return_code (setq _return_code (car __return_code)))
       _return_code)))
  (:matching_scans
   (&rest __matching_scans)
   (if (keywordp (car __matching_scans))
       (send* _matching_scans __matching_scans)
     (progn
       (if __matching_scans (setq _matching_scans (car __matching_scans)))
       _matching_scans)))
  (:serialization-length
   ()
   (+
    ;; household_objects_database_msgs/DatabaseReturnCode _return_code
    (send _return_code :serialization-length)
    ;; household_objects_database_msgs/DatabaseScan[] _matching_scans
    (apply #'+ (send-all _matching_scans :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; household_objects_database_msgs/DatabaseReturnCode _return_code
       (send _return_code :serialize s)
     ;; household_objects_database_msgs/DatabaseScan[] _matching_scans
     (write-long (length _matching_scans) s)
     (dolist (elem _matching_scans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; household_objects_database_msgs/DatabaseReturnCode _return_code
     (send _return_code :deserialize buf ptr-) (incf ptr- (send _return_code :serialization-length))
   ;; household_objects_database_msgs/DatabaseScan[] _matching_scans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matching_scans (let (r) (dotimes (i n) (push (instance household_objects_database_msgs::DatabaseScan :init) r)) r))
     (dolist (elem- _matching_scans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass household_objects_database_msgs::GetModelScans
  :super ros::object
  :slots ())

(setf (get household_objects_database_msgs::GetModelScans :md5sum-) "8e98ddfab8ff8e5fb3a60b1cd7645437")
(setf (get household_objects_database_msgs::GetModelScans :datatype-) "household_objects_database_msgs/GetModelScans")
(setf (get household_objects_database_msgs::GetModelScans :request) household_objects_database_msgs::GetModelScansRequest)
(setf (get household_objects_database_msgs::GetModelScans :response) household_objects_database_msgs::GetModelScansResponse)

(defmethod household_objects_database_msgs::GetModelScansRequest
  (:response () (instance household_objects_database_msgs::GetModelScansResponse :init)))

(setf (get household_objects_database_msgs::GetModelScansRequest :md5sum-) "8e98ddfab8ff8e5fb3a60b1cd7645437")
(setf (get household_objects_database_msgs::GetModelScansRequest :datatype-) "household_objects_database_msgs/GetModelScansRequest")
(setf (get household_objects_database_msgs::GetModelScansRequest :definition-)
      "# retrieves a list of object scans which match a given model id and source

# the id of the model
int32 model_id

# the string name of the source of the scan data
string scan_source

---

# the outcome of the query
DatabaseReturnCode return_code

# the returned scans
DatabaseScan[] matching_scans

================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

int32 code
================================================================================
MSG: household_objects_database_msgs/DatabaseScan
# Contains the location of a stored point cloud scan of an object, 
# as well as additional metadata about that scan 

# the database id of the model
int32 model_id

# the location of the bag file storing the scan
string bagfile_location

# the source of the scan (e.g. simulation)
string scan_source

# the ground truth pose of the object that was scanned
geometry_msgs/PoseStamped pose

# the topic that the points in the bag are published on
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
")

(setf (get household_objects_database_msgs::GetModelScansResponse :md5sum-) "8e98ddfab8ff8e5fb3a60b1cd7645437")
(setf (get household_objects_database_msgs::GetModelScansResponse :datatype-) "household_objects_database_msgs/GetModelScansResponse")
(setf (get household_objects_database_msgs::GetModelScansResponse :definition-)
      "# retrieves a list of object scans which match a given model id and source

# the id of the model
int32 model_id

# the string name of the source of the scan data
string scan_source

---

# the outcome of the query
DatabaseReturnCode return_code

# the returned scans
DatabaseScan[] matching_scans

================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

int32 code
================================================================================
MSG: household_objects_database_msgs/DatabaseScan
# Contains the location of a stored point cloud scan of an object, 
# as well as additional metadata about that scan 

# the database id of the model
int32 model_id

# the location of the bag file storing the scan
string bagfile_location

# the source of the scan (e.g. simulation)
string scan_source

# the ground truth pose of the object that was scanned
geometry_msgs/PoseStamped pose

# the topic that the points in the bag are published on
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
")



(provide :household_objects_database_msgs/GetModelScans "8e98ddfab8ff8e5fb3a60b1cd7645437")



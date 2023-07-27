;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::DatabaseScan)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'DatabaseScan (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASESCAN")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASESCAN"))

(in-package "ROS")
;;//! \htmlinclude DatabaseScan.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass household_objects_database_msgs::DatabaseScan
  :super ros::object
  :slots (_model_id _bagfile_location _scan_source _pose _cloud_topic ))

(defmethod household_objects_database_msgs::DatabaseScan
  (:init
   (&key
    ((:model_id __model_id) 0)
    ((:bagfile_location __bagfile_location) "")
    ((:scan_source __scan_source) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:cloud_topic __cloud_topic) "")
    )
   (send-super :init)
   (setq _model_id (round __model_id))
   (setq _bagfile_location (string __bagfile_location))
   (setq _scan_source (string __scan_source))
   (setq _pose __pose)
   (setq _cloud_topic (string __cloud_topic))
   self)
  (:model_id
   (&optional __model_id)
   (if __model_id (setq _model_id __model_id)) _model_id)
  (:bagfile_location
   (&optional __bagfile_location)
   (if __bagfile_location (setq _bagfile_location __bagfile_location)) _bagfile_location)
  (:scan_source
   (&optional __scan_source)
   (if __scan_source (setq _scan_source __scan_source)) _scan_source)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:cloud_topic
   (&optional __cloud_topic)
   (if __cloud_topic (setq _cloud_topic __cloud_topic)) _cloud_topic)
  (:serialization-length
   ()
   (+
    ;; int32 _model_id
    4
    ;; string _bagfile_location
    4 (length _bagfile_location)
    ;; string _scan_source
    4 (length _scan_source)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; string _cloud_topic
    4 (length _cloud_topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _model_id
       (write-long _model_id s)
     ;; string _bagfile_location
       (write-long (length _bagfile_location) s) (princ _bagfile_location s)
     ;; string _scan_source
       (write-long (length _scan_source) s) (princ _scan_source s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; string _cloud_topic
       (write-long (length _cloud_topic) s) (princ _cloud_topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _model_id
     (setq _model_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _bagfile_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bagfile_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _scan_source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _scan_source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _cloud_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cloud_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get household_objects_database_msgs::DatabaseScan :md5sum-) "7edb7abec4973143a801c25c336b4bb1")
(setf (get household_objects_database_msgs::DatabaseScan :datatype-) "household_objects_database_msgs/DatabaseScan")
(setf (get household_objects_database_msgs::DatabaseScan :definition-)
      "# Contains the location of a stored point cloud scan of an object, 
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



(provide :household_objects_database_msgs/DatabaseScan "7edb7abec4973143a801c25c336b4bb1")



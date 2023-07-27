;; Auto-generated. Do not edit!


(when (boundp 'manipulation_msgs::PlaceLocation)
  (if (not (find-package "MANIPULATION_MSGS"))
    (make-package "MANIPULATION_MSGS"))
  (shadow 'PlaceLocation (find-package "MANIPULATION_MSGS")))
(unless (find-package "MANIPULATION_MSGS::PLACELOCATION")
  (make-package "MANIPULATION_MSGS::PLACELOCATION"))

(in-package "ROS")
;;//! \htmlinclude PlaceLocation.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass manipulation_msgs::PlaceLocation
  :super ros::object
  :slots (_id _post_place_posture _place_pose _approach _retreat _allowed_touch_objects ))

(defmethod manipulation_msgs::PlaceLocation
  (:init
   (&key
    ((:id __id) "")
    ((:post_place_posture __post_place_posture) (instance sensor_msgs::JointState :init))
    ((:place_pose __place_pose) (instance geometry_msgs::PoseStamped :init))
    ((:approach __approach) (instance manipulation_msgs::GripperTranslation :init))
    ((:retreat __retreat) (instance manipulation_msgs::GripperTranslation :init))
    ((:allowed_touch_objects __allowed_touch_objects) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _post_place_posture __post_place_posture)
   (setq _place_pose __place_pose)
   (setq _approach __approach)
   (setq _retreat __retreat)
   (setq _allowed_touch_objects __allowed_touch_objects)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:post_place_posture
   (&rest __post_place_posture)
   (if (keywordp (car __post_place_posture))
       (send* _post_place_posture __post_place_posture)
     (progn
       (if __post_place_posture (setq _post_place_posture (car __post_place_posture)))
       _post_place_posture)))
  (:place_pose
   (&rest __place_pose)
   (if (keywordp (car __place_pose))
       (send* _place_pose __place_pose)
     (progn
       (if __place_pose (setq _place_pose (car __place_pose)))
       _place_pose)))
  (:approach
   (&rest __approach)
   (if (keywordp (car __approach))
       (send* _approach __approach)
     (progn
       (if __approach (setq _approach (car __approach)))
       _approach)))
  (:retreat
   (&rest __retreat)
   (if (keywordp (car __retreat))
       (send* _retreat __retreat)
     (progn
       (if __retreat (setq _retreat (car __retreat)))
       _retreat)))
  (:allowed_touch_objects
   (&optional __allowed_touch_objects)
   (if __allowed_touch_objects (setq _allowed_touch_objects __allowed_touch_objects)) _allowed_touch_objects)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; sensor_msgs/JointState _post_place_posture
    (send _post_place_posture :serialization-length)
    ;; geometry_msgs/PoseStamped _place_pose
    (send _place_pose :serialization-length)
    ;; manipulation_msgs/GripperTranslation _approach
    (send _approach :serialization-length)
    ;; manipulation_msgs/GripperTranslation _retreat
    (send _retreat :serialization-length)
    ;; string[] _allowed_touch_objects
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _allowed_touch_objects)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; sensor_msgs/JointState _post_place_posture
       (send _post_place_posture :serialize s)
     ;; geometry_msgs/PoseStamped _place_pose
       (send _place_pose :serialize s)
     ;; manipulation_msgs/GripperTranslation _approach
       (send _approach :serialize s)
     ;; manipulation_msgs/GripperTranslation _retreat
       (send _retreat :serialize s)
     ;; string[] _allowed_touch_objects
     (write-long (length _allowed_touch_objects) s)
     (dolist (elem _allowed_touch_objects)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/JointState _post_place_posture
     (send _post_place_posture :deserialize buf ptr-) (incf ptr- (send _post_place_posture :serialization-length))
   ;; geometry_msgs/PoseStamped _place_pose
     (send _place_pose :deserialize buf ptr-) (incf ptr- (send _place_pose :serialization-length))
   ;; manipulation_msgs/GripperTranslation _approach
     (send _approach :deserialize buf ptr-) (incf ptr- (send _approach :serialization-length))
   ;; manipulation_msgs/GripperTranslation _retreat
     (send _retreat :deserialize buf ptr-) (incf ptr- (send _retreat :serialization-length))
   ;; string[] _allowed_touch_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _allowed_touch_objects (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _allowed_touch_objects i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get manipulation_msgs::PlaceLocation :md5sum-) "0139dab9852add0e64233c5fb3b8a25a")
(setf (get manipulation_msgs::PlaceLocation :datatype-) "manipulation_msgs/PlaceLocation")
(setf (get manipulation_msgs::PlaceLocation :definition-)
      "# A name for this grasp
string id

# The internal posture of the hand for the grasp
# positions and efforts are used
sensor_msgs/JointState post_place_posture

# The position of the end-effector for the grasp relative to a reference frame 
# (that is always specified elsewhere, not in this message)
geometry_msgs/PoseStamped place_pose

# The approach motion
GripperTranslation approach

# The retreat motion
GripperTranslation retreat

# an optional list of obstacles that we have semantic information about
# and that can be touched/pushed/moved in the course of grasping
string[] allowed_touch_objects

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: manipulation_msgs/GripperTranslation
# defines a translation for the gripper, used in pickup or place tasks
# for example for lifting an object off a table or approaching the table for placing

# the direction of the translation
geometry_msgs/Vector3Stamped direction

# the desired translation distance
float32 desired_distance

# the min distance that must be considered feasible before the
# grasp is even attempted
float32 min_distance

================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :manipulation_msgs/PlaceLocation "0139dab9852add0e64233c5fb3b8a25a")



;; Auto-generated. Do not edit!


(when (boundp 'manipulation_msgs::ClusterBoundingBox)
  (if (not (find-package "MANIPULATION_MSGS"))
    (make-package "MANIPULATION_MSGS"))
  (shadow 'ClusterBoundingBox (find-package "MANIPULATION_MSGS")))
(unless (find-package "MANIPULATION_MSGS::CLUSTERBOUNDINGBOX")
  (make-package "MANIPULATION_MSGS::CLUSTERBOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude ClusterBoundingBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass manipulation_msgs::ClusterBoundingBox
  :super ros::object
  :slots (_pose_stamped _dimensions ))

(defmethod manipulation_msgs::ClusterBoundingBox
  (:init
   (&key
    ((:pose_stamped __pose_stamped) (instance geometry_msgs::PoseStamped :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _pose_stamped __pose_stamped)
   (setq _dimensions __dimensions)
   self)
  (:pose_stamped
   (&rest __pose_stamped)
   (if (keywordp (car __pose_stamped))
       (send* _pose_stamped __pose_stamped)
     (progn
       (if __pose_stamped (setq _pose_stamped (car __pose_stamped)))
       _pose_stamped)))
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose_stamped
    (send _pose_stamped :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose_stamped
       (send _pose_stamped :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose_stamped
     (send _pose_stamped :deserialize buf ptr-) (incf ptr- (send _pose_stamped :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;;
   self)
  )

(setf (get manipulation_msgs::ClusterBoundingBox :md5sum-) "9bf2b7a44ad666dc3a6a2bbc21782dad")
(setf (get manipulation_msgs::ClusterBoundingBox :datatype-) "manipulation_msgs/ClusterBoundingBox")
(setf (get manipulation_msgs::ClusterBoundingBox :definition-)
      "# contains a bounding box, which is essentially a box somewhere in space
# used here ususally for the outlier-invariant bounding box of a cluster of points

#the pose of the box frame
geometry_msgs/PoseStamped pose_stamped

#the dimensions of the box
geometry_msgs/Vector3 dimensions

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



(provide :manipulation_msgs/ClusterBoundingBox "9bf2b7a44ad666dc3a6a2bbc21782dad")



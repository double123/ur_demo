; Auto-generated. Do not edit!


(cl:in-package manipulation_msgs-msg)


;//! \htmlinclude ClusterBoundingBox.msg.html

(cl:defclass <ClusterBoundingBox> (roslisp-msg-protocol:ros-message)
  ((pose_stamped
    :reader pose_stamped
    :initarg :pose_stamped
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass ClusterBoundingBox (<ClusterBoundingBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterBoundingBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterBoundingBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manipulation_msgs-msg:<ClusterBoundingBox> is deprecated: use manipulation_msgs-msg:ClusterBoundingBox instead.")))

(cl:ensure-generic-function 'pose_stamped-val :lambda-list '(m))
(cl:defmethod pose_stamped-val ((m <ClusterBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:pose_stamped-val is deprecated.  Use manipulation_msgs-msg:pose_stamped instead.")
  (pose_stamped m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <ClusterBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:dimensions-val is deprecated.  Use manipulation_msgs-msg:dimensions instead.")
  (dimensions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterBoundingBox>) ostream)
  "Serializes a message object of type '<ClusterBoundingBox>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_stamped) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterBoundingBox>) istream)
  "Deserializes a message object of type '<ClusterBoundingBox>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_stamped) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterBoundingBox>)))
  "Returns string type for a message object of type '<ClusterBoundingBox>"
  "manipulation_msgs/ClusterBoundingBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterBoundingBox)))
  "Returns string type for a message object of type 'ClusterBoundingBox"
  "manipulation_msgs/ClusterBoundingBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterBoundingBox>)))
  "Returns md5sum for a message object of type '<ClusterBoundingBox>"
  "9bf2b7a44ad666dc3a6a2bbc21782dad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterBoundingBox)))
  "Returns md5sum for a message object of type 'ClusterBoundingBox"
  "9bf2b7a44ad666dc3a6a2bbc21782dad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterBoundingBox>)))
  "Returns full string definition for message of type '<ClusterBoundingBox>"
  (cl:format cl:nil "# contains a bounding box, which is essentially a box somewhere in space~%# used here ususally for the outlier-invariant bounding box of a cluster of points~%~%#the pose of the box frame~%geometry_msgs/PoseStamped pose_stamped~%~%#the dimensions of the box~%geometry_msgs/Vector3 dimensions~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterBoundingBox)))
  "Returns full string definition for message of type 'ClusterBoundingBox"
  (cl:format cl:nil "# contains a bounding box, which is essentially a box somewhere in space~%# used here ususally for the outlier-invariant bounding box of a cluster of points~%~%#the pose of the box frame~%geometry_msgs/PoseStamped pose_stamped~%~%#the dimensions of the box~%geometry_msgs/Vector3 dimensions~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterBoundingBox>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_stamped))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterBoundingBox>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterBoundingBox
    (cl:cons ':pose_stamped (pose_stamped msg))
    (cl:cons ':dimensions (dimensions msg))
))

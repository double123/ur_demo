; Auto-generated. Do not edit!


(cl:in-package manipulation_msgs-msg)


;//! \htmlinclude PlaceLocation.msg.html

(cl:defclass <PlaceLocation> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (post_place_posture
    :reader post_place_posture
    :initarg :post_place_posture
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (place_pose
    :reader place_pose
    :initarg :place_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (approach
    :reader approach
    :initarg :approach
    :type manipulation_msgs-msg:GripperTranslation
    :initform (cl:make-instance 'manipulation_msgs-msg:GripperTranslation))
   (retreat
    :reader retreat
    :initarg :retreat
    :type manipulation_msgs-msg:GripperTranslation
    :initform (cl:make-instance 'manipulation_msgs-msg:GripperTranslation))
   (allowed_touch_objects
    :reader allowed_touch_objects
    :initarg :allowed_touch_objects
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass PlaceLocation (<PlaceLocation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaceLocation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaceLocation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manipulation_msgs-msg:<PlaceLocation> is deprecated: use manipulation_msgs-msg:PlaceLocation instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PlaceLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:id-val is deprecated.  Use manipulation_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'post_place_posture-val :lambda-list '(m))
(cl:defmethod post_place_posture-val ((m <PlaceLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:post_place_posture-val is deprecated.  Use manipulation_msgs-msg:post_place_posture instead.")
  (post_place_posture m))

(cl:ensure-generic-function 'place_pose-val :lambda-list '(m))
(cl:defmethod place_pose-val ((m <PlaceLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:place_pose-val is deprecated.  Use manipulation_msgs-msg:place_pose instead.")
  (place_pose m))

(cl:ensure-generic-function 'approach-val :lambda-list '(m))
(cl:defmethod approach-val ((m <PlaceLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:approach-val is deprecated.  Use manipulation_msgs-msg:approach instead.")
  (approach m))

(cl:ensure-generic-function 'retreat-val :lambda-list '(m))
(cl:defmethod retreat-val ((m <PlaceLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:retreat-val is deprecated.  Use manipulation_msgs-msg:retreat instead.")
  (retreat m))

(cl:ensure-generic-function 'allowed_touch_objects-val :lambda-list '(m))
(cl:defmethod allowed_touch_objects-val ((m <PlaceLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:allowed_touch_objects-val is deprecated.  Use manipulation_msgs-msg:allowed_touch_objects instead.")
  (allowed_touch_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaceLocation>) ostream)
  "Serializes a message object of type '<PlaceLocation>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'post_place_posture) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'place_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'approach) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'retreat) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'allowed_touch_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'allowed_touch_objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaceLocation>) istream)
  "Deserializes a message object of type '<PlaceLocation>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'post_place_posture) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'place_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'approach) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'retreat) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'allowed_touch_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'allowed_touch_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaceLocation>)))
  "Returns string type for a message object of type '<PlaceLocation>"
  "manipulation_msgs/PlaceLocation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaceLocation)))
  "Returns string type for a message object of type 'PlaceLocation"
  "manipulation_msgs/PlaceLocation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaceLocation>)))
  "Returns md5sum for a message object of type '<PlaceLocation>"
  "0139dab9852add0e64233c5fb3b8a25a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaceLocation)))
  "Returns md5sum for a message object of type 'PlaceLocation"
  "0139dab9852add0e64233c5fb3b8a25a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaceLocation>)))
  "Returns full string definition for message of type '<PlaceLocation>"
  (cl:format cl:nil "# A name for this grasp~%string id~%~%# The internal posture of the hand for the grasp~%# positions and efforts are used~%sensor_msgs/JointState post_place_posture~%~%# The position of the end-effector for the grasp relative to a reference frame ~%# (that is always specified elsewhere, not in this message)~%geometry_msgs/PoseStamped place_pose~%~%# The approach motion~%GripperTranslation approach~%~%# The retreat motion~%GripperTranslation retreat~%~%# an optional list of obstacles that we have semantic information about~%# and that can be touched/pushed/moved in the course of grasping~%string[] allowed_touch_objects~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: manipulation_msgs/GripperTranslation~%# defines a translation for the gripper, used in pickup or place tasks~%# for example for lifting an object off a table or approaching the table for placing~%~%# the direction of the translation~%geometry_msgs/Vector3Stamped direction~%~%# the desired translation distance~%float32 desired_distance~%~%# the min distance that must be considered feasible before the~%# grasp is even attempted~%float32 min_distance~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaceLocation)))
  "Returns full string definition for message of type 'PlaceLocation"
  (cl:format cl:nil "# A name for this grasp~%string id~%~%# The internal posture of the hand for the grasp~%# positions and efforts are used~%sensor_msgs/JointState post_place_posture~%~%# The position of the end-effector for the grasp relative to a reference frame ~%# (that is always specified elsewhere, not in this message)~%geometry_msgs/PoseStamped place_pose~%~%# The approach motion~%GripperTranslation approach~%~%# The retreat motion~%GripperTranslation retreat~%~%# an optional list of obstacles that we have semantic information about~%# and that can be touched/pushed/moved in the course of grasping~%string[] allowed_touch_objects~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: manipulation_msgs/GripperTranslation~%# defines a translation for the gripper, used in pickup or place tasks~%# for example for lifting an object off a table or approaching the table for placing~%~%# the direction of the translation~%geometry_msgs/Vector3Stamped direction~%~%# the desired translation distance~%float32 desired_distance~%~%# the min distance that must be considered feasible before the~%# grasp is even attempted~%float32 min_distance~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaceLocation>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'post_place_posture))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'place_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'approach))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'retreat))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'allowed_touch_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaceLocation>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaceLocation
    (cl:cons ':id (id msg))
    (cl:cons ':post_place_posture (post_place_posture msg))
    (cl:cons ':place_pose (place_pose msg))
    (cl:cons ':approach (approach msg))
    (cl:cons ':retreat (retreat msg))
    (cl:cons ':allowed_touch_objects (allowed_touch_objects msg))
))

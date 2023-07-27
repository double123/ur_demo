; Auto-generated. Do not edit!


(cl:in-package manipulation_msgs-msg)


;//! \htmlinclude Grasp.msg.html

(cl:defclass <Grasp> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (pre_grasp_posture
    :reader pre_grasp_posture
    :initarg :pre_grasp_posture
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (grasp_posture
    :reader grasp_posture
    :initarg :grasp_posture
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (grasp_pose
    :reader grasp_pose
    :initarg :grasp_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (grasp_quality
    :reader grasp_quality
    :initarg :grasp_quality
    :type cl:float
    :initform 0.0)
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
   (max_contact_force
    :reader max_contact_force
    :initarg :max_contact_force
    :type cl:float
    :initform 0.0)
   (allowed_touch_objects
    :reader allowed_touch_objects
    :initarg :allowed_touch_objects
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Grasp (<Grasp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Grasp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Grasp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name manipulation_msgs-msg:<Grasp> is deprecated: use manipulation_msgs-msg:Grasp instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Grasp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:id-val is deprecated.  Use manipulation_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pre_grasp_posture-val :lambda-list '(m))
(cl:defmethod pre_grasp_posture-val ((m <Grasp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:pre_grasp_posture-val is deprecated.  Use manipulation_msgs-msg:pre_grasp_posture instead.")
  (pre_grasp_posture m))

(cl:ensure-generic-function 'grasp_posture-val :lambda-list '(m))
(cl:defmethod grasp_posture-val ((m <Grasp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:grasp_posture-val is deprecated.  Use manipulation_msgs-msg:grasp_posture instead.")
  (grasp_posture m))

(cl:ensure-generic-function 'grasp_pose-val :lambda-list '(m))
(cl:defmethod grasp_pose-val ((m <Grasp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:grasp_pose-val is deprecated.  Use manipulation_msgs-msg:grasp_pose instead.")
  (grasp_pose m))

(cl:ensure-generic-function 'grasp_quality-val :lambda-list '(m))
(cl:defmethod grasp_quality-val ((m <Grasp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:grasp_quality-val is deprecated.  Use manipulation_msgs-msg:grasp_quality instead.")
  (grasp_quality m))

(cl:ensure-generic-function 'approach-val :lambda-list '(m))
(cl:defmethod approach-val ((m <Grasp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:approach-val is deprecated.  Use manipulation_msgs-msg:approach instead.")
  (approach m))

(cl:ensure-generic-function 'retreat-val :lambda-list '(m))
(cl:defmethod retreat-val ((m <Grasp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:retreat-val is deprecated.  Use manipulation_msgs-msg:retreat instead.")
  (retreat m))

(cl:ensure-generic-function 'max_contact_force-val :lambda-list '(m))
(cl:defmethod max_contact_force-val ((m <Grasp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:max_contact_force-val is deprecated.  Use manipulation_msgs-msg:max_contact_force instead.")
  (max_contact_force m))

(cl:ensure-generic-function 'allowed_touch_objects-val :lambda-list '(m))
(cl:defmethod allowed_touch_objects-val ((m <Grasp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader manipulation_msgs-msg:allowed_touch_objects-val is deprecated.  Use manipulation_msgs-msg:allowed_touch_objects instead.")
  (allowed_touch_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Grasp>) ostream)
  "Serializes a message object of type '<Grasp>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pre_grasp_posture) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grasp_posture) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grasp_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'grasp_quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'approach) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'retreat) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_contact_force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Grasp>) istream)
  "Deserializes a message object of type '<Grasp>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pre_grasp_posture) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grasp_posture) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grasp_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grasp_quality) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'approach) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'retreat) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_contact_force) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Grasp>)))
  "Returns string type for a message object of type '<Grasp>"
  "manipulation_msgs/Grasp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Grasp)))
  "Returns string type for a message object of type 'Grasp"
  "manipulation_msgs/Grasp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Grasp>)))
  "Returns md5sum for a message object of type '<Grasp>"
  "83bd11da422ea1917259ee456c0e315a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Grasp)))
  "Returns md5sum for a message object of type 'Grasp"
  "83bd11da422ea1917259ee456c0e315a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Grasp>)))
  "Returns full string definition for message of type '<Grasp>"
  (cl:format cl:nil "# A name for this grasp~%string id~%~%# The internal posture of the hand for the pre-grasp~%# only positions are used~%sensor_msgs/JointState pre_grasp_posture~%~%# The internal posture of the hand for the grasp~%# positions and efforts are used~%sensor_msgs/JointState grasp_posture~%~%# The position of the end-effector for the grasp ~%geometry_msgs/PoseStamped grasp_pose~%~%# The estimated probability of success for this grasp, or some other~%# measure of how \"good\" it is.~%float64 grasp_quality~%~%# The approach motion~%GripperTranslation approach~%~%# The retreat motion~%GripperTranslation retreat~%~%# the maximum contact force to use while grasping (<=0 to disable)~%float32 max_contact_force~%~%# an optional list of obstacles that we have semantic information about~%# and that can be touched/pushed/moved in the course of grasping~%string[] allowed_touch_objects~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: manipulation_msgs/GripperTranslation~%# defines a translation for the gripper, used in pickup or place tasks~%# for example for lifting an object off a table or approaching the table for placing~%~%# the direction of the translation~%geometry_msgs/Vector3Stamped direction~%~%# the desired translation distance~%float32 desired_distance~%~%# the min distance that must be considered feasible before the~%# grasp is even attempted~%float32 min_distance~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Grasp)))
  "Returns full string definition for message of type 'Grasp"
  (cl:format cl:nil "# A name for this grasp~%string id~%~%# The internal posture of the hand for the pre-grasp~%# only positions are used~%sensor_msgs/JointState pre_grasp_posture~%~%# The internal posture of the hand for the grasp~%# positions and efforts are used~%sensor_msgs/JointState grasp_posture~%~%# The position of the end-effector for the grasp ~%geometry_msgs/PoseStamped grasp_pose~%~%# The estimated probability of success for this grasp, or some other~%# measure of how \"good\" it is.~%float64 grasp_quality~%~%# The approach motion~%GripperTranslation approach~%~%# The retreat motion~%GripperTranslation retreat~%~%# the maximum contact force to use while grasping (<=0 to disable)~%float32 max_contact_force~%~%# an optional list of obstacles that we have semantic information about~%# and that can be touched/pushed/moved in the course of grasping~%string[] allowed_touch_objects~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: manipulation_msgs/GripperTranslation~%# defines a translation for the gripper, used in pickup or place tasks~%# for example for lifting an object off a table or approaching the table for placing~%~%# the direction of the translation~%geometry_msgs/Vector3Stamped direction~%~%# the desired translation distance~%float32 desired_distance~%~%# the min distance that must be considered feasible before the~%# grasp is even attempted~%float32 min_distance~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Grasp>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pre_grasp_posture))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grasp_posture))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grasp_pose))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'approach))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'retreat))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'allowed_touch_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Grasp>))
  "Converts a ROS message object to a list"
  (cl:list 'Grasp
    (cl:cons ':id (id msg))
    (cl:cons ':pre_grasp_posture (pre_grasp_posture msg))
    (cl:cons ':grasp_posture (grasp_posture msg))
    (cl:cons ':grasp_pose (grasp_pose msg))
    (cl:cons ':grasp_quality (grasp_quality msg))
    (cl:cons ':approach (approach msg))
    (cl:cons ':retreat (retreat msg))
    (cl:cons ':max_contact_force (max_contact_force msg))
    (cl:cons ':allowed_touch_objects (allowed_touch_objects msg))
))

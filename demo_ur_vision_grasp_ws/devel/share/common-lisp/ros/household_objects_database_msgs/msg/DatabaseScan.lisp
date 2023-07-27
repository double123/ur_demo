; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-msg)


;//! \htmlinclude DatabaseScan.msg.html

(cl:defclass <DatabaseScan> (roslisp-msg-protocol:ros-message)
  ((model_id
    :reader model_id
    :initarg :model_id
    :type cl:integer
    :initform 0)
   (bagfile_location
    :reader bagfile_location
    :initarg :bagfile_location
    :type cl:string
    :initform "")
   (scan_source
    :reader scan_source
    :initarg :scan_source
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (cloud_topic
    :reader cloud_topic
    :initarg :cloud_topic
    :type cl:string
    :initform ""))
)

(cl:defclass DatabaseScan (<DatabaseScan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DatabaseScan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DatabaseScan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-msg:<DatabaseScan> is deprecated: use household_objects_database_msgs-msg:DatabaseScan instead.")))

(cl:ensure-generic-function 'model_id-val :lambda-list '(m))
(cl:defmethod model_id-val ((m <DatabaseScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:model_id-val is deprecated.  Use household_objects_database_msgs-msg:model_id instead.")
  (model_id m))

(cl:ensure-generic-function 'bagfile_location-val :lambda-list '(m))
(cl:defmethod bagfile_location-val ((m <DatabaseScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:bagfile_location-val is deprecated.  Use household_objects_database_msgs-msg:bagfile_location instead.")
  (bagfile_location m))

(cl:ensure-generic-function 'scan_source-val :lambda-list '(m))
(cl:defmethod scan_source-val ((m <DatabaseScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:scan_source-val is deprecated.  Use household_objects_database_msgs-msg:scan_source instead.")
  (scan_source m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <DatabaseScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:pose-val is deprecated.  Use household_objects_database_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'cloud_topic-val :lambda-list '(m))
(cl:defmethod cloud_topic-val ((m <DatabaseScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-msg:cloud_topic-val is deprecated.  Use household_objects_database_msgs-msg:cloud_topic instead.")
  (cloud_topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DatabaseScan>) ostream)
  "Serializes a message object of type '<DatabaseScan>"
  (cl:let* ((signed (cl:slot-value msg 'model_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bagfile_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bagfile_location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'scan_source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'scan_source))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cloud_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cloud_topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DatabaseScan>) istream)
  "Deserializes a message object of type '<DatabaseScan>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bagfile_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bagfile_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scan_source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'scan_source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cloud_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cloud_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DatabaseScan>)))
  "Returns string type for a message object of type '<DatabaseScan>"
  "household_objects_database_msgs/DatabaseScan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DatabaseScan)))
  "Returns string type for a message object of type 'DatabaseScan"
  "household_objects_database_msgs/DatabaseScan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DatabaseScan>)))
  "Returns md5sum for a message object of type '<DatabaseScan>"
  "7edb7abec4973143a801c25c336b4bb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DatabaseScan)))
  "Returns md5sum for a message object of type 'DatabaseScan"
  "7edb7abec4973143a801c25c336b4bb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DatabaseScan>)))
  "Returns full string definition for message of type '<DatabaseScan>"
  (cl:format cl:nil "# Contains the location of a stored point cloud scan of an object, ~%# as well as additional metadata about that scan ~%~%# the database id of the model~%int32 model_id~%~%# the location of the bag file storing the scan~%string bagfile_location~%~%# the source of the scan (e.g. simulation)~%string scan_source~%~%# the ground truth pose of the object that was scanned~%geometry_msgs/PoseStamped pose~%~%# the topic that the points in the bag are published on~%string cloud_topic~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DatabaseScan)))
  "Returns full string definition for message of type 'DatabaseScan"
  (cl:format cl:nil "# Contains the location of a stored point cloud scan of an object, ~%# as well as additional metadata about that scan ~%~%# the database id of the model~%int32 model_id~%~%# the location of the bag file storing the scan~%string bagfile_location~%~%# the source of the scan (e.g. simulation)~%string scan_source~%~%# the ground truth pose of the object that was scanned~%geometry_msgs/PoseStamped pose~%~%# the topic that the points in the bag are published on~%string cloud_topic~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DatabaseScan>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'bagfile_location))
     4 (cl:length (cl:slot-value msg 'scan_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'cloud_topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DatabaseScan>))
  "Converts a ROS message object to a list"
  (cl:list 'DatabaseScan
    (cl:cons ':model_id (model_id msg))
    (cl:cons ':bagfile_location (bagfile_location msg))
    (cl:cons ':scan_source (scan_source msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':cloud_topic (cloud_topic msg))
))

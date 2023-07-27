; Auto-generated. Do not edit!


(cl:in-package household_objects_database_msgs-srv)


;//! \htmlinclude GetModelMesh-request.msg.html

(cl:defclass <GetModelMesh-request> (roslisp-msg-protocol:ros-message)
  ((model_id
    :reader model_id
    :initarg :model_id
    :type cl:integer
    :initform 0))
)

(cl:defclass GetModelMesh-request (<GetModelMesh-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetModelMesh-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetModelMesh-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<GetModelMesh-request> is deprecated: use household_objects_database_msgs-srv:GetModelMesh-request instead.")))

(cl:ensure-generic-function 'model_id-val :lambda-list '(m))
(cl:defmethod model_id-val ((m <GetModelMesh-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:model_id-val is deprecated.  Use household_objects_database_msgs-srv:model_id instead.")
  (model_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetModelMesh-request>) ostream)
  "Serializes a message object of type '<GetModelMesh-request>"
  (cl:let* ((signed (cl:slot-value msg 'model_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetModelMesh-request>) istream)
  "Deserializes a message object of type '<GetModelMesh-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetModelMesh-request>)))
  "Returns string type for a service object of type '<GetModelMesh-request>"
  "household_objects_database_msgs/GetModelMeshRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelMesh-request)))
  "Returns string type for a service object of type 'GetModelMesh-request"
  "household_objects_database_msgs/GetModelMeshRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetModelMesh-request>)))
  "Returns md5sum for a message object of type '<GetModelMesh-request>"
  "10df3e44a7964084746f40f0e606b2ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetModelMesh-request)))
  "Returns md5sum for a message object of type 'GetModelMesh-request"
  "10df3e44a7964084746f40f0e606b2ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetModelMesh-request>)))
  "Returns full string definition for message of type '<GetModelMesh-request>"
  (cl:format cl:nil "# retrieves the mesh for a model id~%~%# the id of the model~%int32 model_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetModelMesh-request)))
  "Returns full string definition for message of type 'GetModelMesh-request"
  (cl:format cl:nil "# retrieves the mesh for a model id~%~%# the id of the model~%int32 model_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetModelMesh-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetModelMesh-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetModelMesh-request
    (cl:cons ':model_id (model_id msg))
))
;//! \htmlinclude GetModelMesh-response.msg.html

(cl:defclass <GetModelMesh-response> (roslisp-msg-protocol:ros-message)
  ((return_code
    :reader return_code
    :initarg :return_code
    :type household_objects_database_msgs-msg:DatabaseReturnCode
    :initform (cl:make-instance 'household_objects_database_msgs-msg:DatabaseReturnCode))
   (mesh
    :reader mesh
    :initarg :mesh
    :type shape_msgs-msg:Mesh
    :initform (cl:make-instance 'shape_msgs-msg:Mesh)))
)

(cl:defclass GetModelMesh-response (<GetModelMesh-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetModelMesh-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetModelMesh-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name household_objects_database_msgs-srv:<GetModelMesh-response> is deprecated: use household_objects_database_msgs-srv:GetModelMesh-response instead.")))

(cl:ensure-generic-function 'return_code-val :lambda-list '(m))
(cl:defmethod return_code-val ((m <GetModelMesh-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:return_code-val is deprecated.  Use household_objects_database_msgs-srv:return_code instead.")
  (return_code m))

(cl:ensure-generic-function 'mesh-val :lambda-list '(m))
(cl:defmethod mesh-val ((m <GetModelMesh-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader household_objects_database_msgs-srv:mesh-val is deprecated.  Use household_objects_database_msgs-srv:mesh instead.")
  (mesh m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetModelMesh-response>) ostream)
  "Serializes a message object of type '<GetModelMesh-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'return_code) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mesh) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetModelMesh-response>) istream)
  "Deserializes a message object of type '<GetModelMesh-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'return_code) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mesh) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetModelMesh-response>)))
  "Returns string type for a service object of type '<GetModelMesh-response>"
  "household_objects_database_msgs/GetModelMeshResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelMesh-response)))
  "Returns string type for a service object of type 'GetModelMesh-response"
  "household_objects_database_msgs/GetModelMeshResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetModelMesh-response>)))
  "Returns md5sum for a message object of type '<GetModelMesh-response>"
  "10df3e44a7964084746f40f0e606b2ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetModelMesh-response)))
  "Returns md5sum for a message object of type 'GetModelMesh-response"
  "10df3e44a7964084746f40f0e606b2ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetModelMesh-response>)))
  "Returns full string definition for message of type '<GetModelMesh-response>"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%# the returned mesh~%shape_msgs/Mesh mesh~%~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetModelMesh-response)))
  "Returns full string definition for message of type 'GetModelMesh-response"
  (cl:format cl:nil "~%# the outcome of the query~%DatabaseReturnCode return_code~%~%# the returned mesh~%shape_msgs/Mesh mesh~%~%~%================================================================================~%MSG: household_objects_database_msgs/DatabaseReturnCode~%# return codes for database-related services~%~%int32 UNKNOWN_ERROR = 1~%int32 DATABASE_NOT_CONNECTED = 2~%int32 DATABASE_QUERY_ERROR = 3~%int32 SUCCESS = -1~%~%int32 code~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetModelMesh-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'return_code))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mesh))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetModelMesh-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetModelMesh-response
    (cl:cons ':return_code (return_code msg))
    (cl:cons ':mesh (mesh msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetModelMesh)))
  'GetModelMesh-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetModelMesh)))
  'GetModelMesh-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetModelMesh)))
  "Returns string type for a service object of type '<GetModelMesh>"
  "household_objects_database_msgs/GetModelMesh")
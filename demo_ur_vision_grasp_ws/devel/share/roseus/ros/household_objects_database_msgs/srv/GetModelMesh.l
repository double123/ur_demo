;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::GetModelMesh)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'GetModelMesh (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELMESH")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELMESH"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELMESHREQUEST")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELMESHREQUEST"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELMESHRESPONSE")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELMESHRESPONSE"))

(in-package "ROS")



(if (not (find-package "SHAPE_MSGS"))
  (ros::roseus-add-msgs "shape_msgs"))


(defclass household_objects_database_msgs::GetModelMeshRequest
  :super ros::object
  :slots (_model_id ))

(defmethod household_objects_database_msgs::GetModelMeshRequest
  (:init
   (&key
    ((:model_id __model_id) 0)
    )
   (send-super :init)
   (setq _model_id (round __model_id))
   self)
  (:model_id
   (&optional __model_id)
   (if __model_id (setq _model_id __model_id)) _model_id)
  (:serialization-length
   ()
   (+
    ;; int32 _model_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _model_id
       (write-long _model_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _model_id
     (setq _model_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass household_objects_database_msgs::GetModelMeshResponse
  :super ros::object
  :slots (_return_code _mesh ))

(defmethod household_objects_database_msgs::GetModelMeshResponse
  (:init
   (&key
    ((:return_code __return_code) (instance household_objects_database_msgs::DatabaseReturnCode :init))
    ((:mesh __mesh) (instance shape_msgs::Mesh :init))
    )
   (send-super :init)
   (setq _return_code __return_code)
   (setq _mesh __mesh)
   self)
  (:return_code
   (&rest __return_code)
   (if (keywordp (car __return_code))
       (send* _return_code __return_code)
     (progn
       (if __return_code (setq _return_code (car __return_code)))
       _return_code)))
  (:mesh
   (&rest __mesh)
   (if (keywordp (car __mesh))
       (send* _mesh __mesh)
     (progn
       (if __mesh (setq _mesh (car __mesh)))
       _mesh)))
  (:serialization-length
   ()
   (+
    ;; household_objects_database_msgs/DatabaseReturnCode _return_code
    (send _return_code :serialization-length)
    ;; shape_msgs/Mesh _mesh
    (send _mesh :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; household_objects_database_msgs/DatabaseReturnCode _return_code
       (send _return_code :serialize s)
     ;; shape_msgs/Mesh _mesh
       (send _mesh :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; household_objects_database_msgs/DatabaseReturnCode _return_code
     (send _return_code :deserialize buf ptr-) (incf ptr- (send _return_code :serialization-length))
   ;; shape_msgs/Mesh _mesh
     (send _mesh :deserialize buf ptr-) (incf ptr- (send _mesh :serialization-length))
   ;;
   self)
  )

(defclass household_objects_database_msgs::GetModelMesh
  :super ros::object
  :slots ())

(setf (get household_objects_database_msgs::GetModelMesh :md5sum-) "10df3e44a7964084746f40f0e606b2ab")
(setf (get household_objects_database_msgs::GetModelMesh :datatype-) "household_objects_database_msgs/GetModelMesh")
(setf (get household_objects_database_msgs::GetModelMesh :request) household_objects_database_msgs::GetModelMeshRequest)
(setf (get household_objects_database_msgs::GetModelMesh :response) household_objects_database_msgs::GetModelMeshResponse)

(defmethod household_objects_database_msgs::GetModelMeshRequest
  (:response () (instance household_objects_database_msgs::GetModelMeshResponse :init)))

(setf (get household_objects_database_msgs::GetModelMeshRequest :md5sum-) "10df3e44a7964084746f40f0e606b2ab")
(setf (get household_objects_database_msgs::GetModelMeshRequest :datatype-) "household_objects_database_msgs/GetModelMeshRequest")
(setf (get household_objects_database_msgs::GetModelMeshRequest :definition-)
      "# retrieves the mesh for a model id

# the id of the model
int32 model_id

---

# the outcome of the query
DatabaseReturnCode return_code

# the returned mesh
shape_msgs/Mesh mesh


================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

int32 code
================================================================================
MSG: shape_msgs/Mesh
# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get household_objects_database_msgs::GetModelMeshResponse :md5sum-) "10df3e44a7964084746f40f0e606b2ab")
(setf (get household_objects_database_msgs::GetModelMeshResponse :datatype-) "household_objects_database_msgs/GetModelMeshResponse")
(setf (get household_objects_database_msgs::GetModelMeshResponse :definition-)
      "# retrieves the mesh for a model id

# the id of the model
int32 model_id

---

# the outcome of the query
DatabaseReturnCode return_code

# the returned mesh
shape_msgs/Mesh mesh


================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

int32 code
================================================================================
MSG: shape_msgs/Mesh
# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :household_objects_database_msgs/GetModelMesh "10df3e44a7964084746f40f0e606b2ab")



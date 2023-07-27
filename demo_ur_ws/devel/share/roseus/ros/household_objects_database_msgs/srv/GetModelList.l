;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::GetModelList)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'GetModelList (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELLIST")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELLIST"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELLISTREQUEST")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELLISTREQUEST"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELLISTRESPONSE")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELLISTRESPONSE"))

(in-package "ROS")





(defclass household_objects_database_msgs::GetModelListRequest
  :super ros::object
  :slots (_model_set ))

(defmethod household_objects_database_msgs::GetModelListRequest
  (:init
   (&key
    ((:model_set __model_set) "")
    )
   (send-super :init)
   (setq _model_set (string __model_set))
   self)
  (:model_set
   (&optional __model_set)
   (if __model_set (setq _model_set __model_set)) _model_set)
  (:serialization-length
   ()
   (+
    ;; string _model_set
    4 (length _model_set)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_set
       (write-long (length _model_set) s) (princ _model_set s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_set
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_set (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass household_objects_database_msgs::GetModelListResponse
  :super ros::object
  :slots (_return_code _model_ids ))

(defmethod household_objects_database_msgs::GetModelListResponse
  (:init
   (&key
    ((:return_code __return_code) (instance household_objects_database_msgs::DatabaseReturnCode :init))
    ((:model_ids __model_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _return_code __return_code)
   (setq _model_ids __model_ids)
   self)
  (:return_code
   (&rest __return_code)
   (if (keywordp (car __return_code))
       (send* _return_code __return_code)
     (progn
       (if __return_code (setq _return_code (car __return_code)))
       _return_code)))
  (:model_ids
   (&optional __model_ids)
   (if __model_ids (setq _model_ids __model_ids)) _model_ids)
  (:serialization-length
   ()
   (+
    ;; household_objects_database_msgs/DatabaseReturnCode _return_code
    (send _return_code :serialization-length)
    ;; int32[] _model_ids
    (* 4    (length _model_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; household_objects_database_msgs/DatabaseReturnCode _return_code
       (send _return_code :serialize s)
     ;; int32[] _model_ids
     (write-long (length _model_ids) s)
     (dotimes (i (length _model_ids))
       (write-long (elt _model_ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; household_objects_database_msgs/DatabaseReturnCode _return_code
     (send _return_code :deserialize buf ptr-) (incf ptr- (send _return_code :serialization-length))
   ;; int32[] _model_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _model_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _model_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass household_objects_database_msgs::GetModelList
  :super ros::object
  :slots ())

(setf (get household_objects_database_msgs::GetModelList :md5sum-) "5f1f68d0a220da15352f6f1cb9a37fea")
(setf (get household_objects_database_msgs::GetModelList :datatype-) "household_objects_database_msgs/GetModelList")
(setf (get household_objects_database_msgs::GetModelList :request) household_objects_database_msgs::GetModelListRequest)
(setf (get household_objects_database_msgs::GetModelList :response) household_objects_database_msgs::GetModelListResponse)

(defmethod household_objects_database_msgs::GetModelListRequest
  (:response () (instance household_objects_database_msgs::GetModelListResponse :init)))

(setf (get household_objects_database_msgs::GetModelListRequest :md5sum-) "5f1f68d0a220da15352f6f1cb9a37fea")
(setf (get household_objects_database_msgs::GetModelListRequest :datatype-) "household_objects_database_msgs/GetModelListRequest")
(setf (get household_objects_database_msgs::GetModelListRequest :definition-)
      "# retrieves model id's from the database

# optional: the name of a model set that the id's should belong to;
# used to only retrieve a subset of models, pre-specified in the database
# leave empty to get all available models
string model_set

---

# the outcome of the query
DatabaseReturnCode return_code

# the actual model ids
int32[] model_ids

================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

")

(setf (get household_objects_database_msgs::GetModelListResponse :md5sum-) "5f1f68d0a220da15352f6f1cb9a37fea")
(setf (get household_objects_database_msgs::GetModelListResponse :datatype-) "household_objects_database_msgs/GetModelListResponse")
(setf (get household_objects_database_msgs::GetModelListResponse :definition-)
      "# retrieves model id's from the database

# optional: the name of a model set that the id's should belong to;
# used to only retrieve a subset of models, pre-specified in the database
# leave empty to get all available models
string model_set

---

# the outcome of the query
DatabaseReturnCode return_code

# the actual model ids
int32[] model_ids

================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

")



(provide :household_objects_database_msgs/GetModelList "5f1f68d0a220da15352f6f1cb9a37fea")



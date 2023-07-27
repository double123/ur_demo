;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::GetModelDescription)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'GetModelDescription (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELDESCRIPTION")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELDESCRIPTION"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELDESCRIPTIONREQUEST")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELDESCRIPTIONREQUEST"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELDESCRIPTIONRESPONSE")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::GETMODELDESCRIPTIONRESPONSE"))

(in-package "ROS")





(defclass household_objects_database_msgs::GetModelDescriptionRequest
  :super ros::object
  :slots (_model_id ))

(defmethod household_objects_database_msgs::GetModelDescriptionRequest
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

(defclass household_objects_database_msgs::GetModelDescriptionResponse
  :super ros::object
  :slots (_return_code _tags _name _maker ))

(defmethod household_objects_database_msgs::GetModelDescriptionResponse
  (:init
   (&key
    ((:return_code __return_code) (instance household_objects_database_msgs::DatabaseReturnCode :init))
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:name __name) "")
    ((:maker __maker) "")
    )
   (send-super :init)
   (setq _return_code __return_code)
   (setq _tags __tags)
   (setq _name (string __name))
   (setq _maker (string __maker))
   self)
  (:return_code
   (&rest __return_code)
   (if (keywordp (car __return_code))
       (send* _return_code __return_code)
     (progn
       (if __return_code (setq _return_code (car __return_code)))
       _return_code)))
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:maker
   (&optional __maker)
   (if __maker (setq _maker __maker)) _maker)
  (:serialization-length
   ()
   (+
    ;; household_objects_database_msgs/DatabaseReturnCode _return_code
    (send _return_code :serialization-length)
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ;; string _name
    4 (length _name)
    ;; string _maker
    4 (length _maker)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; household_objects_database_msgs/DatabaseReturnCode _return_code
       (send _return_code :serialize s)
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _maker
       (write-long (length _maker) s) (princ _maker s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; household_objects_database_msgs/DatabaseReturnCode _return_code
     (send _return_code :deserialize buf ptr-) (incf ptr- (send _return_code :serialization-length))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _maker
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _maker (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass household_objects_database_msgs::GetModelDescription
  :super ros::object
  :slots ())

(setf (get household_objects_database_msgs::GetModelDescription :md5sum-) "1fee77e674730723af04cd39a4e3e0b1")
(setf (get household_objects_database_msgs::GetModelDescription :datatype-) "household_objects_database_msgs/GetModelDescription")
(setf (get household_objects_database_msgs::GetModelDescription :request) household_objects_database_msgs::GetModelDescriptionRequest)
(setf (get household_objects_database_msgs::GetModelDescription :response) household_objects_database_msgs::GetModelDescriptionResponse)

(defmethod household_objects_database_msgs::GetModelDescriptionRequest
  (:response () (instance household_objects_database_msgs::GetModelDescriptionResponse :init)))

(setf (get household_objects_database_msgs::GetModelDescriptionRequest :md5sum-) "1fee77e674730723af04cd39a4e3e0b1")
(setf (get household_objects_database_msgs::GetModelDescriptionRequest :datatype-) "household_objects_database_msgs/GetModelDescriptionRequest")
(setf (get household_objects_database_msgs::GetModelDescriptionRequest :definition-)
      "# retreieves various metadata for an model id

# the id of the model
int32 model_id

---

# the outcome of the query
DatabaseReturnCode return_code

# the tags of the model
string[] tags

# the name of the model
string name

# the maker of the model
string maker



================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

")

(setf (get household_objects_database_msgs::GetModelDescriptionResponse :md5sum-) "1fee77e674730723af04cd39a4e3e0b1")
(setf (get household_objects_database_msgs::GetModelDescriptionResponse :datatype-) "household_objects_database_msgs/GetModelDescriptionResponse")
(setf (get household_objects_database_msgs::GetModelDescriptionResponse :definition-)
      "# retreieves various metadata for an model id

# the id of the model
int32 model_id

---

# the outcome of the query
DatabaseReturnCode return_code

# the tags of the model
string[] tags

# the name of the model
string name

# the maker of the model
string maker



================================================================================
MSG: household_objects_database_msgs/DatabaseReturnCode
# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

")



(provide :household_objects_database_msgs/GetModelDescription "1fee77e674730723af04cd39a4e3e0b1")



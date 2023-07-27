;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::DatabaseReturnCode)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'DatabaseReturnCode (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE"))

(in-package "ROS")
;;//! \htmlinclude DatabaseReturnCode.msg.html


(intern "*UNKNOWN_ERROR*" (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE"))
(shadow '*UNKNOWN_ERROR* (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE"))
(defconstant household_objects_database_msgs::DatabaseReturnCode::*UNKNOWN_ERROR* 1)
(intern "*DATABASE_NOT_CONNECTED*" (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE"))
(shadow '*DATABASE_NOT_CONNECTED* (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE"))
(defconstant household_objects_database_msgs::DatabaseReturnCode::*DATABASE_NOT_CONNECTED* 2)
(intern "*DATABASE_QUERY_ERROR*" (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE"))
(shadow '*DATABASE_QUERY_ERROR* (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE"))
(defconstant household_objects_database_msgs::DatabaseReturnCode::*DATABASE_QUERY_ERROR* 3)
(intern "*SUCCESS*" (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE"))
(shadow '*SUCCESS* (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::DATABASERETURNCODE"))
(defconstant household_objects_database_msgs::DatabaseReturnCode::*SUCCESS* -1)

(defun household_objects_database_msgs::DatabaseReturnCode-to-symbol (const)
  (cond
        ((= const 1) 'household_objects_database_msgs::DatabaseReturnCode::*UNKNOWN_ERROR*)
        ((= const 2) 'household_objects_database_msgs::DatabaseReturnCode::*DATABASE_NOT_CONNECTED*)
        ((= const 3) 'household_objects_database_msgs::DatabaseReturnCode::*DATABASE_QUERY_ERROR*)
        ((= const -1) 'household_objects_database_msgs::DatabaseReturnCode::*SUCCESS*)
        (t nil)))

(defclass household_objects_database_msgs::DatabaseReturnCode
  :super ros::object
  :slots (_code ))

(defmethod household_objects_database_msgs::DatabaseReturnCode
  (:init
   (&key
    ((:code __code) 0)
    )
   (send-super :init)
   (setq _code (round __code))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:serialization-length
   ()
   (+
    ;; int32 _code
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _code
       (write-long _code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _code
     (setq _code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get household_objects_database_msgs::DatabaseReturnCode :md5sum-) "b649fd6fa3a4e3bf8e3f4b4e648fa0f1")
(setf (get household_objects_database_msgs::DatabaseReturnCode :datatype-) "household_objects_database_msgs/DatabaseReturnCode")
(setf (get household_objects_database_msgs::DatabaseReturnCode :definition-)
      "# return codes for database-related services

int32 UNKNOWN_ERROR = 1
int32 DATABASE_NOT_CONNECTED = 2
int32 DATABASE_QUERY_ERROR = 3
int32 SUCCESS = -1

int32 code
")



(provide :household_objects_database_msgs/DatabaseReturnCode "b649fd6fa3a4e3bf8e3f4b4e648fa0f1")



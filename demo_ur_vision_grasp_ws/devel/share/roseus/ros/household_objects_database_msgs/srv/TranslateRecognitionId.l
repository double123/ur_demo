;; Auto-generated. Do not edit!


(when (boundp 'household_objects_database_msgs::TranslateRecognitionId)
  (if (not (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
    (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS"))
  (shadow 'TranslateRecognitionId (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS")))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::TRANSLATERECOGNITIONID")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::TRANSLATERECOGNITIONID"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::TRANSLATERECOGNITIONIDREQUEST")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::TRANSLATERECOGNITIONIDREQUEST"))
(unless (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::TRANSLATERECOGNITIONIDRESPONSE")
  (make-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::TRANSLATERECOGNITIONIDRESPONSE"))

(in-package "ROS")





(defclass household_objects_database_msgs::TranslateRecognitionIdRequest
  :super ros::object
  :slots (_recognition_id ))

(defmethod household_objects_database_msgs::TranslateRecognitionIdRequest
  (:init
   (&key
    ((:recognition_id __recognition_id) "")
    )
   (send-super :init)
   (setq _recognition_id (string __recognition_id))
   self)
  (:recognition_id
   (&optional __recognition_id)
   (if __recognition_id (setq _recognition_id __recognition_id)) _recognition_id)
  (:serialization-length
   ()
   (+
    ;; string _recognition_id
    4 (length _recognition_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _recognition_id
       (write-long (length _recognition_id) s) (princ _recognition_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _recognition_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _recognition_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*SUCCESS*" (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::TRANSLATERECOGNITIONIDRESPONSE"))
(shadow '*SUCCESS* (find-package "HOUSEHOLD_OBJECTS_DATABASE_MSGS::TRANSLATERECOGNITIONIDRESPONSE"))
(defconstant household_objects_database_msgs::TranslateRecognitionIdResponse::*SUCCESS* 0)

(defun household_objects_database_msgs::TranslateRecognitionIdResponse-to-symbol (const)
  (cond
        ((= const 0) 'household_objects_database_msgs::TranslateRecognitionIdResponse::*SUCCESS*)
        (t nil)))

(defclass household_objects_database_msgs::TranslateRecognitionIdResponse
  :super ros::object
  :slots (_household_objects_id _ID_NOT_FOUND _DATABASE_ERROR _OTHER_ERROR _result ))

(defmethod household_objects_database_msgs::TranslateRecognitionIdResponse
  (:init
   (&key
    ((:household_objects_id __household_objects_id) 0)
    ((:ID_NOT_FOUND __ID_NOT_FOUND) 0)
    ((:DATABASE_ERROR __DATABASE_ERROR) 0)
    ((:OTHER_ERROR __OTHER_ERROR) 0)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _household_objects_id (round __household_objects_id))
   (setq _ID_NOT_FOUND (round __ID_NOT_FOUND))
   (setq _DATABASE_ERROR (round __DATABASE_ERROR))
   (setq _OTHER_ERROR (round __OTHER_ERROR))
   (setq _result (round __result))
   self)
  (:household_objects_id
   (&optional __household_objects_id)
   (if __household_objects_id (setq _household_objects_id __household_objects_id)) _household_objects_id)
  (:ID_NOT_FOUND
   (&optional __ID_NOT_FOUND)
   (if __ID_NOT_FOUND (setq _ID_NOT_FOUND __ID_NOT_FOUND)) _ID_NOT_FOUND)
  (:DATABASE_ERROR
   (&optional __DATABASE_ERROR)
   (if __DATABASE_ERROR (setq _DATABASE_ERROR __DATABASE_ERROR)) _DATABASE_ERROR)
  (:OTHER_ERROR
   (&optional __OTHER_ERROR)
   (if __OTHER_ERROR (setq _OTHER_ERROR __OTHER_ERROR)) _OTHER_ERROR)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _household_objects_id
    4
    ;; int32 _ID_NOT_FOUND
    4
    ;; int32 _DATABASE_ERROR
    4
    ;; int32 _OTHER_ERROR
    4
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _household_objects_id
       (write-long _household_objects_id s)
     ;; int32 _ID_NOT_FOUND
       (write-long _ID_NOT_FOUND s)
     ;; int32 _DATABASE_ERROR
       (write-long _DATABASE_ERROR s)
     ;; int32 _OTHER_ERROR
       (write-long _OTHER_ERROR s)
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _household_objects_id
     (setq _household_objects_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ID_NOT_FOUND
     (setq _ID_NOT_FOUND (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _DATABASE_ERROR
     (setq _DATABASE_ERROR (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _OTHER_ERROR
     (setq _OTHER_ERROR (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass household_objects_database_msgs::TranslateRecognitionId
  :super ros::object
  :slots ())

(setf (get household_objects_database_msgs::TranslateRecognitionId :md5sum-) "4c59c4be3a6f662f70d4287dcaff730f")
(setf (get household_objects_database_msgs::TranslateRecognitionId :datatype-) "household_objects_database_msgs/TranslateRecognitionId")
(setf (get household_objects_database_msgs::TranslateRecognitionId :request) household_objects_database_msgs::TranslateRecognitionIdRequest)
(setf (get household_objects_database_msgs::TranslateRecognitionId :response) household_objects_database_msgs::TranslateRecognitionIdResponse)

(defmethod household_objects_database_msgs::TranslateRecognitionIdRequest
  (:response () (instance household_objects_database_msgs::TranslateRecognitionIdResponse :init)))

(setf (get household_objects_database_msgs::TranslateRecognitionIdRequest :md5sum-) "4c59c4be3a6f662f70d4287dcaff730f")
(setf (get household_objects_database_msgs::TranslateRecognitionIdRequest :datatype-) "household_objects_database_msgs/TranslateRecognitionIdRequest")
(setf (get household_objects_database_msgs::TranslateRecognitionIdRequest :definition-)
      "string recognition_id
---
int32 household_objects_id

int32 SUCCESS=0
int32 ID_NOT_FOUND
int32 DATABASE_ERROR
int32 OTHER_ERROR
int32 result

")

(setf (get household_objects_database_msgs::TranslateRecognitionIdResponse :md5sum-) "4c59c4be3a6f662f70d4287dcaff730f")
(setf (get household_objects_database_msgs::TranslateRecognitionIdResponse :datatype-) "household_objects_database_msgs/TranslateRecognitionIdResponse")
(setf (get household_objects_database_msgs::TranslateRecognitionIdResponse :definition-)
      "string recognition_id
---
int32 household_objects_id

int32 SUCCESS=0
int32 ID_NOT_FOUND
int32 DATABASE_ERROR
int32 OTHER_ERROR
int32 result

")



(provide :household_objects_database_msgs/TranslateRecognitionId "4c59c4be3a6f662f70d4287dcaff730f")



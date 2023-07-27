;; Auto-generated. Do not edit!


(when (boundp 'manipulation_msgs::GraspPlanningErrorCode)
  (if (not (find-package "MANIPULATION_MSGS"))
    (make-package "MANIPULATION_MSGS"))
  (shadow 'GraspPlanningErrorCode (find-package "MANIPULATION_MSGS")))
(unless (find-package "MANIPULATION_MSGS::GRASPPLANNINGERRORCODE")
  (make-package "MANIPULATION_MSGS::GRASPPLANNINGERRORCODE"))

(in-package "ROS")
;;//! \htmlinclude GraspPlanningErrorCode.msg.html


(intern "*SUCCESS*" (find-package "MANIPULATION_MSGS::GRASPPLANNINGERRORCODE"))
(shadow '*SUCCESS* (find-package "MANIPULATION_MSGS::GRASPPLANNINGERRORCODE"))
(defconstant manipulation_msgs::GraspPlanningErrorCode::*SUCCESS* 0)
(intern "*TF_ERROR*" (find-package "MANIPULATION_MSGS::GRASPPLANNINGERRORCODE"))
(shadow '*TF_ERROR* (find-package "MANIPULATION_MSGS::GRASPPLANNINGERRORCODE"))
(defconstant manipulation_msgs::GraspPlanningErrorCode::*TF_ERROR* 1)
(intern "*OTHER_ERROR*" (find-package "MANIPULATION_MSGS::GRASPPLANNINGERRORCODE"))
(shadow '*OTHER_ERROR* (find-package "MANIPULATION_MSGS::GRASPPLANNINGERRORCODE"))
(defconstant manipulation_msgs::GraspPlanningErrorCode::*OTHER_ERROR* 2)

(defun manipulation_msgs::GraspPlanningErrorCode-to-symbol (const)
  (cond
        ((= const 0) 'manipulation_msgs::GraspPlanningErrorCode::*SUCCESS*)
        ((= const 1) 'manipulation_msgs::GraspPlanningErrorCode::*TF_ERROR*)
        ((= const 2) 'manipulation_msgs::GraspPlanningErrorCode::*OTHER_ERROR*)
        (t nil)))

(defclass manipulation_msgs::GraspPlanningErrorCode
  :super ros::object
  :slots (_value ))

(defmethod manipulation_msgs::GraspPlanningErrorCode
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get manipulation_msgs::GraspPlanningErrorCode :md5sum-) "d0cbf262cc3d8075a46b994eef1bdb2a")
(setf (get manipulation_msgs::GraspPlanningErrorCode :datatype-) "manipulation_msgs/GraspPlanningErrorCode")
(setf (get manipulation_msgs::GraspPlanningErrorCode :definition-)
      "# Error codes for grasp and place planning

# plan completed as expected
int32 SUCCESS = 0

# tf error encountered while transforming
int32 TF_ERROR = 1 

# some other error
int32 OTHER_ERROR = 2

# the actual value of this error code
int32 value
")



(provide :manipulation_msgs/GraspPlanningErrorCode "d0cbf262cc3d8075a46b994eef1bdb2a")



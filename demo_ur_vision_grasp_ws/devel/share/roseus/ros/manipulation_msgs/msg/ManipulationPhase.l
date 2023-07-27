;; Auto-generated. Do not edit!


(when (boundp 'manipulation_msgs::ManipulationPhase)
  (if (not (find-package "MANIPULATION_MSGS"))
    (make-package "MANIPULATION_MSGS"))
  (shadow 'ManipulationPhase (find-package "MANIPULATION_MSGS")))
(unless (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE")
  (make-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))

(in-package "ROS")
;;//! \htmlinclude ManipulationPhase.msg.html


(intern "*CHECKING_FEASIBILITY*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*CHECKING_FEASIBILITY* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*CHECKING_FEASIBILITY* 0)
(intern "*MOVING_TO_PREGRASP*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*MOVING_TO_PREGRASP* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*MOVING_TO_PREGRASP* 1)
(intern "*MOVING_TO_GRASP*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*MOVING_TO_GRASP* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*MOVING_TO_GRASP* 2)
(intern "*CLOSING*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*CLOSING* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*CLOSING* 3)
(intern "*ADJUSTING_GRASP*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*ADJUSTING_GRASP* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*ADJUSTING_GRASP* 4)
(intern "*LIFTING*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*LIFTING* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*LIFTING* 5)
(intern "*MOVING_WITH_OBJECT*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*MOVING_WITH_OBJECT* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*MOVING_WITH_OBJECT* 6)
(intern "*MOVING_TO_PLACE*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*MOVING_TO_PLACE* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*MOVING_TO_PLACE* 7)
(intern "*PLACING*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*PLACING* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*PLACING* 8)
(intern "*OPENING*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*OPENING* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*OPENING* 9)
(intern "*RETREATING*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*RETREATING* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*RETREATING* 10)
(intern "*MOVING_WITHOUT_OBJECT*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*MOVING_WITHOUT_OBJECT* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*MOVING_WITHOUT_OBJECT* 11)
(intern "*SHAKING*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*SHAKING* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*SHAKING* 12)
(intern "*SUCCEEDED*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*SUCCEEDED* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*SUCCEEDED* 13)
(intern "*FAILED*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*FAILED* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*FAILED* 14)
(intern "*ABORTED*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*ABORTED* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*ABORTED* 15)
(intern "*HOLDING_OBJECT*" (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(shadow '*HOLDING_OBJECT* (find-package "MANIPULATION_MSGS::MANIPULATIONPHASE"))
(defconstant manipulation_msgs::ManipulationPhase::*HOLDING_OBJECT* 16)

(defun manipulation_msgs::ManipulationPhase-to-symbol (const)
  (cond
        ((= const 0) 'manipulation_msgs::ManipulationPhase::*CHECKING_FEASIBILITY*)
        ((= const 1) 'manipulation_msgs::ManipulationPhase::*MOVING_TO_PREGRASP*)
        ((= const 2) 'manipulation_msgs::ManipulationPhase::*MOVING_TO_GRASP*)
        ((= const 3) 'manipulation_msgs::ManipulationPhase::*CLOSING*)
        ((= const 4) 'manipulation_msgs::ManipulationPhase::*ADJUSTING_GRASP*)
        ((= const 5) 'manipulation_msgs::ManipulationPhase::*LIFTING*)
        ((= const 6) 'manipulation_msgs::ManipulationPhase::*MOVING_WITH_OBJECT*)
        ((= const 7) 'manipulation_msgs::ManipulationPhase::*MOVING_TO_PLACE*)
        ((= const 8) 'manipulation_msgs::ManipulationPhase::*PLACING*)
        ((= const 9) 'manipulation_msgs::ManipulationPhase::*OPENING*)
        ((= const 10) 'manipulation_msgs::ManipulationPhase::*RETREATING*)
        ((= const 11) 'manipulation_msgs::ManipulationPhase::*MOVING_WITHOUT_OBJECT*)
        ((= const 12) 'manipulation_msgs::ManipulationPhase::*SHAKING*)
        ((= const 13) 'manipulation_msgs::ManipulationPhase::*SUCCEEDED*)
        ((= const 14) 'manipulation_msgs::ManipulationPhase::*FAILED*)
        ((= const 15) 'manipulation_msgs::ManipulationPhase::*ABORTED*)
        ((= const 16) 'manipulation_msgs::ManipulationPhase::*HOLDING_OBJECT*)
        (t nil)))

(defclass manipulation_msgs::ManipulationPhase
  :super ros::object
  :slots (_phase ))

(defmethod manipulation_msgs::ManipulationPhase
  (:init
   (&key
    ((:phase __phase) 0)
    )
   (send-super :init)
   (setq _phase (round __phase))
   self)
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
  (:serialization-length
   ()
   (+
    ;; int32 _phase
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _phase
       (write-long _phase s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _phase
     (setq _phase (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get manipulation_msgs::ManipulationPhase :md5sum-) "2c824c847a35d8fd9277d324a3723378")
(setf (get manipulation_msgs::ManipulationPhase :datatype-) "manipulation_msgs/ManipulationPhase")
(setf (get manipulation_msgs::ManipulationPhase :definition-)
      "int32 CHECKING_FEASIBILITY = 0
int32 MOVING_TO_PREGRASP = 1
int32 MOVING_TO_GRASP = 2
int32 CLOSING = 3 
int32 ADJUSTING_GRASP = 4
int32 LIFTING = 5
int32 MOVING_WITH_OBJECT = 6
int32 MOVING_TO_PLACE = 7
int32 PLACING = 8
int32 OPENING = 9
int32 RETREATING = 10
int32 MOVING_WITHOUT_OBJECT = 11
int32 SHAKING = 12
int32 SUCCEEDED = 13
int32 FAILED = 14
int32 ABORTED = 15
int32 HOLDING_OBJECT = 16

int32 phase
")



(provide :manipulation_msgs/ManipulationPhase "2c824c847a35d8fd9277d324a3723378")



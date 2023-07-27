;; Auto-generated. Do not edit!


(when (boundp 'manipulation_msgs::GraspResult)
  (if (not (find-package "MANIPULATION_MSGS"))
    (make-package "MANIPULATION_MSGS"))
  (shadow 'GraspResult (find-package "MANIPULATION_MSGS")))
(unless (find-package "MANIPULATION_MSGS::GRASPRESULT")
  (make-package "MANIPULATION_MSGS::GRASPRESULT"))

(in-package "ROS")
;;//! \htmlinclude GraspResult.msg.html


(intern "*SUCCESS*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*SUCCESS* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*SUCCESS* 1)
(intern "*GRASP_OUT_OF_REACH*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*GRASP_OUT_OF_REACH* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*GRASP_OUT_OF_REACH* 2)
(intern "*GRASP_IN_COLLISION*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*GRASP_IN_COLLISION* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*GRASP_IN_COLLISION* 3)
(intern "*GRASP_UNFEASIBLE*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*GRASP_UNFEASIBLE* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*GRASP_UNFEASIBLE* 4)
(intern "*PREGRASP_OUT_OF_REACH*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*PREGRASP_OUT_OF_REACH* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*PREGRASP_OUT_OF_REACH* 5)
(intern "*PREGRASP_IN_COLLISION*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*PREGRASP_IN_COLLISION* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*PREGRASP_IN_COLLISION* 6)
(intern "*PREGRASP_UNFEASIBLE*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*PREGRASP_UNFEASIBLE* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*PREGRASP_UNFEASIBLE* 7)
(intern "*LIFT_OUT_OF_REACH*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*LIFT_OUT_OF_REACH* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*LIFT_OUT_OF_REACH* 8)
(intern "*LIFT_IN_COLLISION*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*LIFT_IN_COLLISION* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*LIFT_IN_COLLISION* 9)
(intern "*LIFT_UNFEASIBLE*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*LIFT_UNFEASIBLE* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*LIFT_UNFEASIBLE* 10)
(intern "*MOVE_ARM_FAILED*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*MOVE_ARM_FAILED* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*MOVE_ARM_FAILED* 11)
(intern "*GRASP_FAILED*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*GRASP_FAILED* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*GRASP_FAILED* 12)
(intern "*LIFT_FAILED*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*LIFT_FAILED* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*LIFT_FAILED* 13)
(intern "*RETREAT_FAILED*" (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(shadow '*RETREAT_FAILED* (find-package "MANIPULATION_MSGS::GRASPRESULT"))
(defconstant manipulation_msgs::GraspResult::*RETREAT_FAILED* 14)

(defun manipulation_msgs::GraspResult-to-symbol (const)
  (cond
        ((= const 1) 'manipulation_msgs::GraspResult::*SUCCESS*)
        ((= const 2) 'manipulation_msgs::GraspResult::*GRASP_OUT_OF_REACH*)
        ((= const 3) 'manipulation_msgs::GraspResult::*GRASP_IN_COLLISION*)
        ((= const 4) 'manipulation_msgs::GraspResult::*GRASP_UNFEASIBLE*)
        ((= const 5) 'manipulation_msgs::GraspResult::*PREGRASP_OUT_OF_REACH*)
        ((= const 6) 'manipulation_msgs::GraspResult::*PREGRASP_IN_COLLISION*)
        ((= const 7) 'manipulation_msgs::GraspResult::*PREGRASP_UNFEASIBLE*)
        ((= const 8) 'manipulation_msgs::GraspResult::*LIFT_OUT_OF_REACH*)
        ((= const 9) 'manipulation_msgs::GraspResult::*LIFT_IN_COLLISION*)
        ((= const 10) 'manipulation_msgs::GraspResult::*LIFT_UNFEASIBLE*)
        ((= const 11) 'manipulation_msgs::GraspResult::*MOVE_ARM_FAILED*)
        ((= const 12) 'manipulation_msgs::GraspResult::*GRASP_FAILED*)
        ((= const 13) 'manipulation_msgs::GraspResult::*LIFT_FAILED*)
        ((= const 14) 'manipulation_msgs::GraspResult::*RETREAT_FAILED*)
        (t nil)))

(defclass manipulation_msgs::GraspResult
  :super ros::object
  :slots (_result_code _continuation_possible ))

(defmethod manipulation_msgs::GraspResult
  (:init
   (&key
    ((:result_code __result_code) 0)
    ((:continuation_possible __continuation_possible) nil)
    )
   (send-super :init)
   (setq _result_code (round __result_code))
   (setq _continuation_possible __continuation_possible)
   self)
  (:result_code
   (&optional __result_code)
   (if __result_code (setq _result_code __result_code)) _result_code)
  (:continuation_possible
   (&optional (__continuation_possible :null))
   (if (not (eq __continuation_possible :null)) (setq _continuation_possible __continuation_possible)) _continuation_possible)
  (:serialization-length
   ()
   (+
    ;; int32 _result_code
    4
    ;; bool _continuation_possible
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result_code
       (write-long _result_code s)
     ;; bool _continuation_possible
       (if _continuation_possible (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result_code
     (setq _result_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _continuation_possible
     (setq _continuation_possible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get manipulation_msgs::GraspResult :md5sum-) "c8a909da895cdddc0630aafd59848191")
(setf (get manipulation_msgs::GraspResult :datatype-) "manipulation_msgs/GraspResult")
(setf (get manipulation_msgs::GraspResult :definition-)
      "int32 SUCCESS = 1
int32 GRASP_OUT_OF_REACH = 2
int32 GRASP_IN_COLLISION = 3
int32 GRASP_UNFEASIBLE = 4
int32 PREGRASP_OUT_OF_REACH = 5
int32 PREGRASP_IN_COLLISION = 6
int32 PREGRASP_UNFEASIBLE = 7
int32 LIFT_OUT_OF_REACH = 8
int32 LIFT_IN_COLLISION = 9
int32 LIFT_UNFEASIBLE = 10
int32 MOVE_ARM_FAILED = 11
int32 GRASP_FAILED = 12
int32 LIFT_FAILED = 13
int32 RETREAT_FAILED = 14
int32 result_code

# whether the state of the world was disturbed by this attempt. generally, this flag
# shows if another task can be attempted, or a new sensed world model is recommeded
# before proceeding
bool continuation_possible

")



(provide :manipulation_msgs/GraspResult "c8a909da895cdddc0630aafd59848191")



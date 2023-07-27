;; Auto-generated. Do not edit!


(when (boundp 'manipulation_msgs::PlaceLocationResult)
  (if (not (find-package "MANIPULATION_MSGS"))
    (make-package "MANIPULATION_MSGS"))
  (shadow 'PlaceLocationResult (find-package "MANIPULATION_MSGS")))
(unless (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT")
  (make-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude PlaceLocationResult.msg.html


(intern "*SUCCESS*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*SUCCESS* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*SUCCESS* 1)
(intern "*PLACE_OUT_OF_REACH*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*PLACE_OUT_OF_REACH* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*PLACE_OUT_OF_REACH* 2)
(intern "*PLACE_IN_COLLISION*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*PLACE_IN_COLLISION* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*PLACE_IN_COLLISION* 3)
(intern "*PLACE_UNFEASIBLE*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*PLACE_UNFEASIBLE* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*PLACE_UNFEASIBLE* 4)
(intern "*PREPLACE_OUT_OF_REACH*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*PREPLACE_OUT_OF_REACH* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*PREPLACE_OUT_OF_REACH* 5)
(intern "*PREPLACE_IN_COLLISION*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*PREPLACE_IN_COLLISION* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*PREPLACE_IN_COLLISION* 6)
(intern "*PREPLACE_UNFEASIBLE*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*PREPLACE_UNFEASIBLE* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*PREPLACE_UNFEASIBLE* 7)
(intern "*RETREAT_OUT_OF_REACH*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*RETREAT_OUT_OF_REACH* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*RETREAT_OUT_OF_REACH* 8)
(intern "*RETREAT_IN_COLLISION*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*RETREAT_IN_COLLISION* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*RETREAT_IN_COLLISION* 9)
(intern "*RETREAT_UNFEASIBLE*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*RETREAT_UNFEASIBLE* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*RETREAT_UNFEASIBLE* 10)
(intern "*MOVE_ARM_FAILED*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*MOVE_ARM_FAILED* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*MOVE_ARM_FAILED* 11)
(intern "*PLACE_FAILED*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*PLACE_FAILED* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*PLACE_FAILED* 12)
(intern "*RETREAT_FAILED*" (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(shadow '*RETREAT_FAILED* (find-package "MANIPULATION_MSGS::PLACELOCATIONRESULT"))
(defconstant manipulation_msgs::PlaceLocationResult::*RETREAT_FAILED* 13)

(defun manipulation_msgs::PlaceLocationResult-to-symbol (const)
  (cond
        ((= const 1) 'manipulation_msgs::PlaceLocationResult::*SUCCESS*)
        ((= const 2) 'manipulation_msgs::PlaceLocationResult::*PLACE_OUT_OF_REACH*)
        ((= const 3) 'manipulation_msgs::PlaceLocationResult::*PLACE_IN_COLLISION*)
        ((= const 4) 'manipulation_msgs::PlaceLocationResult::*PLACE_UNFEASIBLE*)
        ((= const 5) 'manipulation_msgs::PlaceLocationResult::*PREPLACE_OUT_OF_REACH*)
        ((= const 6) 'manipulation_msgs::PlaceLocationResult::*PREPLACE_IN_COLLISION*)
        ((= const 7) 'manipulation_msgs::PlaceLocationResult::*PREPLACE_UNFEASIBLE*)
        ((= const 8) 'manipulation_msgs::PlaceLocationResult::*RETREAT_OUT_OF_REACH*)
        ((= const 9) 'manipulation_msgs::PlaceLocationResult::*RETREAT_IN_COLLISION*)
        ((= const 10) 'manipulation_msgs::PlaceLocationResult::*RETREAT_UNFEASIBLE*)
        ((= const 11) 'manipulation_msgs::PlaceLocationResult::*MOVE_ARM_FAILED*)
        ((= const 12) 'manipulation_msgs::PlaceLocationResult::*PLACE_FAILED*)
        ((= const 13) 'manipulation_msgs::PlaceLocationResult::*RETREAT_FAILED*)
        (t nil)))

(defclass manipulation_msgs::PlaceLocationResult
  :super ros::object
  :slots (_result_code _continuation_possible ))

(defmethod manipulation_msgs::PlaceLocationResult
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

(setf (get manipulation_msgs::PlaceLocationResult :md5sum-) "8dd9edc3a2a98cab298ca81031224cda")
(setf (get manipulation_msgs::PlaceLocationResult :datatype-) "manipulation_msgs/PlaceLocationResult")
(setf (get manipulation_msgs::PlaceLocationResult :definition-)
      "int32 SUCCESS = 1
int32 PLACE_OUT_OF_REACH = 2
int32 PLACE_IN_COLLISION = 3
int32 PLACE_UNFEASIBLE = 4
int32 PREPLACE_OUT_OF_REACH = 5
int32 PREPLACE_IN_COLLISION = 6
int32 PREPLACE_UNFEASIBLE = 7
int32 RETREAT_OUT_OF_REACH = 8
int32 RETREAT_IN_COLLISION = 9
int32 RETREAT_UNFEASIBLE = 10
int32 MOVE_ARM_FAILED = 11
int32 PLACE_FAILED = 12
int32 RETREAT_FAILED = 13
int32 result_code

# whether the state of the world was disturbed by this attempt. generally, this flag
# shows if another task can be attempted, or a new sensed world model is recommeded
# before proceeding
bool continuation_possible

")



(provide :manipulation_msgs/PlaceLocationResult "8dd9edc3a2a98cab298ca81031224cda")



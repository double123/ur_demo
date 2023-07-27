;; Auto-generated. Do not edit!


(when (boundp 'manipulation_msgs::ManipulationResult)
  (if (not (find-package "MANIPULATION_MSGS"))
    (make-package "MANIPULATION_MSGS"))
  (shadow 'ManipulationResult (find-package "MANIPULATION_MSGS")))
(unless (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT")
  (make-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude ManipulationResult.msg.html


(intern "*SUCCESS*" (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(shadow '*SUCCESS* (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(defconstant manipulation_msgs::ManipulationResult::*SUCCESS* 1)
(intern "*UNFEASIBLE*" (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(shadow '*UNFEASIBLE* (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(defconstant manipulation_msgs::ManipulationResult::*UNFEASIBLE* -1)
(intern "*FAILED*" (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(shadow '*FAILED* (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(defconstant manipulation_msgs::ManipulationResult::*FAILED* -2)
(intern "*ERROR*" (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(shadow '*ERROR* (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(defconstant manipulation_msgs::ManipulationResult::*ERROR* -3)
(intern "*ARM_MOVEMENT_PREVENTED*" (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(shadow '*ARM_MOVEMENT_PREVENTED* (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(defconstant manipulation_msgs::ManipulationResult::*ARM_MOVEMENT_PREVENTED* -4)
(intern "*LIFT_FAILED*" (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(shadow '*LIFT_FAILED* (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(defconstant manipulation_msgs::ManipulationResult::*LIFT_FAILED* -5)
(intern "*RETREAT_FAILED*" (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(shadow '*RETREAT_FAILED* (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(defconstant manipulation_msgs::ManipulationResult::*RETREAT_FAILED* -6)
(intern "*CANCELLED*" (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(shadow '*CANCELLED* (find-package "MANIPULATION_MSGS::MANIPULATIONRESULT"))
(defconstant manipulation_msgs::ManipulationResult::*CANCELLED* -7)

(defun manipulation_msgs::ManipulationResult-to-symbol (const)
  (cond
        ((= const 1) 'manipulation_msgs::ManipulationResult::*SUCCESS*)
        ((= const -1) 'manipulation_msgs::ManipulationResult::*UNFEASIBLE*)
        ((= const -2) 'manipulation_msgs::ManipulationResult::*FAILED*)
        ((= const -3) 'manipulation_msgs::ManipulationResult::*ERROR*)
        ((= const -4) 'manipulation_msgs::ManipulationResult::*ARM_MOVEMENT_PREVENTED*)
        ((= const -5) 'manipulation_msgs::ManipulationResult::*LIFT_FAILED*)
        ((= const -6) 'manipulation_msgs::ManipulationResult::*RETREAT_FAILED*)
        ((= const -7) 'manipulation_msgs::ManipulationResult::*CANCELLED*)
        (t nil)))

(defclass manipulation_msgs::ManipulationResult
  :super ros::object
  :slots (_value ))

(defmethod manipulation_msgs::ManipulationResult
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

(setf (get manipulation_msgs::ManipulationResult :md5sum-) "85f8d010e045fcb335637fc8fc59184b")
(setf (get manipulation_msgs::ManipulationResult :datatype-) "manipulation_msgs/ManipulationResult")
(setf (get manipulation_msgs::ManipulationResult :definition-)
      "# Result codes for manipulation tasks

# task completed as expected
# generally means you can proceed as planned
int32 SUCCESS = 1

# task not possible (e.g. out of reach or obstacles in the way)
# generally means that the world was not disturbed, so you can try another task
int32 UNFEASIBLE = -1

# task was thought possible, but failed due to unexpected events during execution
# it is likely that the world was disturbed, so you are encouraged to refresh
# your sensed world model before proceeding to another task
int32 FAILED = -2

# a lower level error prevented task completion (e.g. joint controller not responding)
# generally requires human attention
int32 ERROR = -3

# means that at some point during execution we ended up in a state that the collision-aware
# arm navigation module will not move out of. The world was likely not disturbed, but you 
# probably need a new collision map to move the arm out of the stuck position
int32 ARM_MOVEMENT_PREVENTED = -4

# specific to grasp actions
# the object was grasped successfully, but the lift attempt could not achieve the minimum lift distance requested
# it is likely that the collision environment will see collisions between the hand/object and the support surface
int32 LIFT_FAILED = -5

# specific to place actions
# the object was placed successfully, but the retreat attempt could not achieve the minimum retreat distance requested
# it is likely that the collision environment will see collisions between the hand and the object
int32 RETREAT_FAILED = -6

# indicates that somewhere along the line a human said \"wait, stop, this is bad, go back and do something else\"
int32 CANCELLED = -7

# the actual value of this error code
int32 value

")



(provide :manipulation_msgs/ManipulationResult "85f8d010e045fcb335637fc8fc59184b")



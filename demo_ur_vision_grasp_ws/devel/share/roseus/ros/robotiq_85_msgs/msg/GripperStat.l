;; Auto-generated. Do not edit!


(when (boundp 'robotiq_85_msgs::GripperStat)
  (if (not (find-package "ROBOTIQ_85_MSGS"))
    (make-package "ROBOTIQ_85_MSGS"))
  (shadow 'GripperStat (find-package "ROBOTIQ_85_MSGS")))
(unless (find-package "ROBOTIQ_85_MSGS::GRIPPERSTAT")
  (make-package "ROBOTIQ_85_MSGS::GRIPPERSTAT"))

(in-package "ROS")
;;//! \htmlinclude GripperStat.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robotiq_85_msgs::GripperStat
  :super ros::object
  :slots (_header _is_ready _is_reset _is_moving _obj_detected _fault_status _position _requested_position _current ))

(defmethod robotiq_85_msgs::GripperStat
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_ready __is_ready) nil)
    ((:is_reset __is_reset) nil)
    ((:is_moving __is_moving) nil)
    ((:obj_detected __obj_detected) nil)
    ((:fault_status __fault_status) 0)
    ((:position __position) 0.0)
    ((:requested_position __requested_position) 0.0)
    ((:current __current) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_ready __is_ready)
   (setq _is_reset __is_reset)
   (setq _is_moving __is_moving)
   (setq _obj_detected __obj_detected)
   (setq _fault_status (round __fault_status))
   (setq _position (float __position))
   (setq _requested_position (float __requested_position))
   (setq _current (float __current))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_ready
   (&optional (__is_ready :null))
   (if (not (eq __is_ready :null)) (setq _is_ready __is_ready)) _is_ready)
  (:is_reset
   (&optional (__is_reset :null))
   (if (not (eq __is_reset :null)) (setq _is_reset __is_reset)) _is_reset)
  (:is_moving
   (&optional (__is_moving :null))
   (if (not (eq __is_moving :null)) (setq _is_moving __is_moving)) _is_moving)
  (:obj_detected
   (&optional (__obj_detected :null))
   (if (not (eq __obj_detected :null)) (setq _obj_detected __obj_detected)) _obj_detected)
  (:fault_status
   (&optional __fault_status)
   (if __fault_status (setq _fault_status __fault_status)) _fault_status)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:requested_position
   (&optional __requested_position)
   (if __requested_position (setq _requested_position __requested_position)) _requested_position)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_ready
    1
    ;; bool _is_reset
    1
    ;; bool _is_moving
    1
    ;; bool _obj_detected
    1
    ;; uint8 _fault_status
    1
    ;; float32 _position
    4
    ;; float32 _requested_position
    4
    ;; float32 _current
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_ready
       (if _is_ready (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_reset
       (if _is_reset (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_moving
       (if _is_moving (write-byte -1 s) (write-byte 0 s))
     ;; bool _obj_detected
       (if _obj_detected (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _fault_status
       (write-byte _fault_status s)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _requested_position
       (sys::poke _requested_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_ready
     (setq _is_ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_reset
     (setq _is_reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_moving
     (setq _is_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obj_detected
     (setq _obj_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _fault_status
     (setq _fault_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _requested_position
     (setq _requested_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotiq_85_msgs::GripperStat :md5sum-) "b008656b72baf8ed957040c01e114fed")
(setf (get robotiq_85_msgs::GripperStat :datatype-) "robotiq_85_msgs/GripperStat")
(setf (get robotiq_85_msgs::GripperStat :definition-)
      "Header header
bool is_ready
bool is_reset
bool is_moving
bool obj_detected
uint8 fault_status
float32 position
float32 requested_position
float32 current

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :robotiq_85_msgs/GripperStat "b008656b72baf8ed957040c01e114fed")



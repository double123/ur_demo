;; Auto-generated. Do not edit!


(when (boundp 'manipulation_msgs::CartesianGains)
  (if (not (find-package "MANIPULATION_MSGS"))
    (make-package "MANIPULATION_MSGS"))
  (shadow 'CartesianGains (find-package "MANIPULATION_MSGS")))
(unless (find-package "MANIPULATION_MSGS::CARTESIANGAINS")
  (make-package "MANIPULATION_MSGS::CARTESIANGAINS"))

(in-package "ROS")
;;//! \htmlinclude CartesianGains.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass manipulation_msgs::CartesianGains
  :super ros::object
  :slots (_header _gains _fixed_frame ))

(defmethod manipulation_msgs::CartesianGains
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gains __gains) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fixed_frame __fixed_frame) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _gains __gains)
   (setq _fixed_frame __fixed_frame)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gains
   (&optional __gains)
   (if __gains (setq _gains __gains)) _gains)
  (:fixed_frame
   (&optional __fixed_frame)
   (if __fixed_frame (setq _fixed_frame __fixed_frame)) _fixed_frame)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _gains
    (* 8    (length _gains)) 4
    ;; float64[] _fixed_frame
    (* 8    (length _fixed_frame)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _gains
     (write-long (length _gains) s)
     (dotimes (i (length _gains))
       (sys::poke (elt _gains i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _fixed_frame
     (write-long (length _fixed_frame) s)
     (dotimes (i (length _fixed_frame))
       (sys::poke (elt _fixed_frame i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _gains
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gains (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gains i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _fixed_frame
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fixed_frame (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fixed_frame i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get manipulation_msgs::CartesianGains :md5sum-) "ab347f046ca5736a156ec424cbb63635")
(setf (get manipulation_msgs::CartesianGains :datatype-) "manipulation_msgs/CartesianGains")
(setf (get manipulation_msgs::CartesianGains :definition-)
      "Header header

float64[] gains
float64[] fixed_frame

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



(provide :manipulation_msgs/CartesianGains "ab347f046ca5736a156ec424cbb63635")



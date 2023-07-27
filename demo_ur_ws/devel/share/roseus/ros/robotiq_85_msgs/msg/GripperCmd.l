;; Auto-generated. Do not edit!


(when (boundp 'robotiq_85_msgs::GripperCmd)
  (if (not (find-package "ROBOTIQ_85_MSGS"))
    (make-package "ROBOTIQ_85_MSGS"))
  (shadow 'GripperCmd (find-package "ROBOTIQ_85_MSGS")))
(unless (find-package "ROBOTIQ_85_MSGS::GRIPPERCMD")
  (make-package "ROBOTIQ_85_MSGS::GRIPPERCMD"))

(in-package "ROS")
;;//! \htmlinclude GripperCmd.msg.html


(defclass robotiq_85_msgs::GripperCmd
  :super ros::object
  :slots (_emergency_release _emergency_release_dir _stop _position _speed _force ))

(defmethod robotiq_85_msgs::GripperCmd
  (:init
   (&key
    ((:emergency_release __emergency_release) nil)
    ((:emergency_release_dir __emergency_release_dir) 0)
    ((:stop __stop) nil)
    ((:position __position) 0.0)
    ((:speed __speed) 0.0)
    ((:force __force) 0.0)
    )
   (send-super :init)
   (setq _emergency_release __emergency_release)
   (setq _emergency_release_dir (round __emergency_release_dir))
   (setq _stop __stop)
   (setq _position (float __position))
   (setq _speed (float __speed))
   (setq _force (float __force))
   self)
  (:emergency_release
   (&optional (__emergency_release :null))
   (if (not (eq __emergency_release :null)) (setq _emergency_release __emergency_release)) _emergency_release)
  (:emergency_release_dir
   (&optional __emergency_release_dir)
   (if __emergency_release_dir (setq _emergency_release_dir __emergency_release_dir)) _emergency_release_dir)
  (:stop
   (&optional (__stop :null))
   (if (not (eq __stop :null)) (setq _stop __stop)) _stop)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; bool _emergency_release
    1
    ;; uint32 _emergency_release_dir
    4
    ;; bool _stop
    1
    ;; float32 _position
    4
    ;; float32 _speed
    4
    ;; float32 _force
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _emergency_release
       (if _emergency_release (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _emergency_release_dir
       (write-long _emergency_release_dir s)
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _emergency_release
     (setq _emergency_release (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _emergency_release_dir
     (setq _emergency_release_dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotiq_85_msgs::GripperCmd :md5sum-) "017fc0d464f4a4d072ae2519e0fc1789")
(setf (get robotiq_85_msgs::GripperCmd :datatype-) "robotiq_85_msgs/GripperCmd")
(setf (get robotiq_85_msgs::GripperCmd :definition-)
      "bool emergency_release
uint32 emergency_release_dir
bool stop
float32 position
float32 speed
float32 force


")



(provide :robotiq_85_msgs/GripperCmd "017fc0d464f4a4d072ae2519e0fc1789")



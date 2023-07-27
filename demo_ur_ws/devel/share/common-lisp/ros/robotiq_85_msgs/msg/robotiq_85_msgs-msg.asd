
(cl:in-package :asdf)

(defsystem "robotiq_85_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GripperCmd" :depends-on ("_package_GripperCmd"))
    (:file "_package_GripperCmd" :depends-on ("_package"))
    (:file "GripperStat" :depends-on ("_package_GripperStat"))
    (:file "_package_GripperStat" :depends-on ("_package"))
  ))
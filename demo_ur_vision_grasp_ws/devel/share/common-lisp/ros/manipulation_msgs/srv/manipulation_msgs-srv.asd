
(cl:in-package :asdf)

(defsystem "manipulation_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :manipulation_msgs-msg
)
  :components ((:file "_package")
    (:file "GraspPlanning" :depends-on ("_package_GraspPlanning"))
    (:file "_package_GraspPlanning" :depends-on ("_package"))
  ))
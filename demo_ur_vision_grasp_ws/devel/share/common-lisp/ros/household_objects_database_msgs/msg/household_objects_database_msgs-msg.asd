
(cl:in-package :asdf)

(defsystem "household_objects_database_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :object_recognition_msgs-msg
)
  :components ((:file "_package")
    (:file "DatabaseModelPose" :depends-on ("_package_DatabaseModelPose"))
    (:file "_package_DatabaseModelPose" :depends-on ("_package"))
    (:file "DatabaseModelPoseList" :depends-on ("_package_DatabaseModelPoseList"))
    (:file "_package_DatabaseModelPoseList" :depends-on ("_package"))
    (:file "DatabaseReturnCode" :depends-on ("_package_DatabaseReturnCode"))
    (:file "_package_DatabaseReturnCode" :depends-on ("_package"))
    (:file "DatabaseScan" :depends-on ("_package_DatabaseScan"))
    (:file "_package_DatabaseScan" :depends-on ("_package"))
  ))
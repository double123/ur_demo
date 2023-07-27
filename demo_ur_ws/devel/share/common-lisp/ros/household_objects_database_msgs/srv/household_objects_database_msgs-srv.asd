
(cl:in-package :asdf)

(defsystem "household_objects_database_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :household_objects_database_msgs-msg
               :shape_msgs-msg
)
  :components ((:file "_package")
    (:file "GetModelDescription" :depends-on ("_package_GetModelDescription"))
    (:file "_package_GetModelDescription" :depends-on ("_package"))
    (:file "GetModelList" :depends-on ("_package_GetModelList"))
    (:file "_package_GetModelList" :depends-on ("_package"))
    (:file "GetModelMesh" :depends-on ("_package_GetModelMesh"))
    (:file "_package_GetModelMesh" :depends-on ("_package"))
    (:file "GetModelScans" :depends-on ("_package_GetModelScans"))
    (:file "_package_GetModelScans" :depends-on ("_package"))
    (:file "SaveScan" :depends-on ("_package_SaveScan"))
    (:file "_package_SaveScan" :depends-on ("_package"))
    (:file "TranslateRecognitionId" :depends-on ("_package_TranslateRecognitionId"))
    (:file "_package_TranslateRecognitionId" :depends-on ("_package"))
  ))
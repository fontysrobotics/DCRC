
(cl:in-package :asdf)

(defsystem "blackboard-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "TaskCost" :depends-on ("_package_TaskCost"))
    (:file "_package_TaskCost" :depends-on ("_package"))
    (:file "TaskMsg" :depends-on ("_package_TaskMsg"))
    (:file "_package_TaskMsg" :depends-on ("_package"))
    (:file "TaskStateMsg" :depends-on ("_package_TaskStateMsg"))
    (:file "_package_TaskStateMsg" :depends-on ("_package"))
    (:file "bbBackup" :depends-on ("_package_bbBackup"))
    (:file "_package_bbBackup" :depends-on ("_package"))
    (:file "bbsynch" :depends-on ("_package_bbsynch"))
    (:file "_package_bbsynch" :depends-on ("_package"))
  ))
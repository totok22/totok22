
(cl:in-package :asdf)

(defsystem "my_ros_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MultiplyResult" :depends-on ("_package_MultiplyResult"))
    (:file "_package_MultiplyResult" :depends-on ("_package"))
  ))
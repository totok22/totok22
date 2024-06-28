
(cl:in-package :asdf)

(defsystem "my_ros_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :my_ros_package-msg
)
  :components ((:file "_package")
    (:file "AddOne" :depends-on ("_package_AddOne"))
    (:file "_package_AddOne" :depends-on ("_package"))
    (:file "MultiplyTwo" :depends-on ("_package_MultiplyTwo"))
    (:file "_package_MultiplyTwo" :depends-on ("_package"))
  ))
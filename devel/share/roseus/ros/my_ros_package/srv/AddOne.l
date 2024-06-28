;; Auto-generated. Do not edit!


(when (boundp 'my_ros_package::AddOne)
  (if (not (find-package "MY_ROS_PACKAGE"))
    (make-package "MY_ROS_PACKAGE"))
  (shadow 'AddOne (find-package "MY_ROS_PACKAGE")))
(unless (find-package "MY_ROS_PACKAGE::ADDONE")
  (make-package "MY_ROS_PACKAGE::ADDONE"))
(unless (find-package "MY_ROS_PACKAGE::ADDONEREQUEST")
  (make-package "MY_ROS_PACKAGE::ADDONEREQUEST"))
(unless (find-package "MY_ROS_PACKAGE::ADDONERESPONSE")
  (make-package "MY_ROS_PACKAGE::ADDONERESPONSE"))

(in-package "ROS")





(defclass my_ros_package::AddOneRequest
  :super ros::object
  :slots (_input ))

(defmethod my_ros_package::AddOneRequest
  (:init
   (&key
    ((:input __input) 0)
    )
   (send-super :init)
   (setq _input (round __input))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; int32 _input
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _input
       (write-long _input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _input
     (setq _input (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_ros_package::AddOneResponse
  :super ros::object
  :slots (_output ))

(defmethod my_ros_package::AddOneResponse
  (:init
   (&key
    ((:output __output) 0)
    )
   (send-super :init)
   (setq _output (round __output))
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; int32 _output
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _output
       (write-long _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _output
     (setq _output (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_ros_package::AddOne
  :super ros::object
  :slots ())

(setf (get my_ros_package::AddOne :md5sum-) "21d8f69e8f1621953b39ae17e934f4f0")
(setf (get my_ros_package::AddOne :datatype-) "my_ros_package/AddOne")
(setf (get my_ros_package::AddOne :request) my_ros_package::AddOneRequest)
(setf (get my_ros_package::AddOne :response) my_ros_package::AddOneResponse)

(defmethod my_ros_package::AddOneRequest
  (:response () (instance my_ros_package::AddOneResponse :init)))

(setf (get my_ros_package::AddOneRequest :md5sum-) "21d8f69e8f1621953b39ae17e934f4f0")
(setf (get my_ros_package::AddOneRequest :datatype-) "my_ros_package/AddOneRequest")
(setf (get my_ros_package::AddOneRequest :definition-)
      "int32 input
---
int32 output

")

(setf (get my_ros_package::AddOneResponse :md5sum-) "21d8f69e8f1621953b39ae17e934f4f0")
(setf (get my_ros_package::AddOneResponse :datatype-) "my_ros_package/AddOneResponse")
(setf (get my_ros_package::AddOneResponse :definition-)
      "int32 input
---
int32 output

")



(provide :my_ros_package/AddOne "21d8f69e8f1621953b39ae17e934f4f0")



;; Auto-generated. Do not edit!


(when (boundp 'my_ros_package::MultiplyTwo)
  (if (not (find-package "MY_ROS_PACKAGE"))
    (make-package "MY_ROS_PACKAGE"))
  (shadow 'MultiplyTwo (find-package "MY_ROS_PACKAGE")))
(unless (find-package "MY_ROS_PACKAGE::MULTIPLYTWO")
  (make-package "MY_ROS_PACKAGE::MULTIPLYTWO"))
(unless (find-package "MY_ROS_PACKAGE::MULTIPLYTWOREQUEST")
  (make-package "MY_ROS_PACKAGE::MULTIPLYTWOREQUEST"))
(unless (find-package "MY_ROS_PACKAGE::MULTIPLYTWORESPONSE")
  (make-package "MY_ROS_PACKAGE::MULTIPLYTWORESPONSE"))

(in-package "ROS")





(defclass my_ros_package::MultiplyTwoRequest
  :super ros::object
  :slots (_a _b ))

(defmethod my_ros_package::MultiplyTwoRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_ros_package::MultiplyTwoResponse
  :super ros::object
  :slots (_result ))

(defmethod my_ros_package::MultiplyTwoResponse
  (:init
   (&key
    ((:result __result) (instance my_ros_package::MultiplyResult :init))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; my_ros_package/MultiplyResult _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; my_ros_package/MultiplyResult _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; my_ros_package/MultiplyResult _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(defclass my_ros_package::MultiplyTwo
  :super ros::object
  :slots ())

(setf (get my_ros_package::MultiplyTwo :md5sum-) "0d13f62a6f4a7a0a6b77fd6ffe004721")
(setf (get my_ros_package::MultiplyTwo :datatype-) "my_ros_package/MultiplyTwo")
(setf (get my_ros_package::MultiplyTwo :request) my_ros_package::MultiplyTwoRequest)
(setf (get my_ros_package::MultiplyTwo :response) my_ros_package::MultiplyTwoResponse)

(defmethod my_ros_package::MultiplyTwoRequest
  (:response () (instance my_ros_package::MultiplyTwoResponse :init)))

(setf (get my_ros_package::MultiplyTwoRequest :md5sum-) "0d13f62a6f4a7a0a6b77fd6ffe004721")
(setf (get my_ros_package::MultiplyTwoRequest :datatype-) "my_ros_package/MultiplyTwoRequest")
(setf (get my_ros_package::MultiplyTwoRequest :definition-)
      "int32 a
int32 b
---
MultiplyResult result

================================================================================
MSG: my_ros_package/MultiplyResult
int32 product
")

(setf (get my_ros_package::MultiplyTwoResponse :md5sum-) "0d13f62a6f4a7a0a6b77fd6ffe004721")
(setf (get my_ros_package::MultiplyTwoResponse :datatype-) "my_ros_package/MultiplyTwoResponse")
(setf (get my_ros_package::MultiplyTwoResponse :definition-)
      "int32 a
int32 b
---
MultiplyResult result

================================================================================
MSG: my_ros_package/MultiplyResult
int32 product
")



(provide :my_ros_package/MultiplyTwo "0d13f62a6f4a7a0a6b77fd6ffe004721")



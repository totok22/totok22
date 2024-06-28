;; Auto-generated. Do not edit!


(when (boundp 'my_ros_package::MultiplyResult)
  (if (not (find-package "MY_ROS_PACKAGE"))
    (make-package "MY_ROS_PACKAGE"))
  (shadow 'MultiplyResult (find-package "MY_ROS_PACKAGE")))
(unless (find-package "MY_ROS_PACKAGE::MULTIPLYRESULT")
  (make-package "MY_ROS_PACKAGE::MULTIPLYRESULT"))

(in-package "ROS")
;;//! \htmlinclude MultiplyResult.msg.html


(defclass my_ros_package::MultiplyResult
  :super ros::object
  :slots (_product _message ))

(defmethod my_ros_package::MultiplyResult
  (:init
   (&key
    ((:product __product) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _product (round __product))
   (setq _message (string __message))
   self)
  (:product
   (&optional __product)
   (if __product (setq _product __product)) _product)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _product
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _product
       (write-long _product s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _product
     (setq _product (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get my_ros_package::MultiplyResult :md5sum-) "9e359ab8f5ff6b1819dec7096306b3a8")
(setf (get my_ros_package::MultiplyResult :datatype-) "my_ros_package/MultiplyResult")
(setf (get my_ros_package::MultiplyResult :definition-)
      "int32 product
string message
")



(provide :my_ros_package/MultiplyResult "9e359ab8f5ff6b1819dec7096306b3a8")



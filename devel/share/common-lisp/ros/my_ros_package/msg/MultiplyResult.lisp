; Auto-generated. Do not edit!


(cl:in-package my_ros_package-msg)


;//! \htmlinclude MultiplyResult.msg.html

(cl:defclass <MultiplyResult> (roslisp-msg-protocol:ros-message)
  ((product
    :reader product
    :initarg :product
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass MultiplyResult (<MultiplyResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiplyResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiplyResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_ros_package-msg:<MultiplyResult> is deprecated: use my_ros_package-msg:MultiplyResult instead.")))

(cl:ensure-generic-function 'product-val :lambda-list '(m))
(cl:defmethod product-val ((m <MultiplyResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_package-msg:product-val is deprecated.  Use my_ros_package-msg:product instead.")
  (product m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MultiplyResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_package-msg:message-val is deprecated.  Use my_ros_package-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiplyResult>) ostream)
  "Serializes a message object of type '<MultiplyResult>"
  (cl:let* ((signed (cl:slot-value msg 'product)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiplyResult>) istream)
  "Deserializes a message object of type '<MultiplyResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'product) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiplyResult>)))
  "Returns string type for a message object of type '<MultiplyResult>"
  "my_ros_package/MultiplyResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiplyResult)))
  "Returns string type for a message object of type 'MultiplyResult"
  "my_ros_package/MultiplyResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiplyResult>)))
  "Returns md5sum for a message object of type '<MultiplyResult>"
  "9e359ab8f5ff6b1819dec7096306b3a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiplyResult)))
  "Returns md5sum for a message object of type 'MultiplyResult"
  "9e359ab8f5ff6b1819dec7096306b3a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiplyResult>)))
  "Returns full string definition for message of type '<MultiplyResult>"
  (cl:format cl:nil "int32 product~%string message~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiplyResult)))
  "Returns full string definition for message of type 'MultiplyResult"
  (cl:format cl:nil "int32 product~%string message~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiplyResult>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiplyResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiplyResult
    (cl:cons ':product (product msg))
    (cl:cons ':message (message msg))
))

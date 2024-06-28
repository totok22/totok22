; Auto-generated. Do not edit!


(cl:in-package my_ros_package-srv)


;//! \htmlinclude AddOne-request.msg.html

(cl:defclass <AddOne-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:integer
    :initform 0))
)

(cl:defclass AddOne-request (<AddOne-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddOne-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddOne-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_ros_package-srv:<AddOne-request> is deprecated: use my_ros_package-srv:AddOne-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <AddOne-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_package-srv:input-val is deprecated.  Use my_ros_package-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddOne-request>) ostream)
  "Serializes a message object of type '<AddOne-request>"
  (cl:let* ((signed (cl:slot-value msg 'input)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddOne-request>) istream)
  "Deserializes a message object of type '<AddOne-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddOne-request>)))
  "Returns string type for a service object of type '<AddOne-request>"
  "my_ros_package/AddOneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddOne-request)))
  "Returns string type for a service object of type 'AddOne-request"
  "my_ros_package/AddOneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddOne-request>)))
  "Returns md5sum for a message object of type '<AddOne-request>"
  "21d8f69e8f1621953b39ae17e934f4f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddOne-request)))
  "Returns md5sum for a message object of type 'AddOne-request"
  "21d8f69e8f1621953b39ae17e934f4f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddOne-request>)))
  "Returns full string definition for message of type '<AddOne-request>"
  (cl:format cl:nil "int32 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddOne-request)))
  "Returns full string definition for message of type 'AddOne-request"
  (cl:format cl:nil "int32 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddOne-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddOne-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddOne-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude AddOne-response.msg.html

(cl:defclass <AddOne-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:integer
    :initform 0))
)

(cl:defclass AddOne-response (<AddOne-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddOne-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddOne-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_ros_package-srv:<AddOne-response> is deprecated: use my_ros_package-srv:AddOne-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <AddOne-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_package-srv:output-val is deprecated.  Use my_ros_package-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddOne-response>) ostream)
  "Serializes a message object of type '<AddOne-response>"
  (cl:let* ((signed (cl:slot-value msg 'output)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddOne-response>) istream)
  "Deserializes a message object of type '<AddOne-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddOne-response>)))
  "Returns string type for a service object of type '<AddOne-response>"
  "my_ros_package/AddOneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddOne-response)))
  "Returns string type for a service object of type 'AddOne-response"
  "my_ros_package/AddOneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddOne-response>)))
  "Returns md5sum for a message object of type '<AddOne-response>"
  "21d8f69e8f1621953b39ae17e934f4f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddOne-response)))
  "Returns md5sum for a message object of type 'AddOne-response"
  "21d8f69e8f1621953b39ae17e934f4f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddOne-response>)))
  "Returns full string definition for message of type '<AddOne-response>"
  (cl:format cl:nil "int32 output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddOne-response)))
  "Returns full string definition for message of type 'AddOne-response"
  (cl:format cl:nil "int32 output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddOne-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddOne-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddOne-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddOne)))
  'AddOne-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddOne)))
  'AddOne-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddOne)))
  "Returns string type for a service object of type '<AddOne>"
  "my_ros_package/AddOne")
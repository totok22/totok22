; Auto-generated. Do not edit!


(cl:in-package my_ros_package-srv)


;//! \htmlinclude MultiplyTwo-request.msg.html

(cl:defclass <MultiplyTwo-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass MultiplyTwo-request (<MultiplyTwo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiplyTwo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiplyTwo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_ros_package-srv:<MultiplyTwo-request> is deprecated: use my_ros_package-srv:MultiplyTwo-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <MultiplyTwo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_package-srv:a-val is deprecated.  Use my_ros_package-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <MultiplyTwo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_package-srv:b-val is deprecated.  Use my_ros_package-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiplyTwo-request>) ostream)
  "Serializes a message object of type '<MultiplyTwo-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiplyTwo-request>) istream)
  "Deserializes a message object of type '<MultiplyTwo-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiplyTwo-request>)))
  "Returns string type for a service object of type '<MultiplyTwo-request>"
  "my_ros_package/MultiplyTwoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiplyTwo-request)))
  "Returns string type for a service object of type 'MultiplyTwo-request"
  "my_ros_package/MultiplyTwoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiplyTwo-request>)))
  "Returns md5sum for a message object of type '<MultiplyTwo-request>"
  "0d13f62a6f4a7a0a6b77fd6ffe004721")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiplyTwo-request)))
  "Returns md5sum for a message object of type 'MultiplyTwo-request"
  "0d13f62a6f4a7a0a6b77fd6ffe004721")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiplyTwo-request>)))
  "Returns full string definition for message of type '<MultiplyTwo-request>"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiplyTwo-request)))
  "Returns full string definition for message of type 'MultiplyTwo-request"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiplyTwo-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiplyTwo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiplyTwo-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude MultiplyTwo-response.msg.html

(cl:defclass <MultiplyTwo-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type my_ros_package-msg:MultiplyResult
    :initform (cl:make-instance 'my_ros_package-msg:MultiplyResult)))
)

(cl:defclass MultiplyTwo-response (<MultiplyTwo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiplyTwo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiplyTwo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_ros_package-srv:<MultiplyTwo-response> is deprecated: use my_ros_package-srv:MultiplyTwo-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MultiplyTwo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_package-srv:result-val is deprecated.  Use my_ros_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiplyTwo-response>) ostream)
  "Serializes a message object of type '<MultiplyTwo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiplyTwo-response>) istream)
  "Deserializes a message object of type '<MultiplyTwo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiplyTwo-response>)))
  "Returns string type for a service object of type '<MultiplyTwo-response>"
  "my_ros_package/MultiplyTwoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiplyTwo-response)))
  "Returns string type for a service object of type 'MultiplyTwo-response"
  "my_ros_package/MultiplyTwoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiplyTwo-response>)))
  "Returns md5sum for a message object of type '<MultiplyTwo-response>"
  "0d13f62a6f4a7a0a6b77fd6ffe004721")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiplyTwo-response)))
  "Returns md5sum for a message object of type 'MultiplyTwo-response"
  "0d13f62a6f4a7a0a6b77fd6ffe004721")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiplyTwo-response>)))
  "Returns full string definition for message of type '<MultiplyTwo-response>"
  (cl:format cl:nil "MultiplyResult result~%~%================================================================================~%MSG: my_ros_package/MultiplyResult~%int32 product~%string message~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiplyTwo-response)))
  "Returns full string definition for message of type 'MultiplyTwo-response"
  (cl:format cl:nil "MultiplyResult result~%~%================================================================================~%MSG: my_ros_package/MultiplyResult~%int32 product~%string message~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiplyTwo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiplyTwo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiplyTwo-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MultiplyTwo)))
  'MultiplyTwo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MultiplyTwo)))
  'MultiplyTwo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiplyTwo)))
  "Returns string type for a service object of type '<MultiplyTwo>"
  "my_ros_package/MultiplyTwo")
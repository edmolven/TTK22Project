; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude podAngle.msg.html

(cl:defclass <podAngle> (roslisp-msg-protocol:ros-message)
  ((port
    :reader port
    :initarg :port
    :type cl:float
    :initform 0.0)
   (star
    :reader star
    :initarg :star
    :type cl:float
    :initform 0.0))
)

(cl:defclass podAngle (<podAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <podAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'podAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<podAngle> is deprecated: use custom_msgs-msg:podAngle instead.")))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <podAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:port-val is deprecated.  Use custom_msgs-msg:port instead.")
  (port m))

(cl:ensure-generic-function 'star-val :lambda-list '(m))
(cl:defmethod star-val ((m <podAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:star-val is deprecated.  Use custom_msgs-msg:star instead.")
  (star m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <podAngle>) ostream)
  "Serializes a message object of type '<podAngle>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'port))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'star))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <podAngle>) istream)
  "Deserializes a message object of type '<podAngle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'port) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'star) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<podAngle>)))
  "Returns string type for a message object of type '<podAngle>"
  "custom_msgs/podAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'podAngle)))
  "Returns string type for a message object of type 'podAngle"
  "custom_msgs/podAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<podAngle>)))
  "Returns md5sum for a message object of type '<podAngle>"
  "008d1aaf11032e16c8f046f110392eb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'podAngle)))
  "Returns md5sum for a message object of type 'podAngle"
  "008d1aaf11032e16c8f046f110392eb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<podAngle>)))
  "Returns full string definition for message of type '<podAngle>"
  (cl:format cl:nil "float64 port~%float64 star~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'podAngle)))
  "Returns full string definition for message of type 'podAngle"
  (cl:format cl:nil "float64 port~%float64 star~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <podAngle>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <podAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'podAngle
    (cl:cons ':port (port msg))
    (cl:cons ':star (star msg))
))

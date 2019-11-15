; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude SurgeSwayYaw.msg.html

(cl:defclass <SurgeSwayYaw> (roslisp-msg-protocol:ros-message)
  ((surge
    :reader surge
    :initarg :surge
    :type cl:float
    :initform 0.0)
   (sway
    :reader sway
    :initarg :sway
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass SurgeSwayYaw (<SurgeSwayYaw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SurgeSwayYaw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SurgeSwayYaw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<SurgeSwayYaw> is deprecated: use custom_msgs-msg:SurgeSwayYaw instead.")))

(cl:ensure-generic-function 'surge-val :lambda-list '(m))
(cl:defmethod surge-val ((m <SurgeSwayYaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:surge-val is deprecated.  Use custom_msgs-msg:surge instead.")
  (surge m))

(cl:ensure-generic-function 'sway-val :lambda-list '(m))
(cl:defmethod sway-val ((m <SurgeSwayYaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:sway-val is deprecated.  Use custom_msgs-msg:sway instead.")
  (sway m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <SurgeSwayYaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:yaw-val is deprecated.  Use custom_msgs-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SurgeSwayYaw>) ostream)
  "Serializes a message object of type '<SurgeSwayYaw>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'surge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sway))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SurgeSwayYaw>) istream)
  "Deserializes a message object of type '<SurgeSwayYaw>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'surge) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sway) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SurgeSwayYaw>)))
  "Returns string type for a message object of type '<SurgeSwayYaw>"
  "custom_msgs/SurgeSwayYaw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SurgeSwayYaw)))
  "Returns string type for a message object of type 'SurgeSwayYaw"
  "custom_msgs/SurgeSwayYaw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SurgeSwayYaw>)))
  "Returns md5sum for a message object of type '<SurgeSwayYaw>"
  "d86ccd8ad254d064df2af607e63b6ac0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SurgeSwayYaw)))
  "Returns md5sum for a message object of type 'SurgeSwayYaw"
  "d86ccd8ad254d064df2af607e63b6ac0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SurgeSwayYaw>)))
  "Returns full string definition for message of type '<SurgeSwayYaw>"
  (cl:format cl:nil "float64 surge~%float64 sway~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SurgeSwayYaw)))
  "Returns full string definition for message of type 'SurgeSwayYaw"
  (cl:format cl:nil "float64 surge~%float64 sway~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SurgeSwayYaw>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SurgeSwayYaw>))
  "Converts a ROS message object to a list"
  (cl:list 'SurgeSwayYaw
    (cl:cons ':surge (surge msg))
    (cl:cons ':sway (sway msg))
    (cl:cons ':yaw (yaw msg))
))

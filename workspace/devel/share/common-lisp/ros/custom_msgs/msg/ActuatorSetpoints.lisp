; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude ActuatorSetpoints.msg.html

(cl:defclass <ActuatorSetpoints> (roslisp-msg-protocol:ros-message)
  ((throttle_reference
    :reader throttle_reference
    :initarg :throttle_reference
    :type cl:fixnum
    :initform 0)
   (angle_reference
    :reader angle_reference
    :initarg :angle_reference
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ActuatorSetpoints (<ActuatorSetpoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorSetpoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorSetpoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<ActuatorSetpoints> is deprecated: use custom_msgs-msg:ActuatorSetpoints instead.")))

(cl:ensure-generic-function 'throttle_reference-val :lambda-list '(m))
(cl:defmethod throttle_reference-val ((m <ActuatorSetpoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:throttle_reference-val is deprecated.  Use custom_msgs-msg:throttle_reference instead.")
  (throttle_reference m))

(cl:ensure-generic-function 'angle_reference-val :lambda-list '(m))
(cl:defmethod angle_reference-val ((m <ActuatorSetpoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:angle_reference-val is deprecated.  Use custom_msgs-msg:angle_reference instead.")
  (angle_reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorSetpoints>) ostream)
  "Serializes a message object of type '<ActuatorSetpoints>"
  (cl:let* ((signed (cl:slot-value msg 'throttle_reference)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'angle_reference)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorSetpoints>) istream)
  "Deserializes a message object of type '<ActuatorSetpoints>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'throttle_reference) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle_reference) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorSetpoints>)))
  "Returns string type for a message object of type '<ActuatorSetpoints>"
  "custom_msgs/ActuatorSetpoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorSetpoints)))
  "Returns string type for a message object of type 'ActuatorSetpoints"
  "custom_msgs/ActuatorSetpoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorSetpoints>)))
  "Returns md5sum for a message object of type '<ActuatorSetpoints>"
  "2d64702992bfea9b6443fa0b9864979b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorSetpoints)))
  "Returns md5sum for a message object of type 'ActuatorSetpoints"
  "2d64702992bfea9b6443fa0b9864979b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorSetpoints>)))
  "Returns full string definition for message of type '<ActuatorSetpoints>"
  (cl:format cl:nil "# Custom message for holding the actuator setpoints~%# from thust allocation~%~%int16 throttle_reference~%int16 angle_reference~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorSetpoints)))
  "Returns full string definition for message of type 'ActuatorSetpoints"
  (cl:format cl:nil "# Custom message for holding the actuator setpoints~%# from thust allocation~%~%int16 throttle_reference~%int16 angle_reference~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorSetpoints>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorSetpoints>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorSetpoints
    (cl:cons ':throttle_reference (throttle_reference msg))
    (cl:cons ':angle_reference (angle_reference msg))
))

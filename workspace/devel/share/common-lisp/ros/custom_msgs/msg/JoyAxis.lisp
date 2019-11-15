; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude JoyAxis.msg.html

(cl:defclass <JoyAxis> (roslisp-msg-protocol:ros-message)
  ((x_axis
    :reader x_axis
    :initarg :x_axis
    :type cl:fixnum
    :initform 0)
   (y_axis
    :reader y_axis
    :initarg :y_axis
    :type cl:fixnum
    :initform 0))
)

(cl:defclass JoyAxis (<JoyAxis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoyAxis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoyAxis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<JoyAxis> is deprecated: use custom_msgs-msg:JoyAxis instead.")))

(cl:ensure-generic-function 'x_axis-val :lambda-list '(m))
(cl:defmethod x_axis-val ((m <JoyAxis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:x_axis-val is deprecated.  Use custom_msgs-msg:x_axis instead.")
  (x_axis m))

(cl:ensure-generic-function 'y_axis-val :lambda-list '(m))
(cl:defmethod y_axis-val ((m <JoyAxis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:y_axis-val is deprecated.  Use custom_msgs-msg:y_axis instead.")
  (y_axis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoyAxis>) ostream)
  "Serializes a message object of type '<JoyAxis>"
  (cl:let* ((signed (cl:slot-value msg 'x_axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoyAxis>) istream)
  "Deserializes a message object of type '<JoyAxis>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_axis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_axis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoyAxis>)))
  "Returns string type for a message object of type '<JoyAxis>"
  "custom_msgs/JoyAxis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoyAxis)))
  "Returns string type for a message object of type 'JoyAxis"
  "custom_msgs/JoyAxis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoyAxis>)))
  "Returns md5sum for a message object of type '<JoyAxis>"
  "d8729562965cf2371e2fd83295ee15ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoyAxis)))
  "Returns md5sum for a message object of type 'JoyAxis"
  "d8729562965cf2371e2fd83295ee15ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoyAxis>)))
  "Returns full string definition for message of type '<JoyAxis>"
  (cl:format cl:nil "# Custom message to hold the value of the axes of a joystick~%~%int16 x_axis~%int16 y_axis~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoyAxis)))
  "Returns full string definition for message of type 'JoyAxis"
  (cl:format cl:nil "# Custom message to hold the value of the axes of a joystick~%~%int16 x_axis~%int16 y_axis~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoyAxis>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoyAxis>))
  "Converts a ROS message object to a list"
  (cl:list 'JoyAxis
    (cl:cons ':x_axis (x_axis msg))
    (cl:cons ':y_axis (y_axis msg))
))

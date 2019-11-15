; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude gnssRMC.msg.html

(cl:defclass <gnssRMC> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (speed_mps
    :reader speed_mps
    :initarg :speed_mps
    :type cl:float
    :initform 0.0)
   (course
    :reader course
    :initarg :course
    :type cl:float
    :initform 0.0))
)

(cl:defclass gnssRMC (<gnssRMC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gnssRMC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gnssRMC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<gnssRMC> is deprecated: use custom_msgs-msg:gnssRMC instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <gnssRMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:header-val is deprecated.  Use custom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'speed_mps-val :lambda-list '(m))
(cl:defmethod speed_mps-val ((m <gnssRMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:speed_mps-val is deprecated.  Use custom_msgs-msg:speed_mps instead.")
  (speed_mps m))

(cl:ensure-generic-function 'course-val :lambda-list '(m))
(cl:defmethod course-val ((m <gnssRMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:course-val is deprecated.  Use custom_msgs-msg:course instead.")
  (course m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gnssRMC>) ostream)
  "Serializes a message object of type '<gnssRMC>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_mps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'course))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gnssRMC>) istream)
  "Deserializes a message object of type '<gnssRMC>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_mps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'course) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gnssRMC>)))
  "Returns string type for a message object of type '<gnssRMC>"
  "custom_msgs/gnssRMC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gnssRMC)))
  "Returns string type for a message object of type 'gnssRMC"
  "custom_msgs/gnssRMC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gnssRMC>)))
  "Returns md5sum for a message object of type '<gnssRMC>"
  "d77cc88e76909ff5bdee08258a0a92d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gnssRMC)))
  "Returns md5sum for a message object of type 'gnssRMC"
  "d77cc88e76909ff5bdee08258a0a92d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gnssRMC>)))
  "Returns full string definition for message of type '<gnssRMC>"
  (cl:format cl:nil "#Something something~%~%Header header~%~%float64 speed_mps~%float64 course~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gnssRMC)))
  "Returns full string definition for message of type 'gnssRMC"
  (cl:format cl:nil "#Something something~%~%Header header~%~%float64 speed_mps~%float64 course~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gnssRMC>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gnssRMC>))
  "Converts a ROS message object to a list"
  (cl:list 'gnssRMC
    (cl:cons ':header (header msg))
    (cl:cons ':speed_mps (speed_mps msg))
    (cl:cons ':course (course msg))
))

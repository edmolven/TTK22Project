; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude gnssHDT.msg.html

(cl:defclass <gnssHDT> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0))
)

(cl:defclass gnssHDT (<gnssHDT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gnssHDT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gnssHDT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<gnssHDT> is deprecated: use custom_msgs-msg:gnssHDT instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <gnssHDT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:header-val is deprecated.  Use custom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <gnssHDT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:heading-val is deprecated.  Use custom_msgs-msg:heading instead.")
  (heading m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gnssHDT>) ostream)
  "Serializes a message object of type '<gnssHDT>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gnssHDT>) istream)
  "Deserializes a message object of type '<gnssHDT>"
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
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gnssHDT>)))
  "Returns string type for a message object of type '<gnssHDT>"
  "custom_msgs/gnssHDT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gnssHDT)))
  "Returns string type for a message object of type 'gnssHDT"
  "custom_msgs/gnssHDT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gnssHDT>)))
  "Returns md5sum for a message object of type '<gnssHDT>"
  "99a6e32aaf44ebb75a8836a630ce410e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gnssHDT)))
  "Returns md5sum for a message object of type 'gnssHDT"
  "99a6e32aaf44ebb75a8836a630ce410e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gnssHDT>)))
  "Returns full string definition for message of type '<gnssHDT>"
  (cl:format cl:nil "#Something something~%~%Header header~%~%float64 heading~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gnssHDT)))
  "Returns full string definition for message of type 'gnssHDT"
  (cl:format cl:nil "#Something something~%~%Header header~%~%float64 heading~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gnssHDT>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gnssHDT>))
  "Converts a ROS message object to a list"
  (cl:list 'gnssHDT
    (cl:cons ':header (header msg))
    (cl:cons ':heading (heading msg))
))

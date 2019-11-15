; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude rawGPSdata.msg.html

(cl:defclass <rawGPSdata> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (NMEA
    :reader NMEA
    :initarg :NMEA
    :type cl:string
    :initform ""))
)

(cl:defclass rawGPSdata (<rawGPSdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rawGPSdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rawGPSdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<rawGPSdata> is deprecated: use custom_msgs-msg:rawGPSdata instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <rawGPSdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:header-val is deprecated.  Use custom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'NMEA-val :lambda-list '(m))
(cl:defmethod NMEA-val ((m <rawGPSdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:NMEA-val is deprecated.  Use custom_msgs-msg:NMEA instead.")
  (NMEA m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rawGPSdata>) ostream)
  "Serializes a message object of type '<rawGPSdata>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'NMEA))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'NMEA))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rawGPSdata>) istream)
  "Deserializes a message object of type '<rawGPSdata>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'NMEA) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'NMEA) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rawGPSdata>)))
  "Returns string type for a message object of type '<rawGPSdata>"
  "custom_msgs/rawGPSdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rawGPSdata)))
  "Returns string type for a message object of type 'rawGPSdata"
  "custom_msgs/rawGPSdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rawGPSdata>)))
  "Returns md5sum for a message object of type '<rawGPSdata>"
  "9b7b5e623e612f1bf238822a134f2656")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rawGPSdata)))
  "Returns md5sum for a message object of type 'rawGPSdata"
  "9b7b5e623e612f1bf238822a134f2656")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rawGPSdata>)))
  "Returns full string definition for message of type '<rawGPSdata>"
  (cl:format cl:nil "# Raw GPS data~%~%Header header~%string NMEA~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rawGPSdata)))
  "Returns full string definition for message of type 'rawGPSdata"
  (cl:format cl:nil "# Raw GPS data~%~%Header header~%string NMEA~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rawGPSdata>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'NMEA))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rawGPSdata>))
  "Converts a ROS message object to a list"
  (cl:list 'rawGPSdata
    (cl:cons ':header (header msg))
    (cl:cons ':NMEA (NMEA msg))
))

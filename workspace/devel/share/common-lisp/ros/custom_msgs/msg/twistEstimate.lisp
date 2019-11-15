; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude twistEstimate.msg.html

(cl:defclass <twistEstimate> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass twistEstimate (<twistEstimate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <twistEstimate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'twistEstimate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<twistEstimate> is deprecated: use custom_msgs-msg:twistEstimate instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <twistEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:header-val is deprecated.  Use custom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <twistEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:linear_velocity-val is deprecated.  Use custom_msgs-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <twistEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:angular_velocity-val is deprecated.  Use custom_msgs-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <twistEstimate>) ostream)
  "Serializes a message object of type '<twistEstimate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <twistEstimate>) istream)
  "Deserializes a message object of type '<twistEstimate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<twistEstimate>)))
  "Returns string type for a message object of type '<twistEstimate>"
  "custom_msgs/twistEstimate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'twistEstimate)))
  "Returns string type for a message object of type 'twistEstimate"
  "custom_msgs/twistEstimate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<twistEstimate>)))
  "Returns md5sum for a message object of type '<twistEstimate>"
  "8829cfa4873f2cb1ad996e102b17af14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'twistEstimate)))
  "Returns md5sum for a message object of type 'twistEstimate"
  "8829cfa4873f2cb1ad996e102b17af14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<twistEstimate>)))
  "Returns full string definition for message of type '<twistEstimate>"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Vector3  linear_velocity~%geometry_msgs/Vector3  angular_velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'twistEstimate)))
  "Returns full string definition for message of type 'twistEstimate"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Vector3  linear_velocity~%geometry_msgs/Vector3  angular_velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <twistEstimate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <twistEstimate>))
  "Converts a ROS message object to a list"
  (cl:list 'twistEstimate
    (cl:cons ':header (header msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))

; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude ekfBias.msg.html

(cl:defclass <ekfBias> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (linear_acceleration_bias
    :reader linear_acceleration_bias
    :initarg :linear_acceleration_bias
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity_bias
    :reader angular_velocity_bias
    :initarg :angular_velocity_bias
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass ekfBias (<ekfBias>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ekfBias>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ekfBias)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<ekfBias> is deprecated: use custom_msgs-msg:ekfBias instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ekfBias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:header-val is deprecated.  Use custom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'linear_acceleration_bias-val :lambda-list '(m))
(cl:defmethod linear_acceleration_bias-val ((m <ekfBias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:linear_acceleration_bias-val is deprecated.  Use custom_msgs-msg:linear_acceleration_bias instead.")
  (linear_acceleration_bias m))

(cl:ensure-generic-function 'angular_velocity_bias-val :lambda-list '(m))
(cl:defmethod angular_velocity_bias-val ((m <ekfBias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:angular_velocity_bias-val is deprecated.  Use custom_msgs-msg:angular_velocity_bias instead.")
  (angular_velocity_bias m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ekfBias>) ostream)
  "Serializes a message object of type '<ekfBias>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration_bias) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity_bias) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ekfBias>) istream)
  "Deserializes a message object of type '<ekfBias>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration_bias) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity_bias) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ekfBias>)))
  "Returns string type for a message object of type '<ekfBias>"
  "custom_msgs/ekfBias")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ekfBias)))
  "Returns string type for a message object of type 'ekfBias"
  "custom_msgs/ekfBias")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ekfBias>)))
  "Returns md5sum for a message object of type '<ekfBias>"
  "f28d98bc12c1d056a9ceb7daafeccf3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ekfBias)))
  "Returns md5sum for a message object of type 'ekfBias"
  "f28d98bc12c1d056a9ceb7daafeccf3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ekfBias>)))
  "Returns full string definition for message of type '<ekfBias>"
  (cl:format cl:nil "# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%~%Header header~%~%geometry_msgs/Vector3 linear_acceleration_bias~%geometry_msgs/Vector3 angular_velocity_bias~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ekfBias)))
  "Returns full string definition for message of type 'ekfBias"
  (cl:format cl:nil "# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%~%Header header~%~%geometry_msgs/Vector3 linear_acceleration_bias~%geometry_msgs/Vector3 angular_velocity_bias~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ekfBias>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration_bias))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity_bias))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ekfBias>))
  "Converts a ROS message object to a list"
  (cl:list 'ekfBias
    (cl:cons ':header (header msg))
    (cl:cons ':linear_acceleration_bias (linear_acceleration_bias msg))
    (cl:cons ':angular_velocity_bias (angular_velocity_bias msg))
))

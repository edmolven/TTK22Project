; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude ImuSensor.msg.html

(cl:defclass <ImuSensor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (orientation
    :reader orientation
    :initarg :orientation
    :type custom_msgs-msg:orientationEuler
    :initform (cl:make-instance 'custom_msgs-msg:orientationEuler))
   (dq
    :reader dq
    :initarg :dq
    :type custom_msgs-msg:XsensQuaternion
    :initform (cl:make-instance 'custom_msgs-msg:XsensQuaternion))
   (dv
    :reader dv
    :initarg :dv
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass ImuSensor (<ImuSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<ImuSensor> is deprecated: use custom_msgs-msg:ImuSensor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ImuSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:header-val is deprecated.  Use custom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <ImuSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:orientation-val is deprecated.  Use custom_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'dq-val :lambda-list '(m))
(cl:defmethod dq-val ((m <ImuSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:dq-val is deprecated.  Use custom_msgs-msg:dq instead.")
  (dq m))

(cl:ensure-generic-function 'dv-val :lambda-list '(m))
(cl:defmethod dv-val ((m <ImuSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:dv-val is deprecated.  Use custom_msgs-msg:dv instead.")
  (dv m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <ImuSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:angular_velocity-val is deprecated.  Use custom_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <ImuSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:linear_acceleration-val is deprecated.  Use custom_msgs-msg:linear_acceleration instead.")
  (linear_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuSensor>) ostream)
  "Serializes a message object of type '<ImuSensor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dq) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuSensor>) istream)
  "Deserializes a message object of type '<ImuSensor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dq) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuSensor>)))
  "Returns string type for a message object of type '<ImuSensor>"
  "custom_msgs/ImuSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuSensor)))
  "Returns string type for a message object of type 'ImuSensor"
  "custom_msgs/ImuSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuSensor>)))
  "Returns md5sum for a message object of type '<ImuSensor>"
  "479b13feb5a2ffdeb7421897e51b76c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuSensor)))
  "Returns md5sum for a message object of type 'ImuSensor"
  "479b13feb5a2ffdeb7421897e51b76c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuSensor>)))
  "Returns full string definition for message of type '<ImuSensor>"
  (cl:format cl:nil "# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%~%Header header~%~%orientationEuler orientation~%~%XsensQuaternion dq~%~%geometry_msgs/Vector3 dv~%~%~%~%geometry_msgs/Vector3 angular_velocity~%geometry_msgs/Vector3 linear_acceleration~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: custom_msgs/orientationEuler~%# This is a message to hold orientation data. No header~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%================================================================================~%MSG: custom_msgs/XsensQuaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 w~%float64 x~%float64 y~%float64 z~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuSensor)))
  "Returns full string definition for message of type 'ImuSensor"
  (cl:format cl:nil "# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%~%Header header~%~%orientationEuler orientation~%~%XsensQuaternion dq~%~%geometry_msgs/Vector3 dv~%~%~%~%geometry_msgs/Vector3 angular_velocity~%geometry_msgs/Vector3 linear_acceleration~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: custom_msgs/orientationEuler~%# This is a message to hold orientation data. No header~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%================================================================================~%MSG: custom_msgs/XsensQuaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 w~%float64 x~%float64 y~%float64 z~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuSensor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dq))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuSensor
    (cl:cons ':header (header msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':dq (dq msg))
    (cl:cons ':dv (dv msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
))

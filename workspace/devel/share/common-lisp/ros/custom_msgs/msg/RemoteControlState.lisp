; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude RemoteControlState.msg.html

(cl:defclass <RemoteControlState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_stick
    :reader left_stick
    :initarg :left_stick
    :type custom_msgs-msg:JoyAxis
    :initform (cl:make-instance 'custom_msgs-msg:JoyAxis))
   (right_stick
    :reader right_stick
    :initarg :right_stick
    :type custom_msgs-msg:JoyAxis
    :initform (cl:make-instance 'custom_msgs-msg:JoyAxis))
   (override_switch
    :reader override_switch
    :initarg :override_switch
    :type cl:fixnum
    :initform 0)
   (safe_mode
    :reader safe_mode
    :initarg :safe_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RemoteControlState (<RemoteControlState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteControlState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteControlState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<RemoteControlState> is deprecated: use custom_msgs-msg:RemoteControlState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RemoteControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:header-val is deprecated.  Use custom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_stick-val :lambda-list '(m))
(cl:defmethod left_stick-val ((m <RemoteControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:left_stick-val is deprecated.  Use custom_msgs-msg:left_stick instead.")
  (left_stick m))

(cl:ensure-generic-function 'right_stick-val :lambda-list '(m))
(cl:defmethod right_stick-val ((m <RemoteControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:right_stick-val is deprecated.  Use custom_msgs-msg:right_stick instead.")
  (right_stick m))

(cl:ensure-generic-function 'override_switch-val :lambda-list '(m))
(cl:defmethod override_switch-val ((m <RemoteControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:override_switch-val is deprecated.  Use custom_msgs-msg:override_switch instead.")
  (override_switch m))

(cl:ensure-generic-function 'safe_mode-val :lambda-list '(m))
(cl:defmethod safe_mode-val ((m <RemoteControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:safe_mode-val is deprecated.  Use custom_msgs-msg:safe_mode instead.")
  (safe_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteControlState>) ostream)
  "Serializes a message object of type '<RemoteControlState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_stick) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_stick) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'override_switch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'safe_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteControlState>) istream)
  "Deserializes a message object of type '<RemoteControlState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_stick) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_stick) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'override_switch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'safe_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteControlState>)))
  "Returns string type for a message object of type '<RemoteControlState>"
  "custom_msgs/RemoteControlState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteControlState)))
  "Returns string type for a message object of type 'RemoteControlState"
  "custom_msgs/RemoteControlState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteControlState>)))
  "Returns md5sum for a message object of type '<RemoteControlState>"
  "ceda10c7b37590a99e768bcaea5d1257")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteControlState)))
  "Returns md5sum for a message object of type 'RemoteControlState"
  "ceda10c7b37590a99e768bcaea5d1257")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteControlState>)))
  "Returns full string definition for message of type '<RemoteControlState>"
  (cl:format cl:nil "# Custom message to hold the state of the joystick at a given time~%# Left stick contains the axis values of the left stick, as a JoyAxis custom message~%# Right stick contains the axis values of the right stick, as a JoyAxis custom message~%# override_switch holds the position of the override switch, which can be 0, 1 or 2~%~%Header header~%~%custom_msgs/JoyAxis left_stick~%custom_msgs/JoyAxis right_stick~%uint8 override_switch~%uint8 safe_mode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: custom_msgs/JoyAxis~%# Custom message to hold the value of the axes of a joystick~%~%int16 x_axis~%int16 y_axis~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteControlState)))
  "Returns full string definition for message of type 'RemoteControlState"
  (cl:format cl:nil "# Custom message to hold the state of the joystick at a given time~%# Left stick contains the axis values of the left stick, as a JoyAxis custom message~%# Right stick contains the axis values of the right stick, as a JoyAxis custom message~%# override_switch holds the position of the override switch, which can be 0, 1 or 2~%~%Header header~%~%custom_msgs/JoyAxis left_stick~%custom_msgs/JoyAxis right_stick~%uint8 override_switch~%uint8 safe_mode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: custom_msgs/JoyAxis~%# Custom message to hold the value of the axes of a joystick~%~%int16 x_axis~%int16 y_axis~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteControlState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_stick))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_stick))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteControlState>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteControlState
    (cl:cons ':header (header msg))
    (cl:cons ':left_stick (left_stick msg))
    (cl:cons ':right_stick (right_stick msg))
    (cl:cons ':override_switch (override_switch msg))
    (cl:cons ':safe_mode (safe_mode msg))
))

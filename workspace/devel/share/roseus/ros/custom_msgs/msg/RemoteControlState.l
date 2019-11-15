;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::RemoteControlState)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'RemoteControlState (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::REMOTECONTROLSTATE")
  (make-package "CUSTOM_MSGS::REMOTECONTROLSTATE"))

(in-package "ROS")
;;//! \htmlinclude RemoteControlState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::RemoteControlState
  :super ros::object
  :slots (_header _left_stick _right_stick _override_switch _safe_mode ))

(defmethod custom_msgs::RemoteControlState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_stick __left_stick) (instance custom_msgs::JoyAxis :init))
    ((:right_stick __right_stick) (instance custom_msgs::JoyAxis :init))
    ((:override_switch __override_switch) 0)
    ((:safe_mode __safe_mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_stick __left_stick)
   (setq _right_stick __right_stick)
   (setq _override_switch (round __override_switch))
   (setq _safe_mode (round __safe_mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_stick
   (&rest __left_stick)
   (if (keywordp (car __left_stick))
       (send* _left_stick __left_stick)
     (progn
       (if __left_stick (setq _left_stick (car __left_stick)))
       _left_stick)))
  (:right_stick
   (&rest __right_stick)
   (if (keywordp (car __right_stick))
       (send* _right_stick __right_stick)
     (progn
       (if __right_stick (setq _right_stick (car __right_stick)))
       _right_stick)))
  (:override_switch
   (&optional __override_switch)
   (if __override_switch (setq _override_switch __override_switch)) _override_switch)
  (:safe_mode
   (&optional __safe_mode)
   (if __safe_mode (setq _safe_mode __safe_mode)) _safe_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; custom_msgs/JoyAxis _left_stick
    (send _left_stick :serialization-length)
    ;; custom_msgs/JoyAxis _right_stick
    (send _right_stick :serialization-length)
    ;; uint8 _override_switch
    1
    ;; uint8 _safe_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; custom_msgs/JoyAxis _left_stick
       (send _left_stick :serialize s)
     ;; custom_msgs/JoyAxis _right_stick
       (send _right_stick :serialize s)
     ;; uint8 _override_switch
       (write-byte _override_switch s)
     ;; uint8 _safe_mode
       (write-byte _safe_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; custom_msgs/JoyAxis _left_stick
     (send _left_stick :deserialize buf ptr-) (incf ptr- (send _left_stick :serialization-length))
   ;; custom_msgs/JoyAxis _right_stick
     (send _right_stick :deserialize buf ptr-) (incf ptr- (send _right_stick :serialization-length))
   ;; uint8 _override_switch
     (setq _override_switch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _safe_mode
     (setq _safe_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custom_msgs::RemoteControlState :md5sum-) "ceda10c7b37590a99e768bcaea5d1257")
(setf (get custom_msgs::RemoteControlState :datatype-) "custom_msgs/RemoteControlState")
(setf (get custom_msgs::RemoteControlState :definition-)
      "# Custom message to hold the state of the joystick at a given time
# Left stick contains the axis values of the left stick, as a JoyAxis custom message
# Right stick contains the axis values of the right stick, as a JoyAxis custom message
# override_switch holds the position of the override switch, which can be 0, 1 or 2

Header header

custom_msgs/JoyAxis left_stick
custom_msgs/JoyAxis right_stick
uint8 override_switch
uint8 safe_mode
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: custom_msgs/JoyAxis
# Custom message to hold the value of the axes of a joystick

int16 x_axis
int16 y_axis
")



(provide :custom_msgs/RemoteControlState "ceda10c7b37590a99e768bcaea5d1257")



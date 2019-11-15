;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ekfBias)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ekfBias (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::EKFBIAS")
  (make-package "CUSTOM_MSGS::EKFBIAS"))

(in-package "ROS")
;;//! \htmlinclude ekfBias.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::ekfBias
  :super ros::object
  :slots (_header _linear_acceleration_bias _angular_velocity_bias ))

(defmethod custom_msgs::ekfBias
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:linear_acceleration_bias __linear_acceleration_bias) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity_bias __angular_velocity_bias) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _linear_acceleration_bias __linear_acceleration_bias)
   (setq _angular_velocity_bias __angular_velocity_bias)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:linear_acceleration_bias
   (&rest __linear_acceleration_bias)
   (if (keywordp (car __linear_acceleration_bias))
       (send* _linear_acceleration_bias __linear_acceleration_bias)
     (progn
       (if __linear_acceleration_bias (setq _linear_acceleration_bias (car __linear_acceleration_bias)))
       _linear_acceleration_bias)))
  (:angular_velocity_bias
   (&rest __angular_velocity_bias)
   (if (keywordp (car __angular_velocity_bias))
       (send* _angular_velocity_bias __angular_velocity_bias)
     (progn
       (if __angular_velocity_bias (setq _angular_velocity_bias (car __angular_velocity_bias)))
       _angular_velocity_bias)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration_bias
    (send _linear_acceleration_bias :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity_bias
    (send _angular_velocity_bias :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration_bias
       (send _linear_acceleration_bias :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity_bias
       (send _angular_velocity_bias :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration_bias
     (send _linear_acceleration_bias :deserialize buf ptr-) (incf ptr- (send _linear_acceleration_bias :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity_bias
     (send _angular_velocity_bias :deserialize buf ptr-) (incf ptr- (send _angular_velocity_bias :serialization-length))
   ;;
   self)
  )

(setf (get custom_msgs::ekfBias :md5sum-) "f28d98bc12c1d056a9ceb7daafeccf3b")
(setf (get custom_msgs::ekfBias :datatype-) "custom_msgs/ekfBias")
(setf (get custom_msgs::ekfBias :definition-)
      "# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec

Header header

geometry_msgs/Vector3 linear_acceleration_bias
geometry_msgs/Vector3 angular_velocity_bias





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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :custom_msgs/ekfBias "f28d98bc12c1d056a9ceb7daafeccf3b")



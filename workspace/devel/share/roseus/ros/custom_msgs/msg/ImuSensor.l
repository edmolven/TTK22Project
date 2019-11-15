;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ImuSensor)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ImuSensor (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::IMUSENSOR")
  (make-package "CUSTOM_MSGS::IMUSENSOR"))

(in-package "ROS")
;;//! \htmlinclude ImuSensor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::ImuSensor
  :super ros::object
  :slots (_header _orientation _dq _dv _angular_velocity _linear_acceleration ))

(defmethod custom_msgs::ImuSensor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:orientation __orientation) (instance custom_msgs::orientationEuler :init))
    ((:dq __dq) (instance custom_msgs::XsensQuaternion :init))
    ((:dv __dv) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _orientation __orientation)
   (setq _dq __dq)
   (setq _dv __dv)
   (setq _angular_velocity __angular_velocity)
   (setq _linear_acceleration __linear_acceleration)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:dq
   (&rest __dq)
   (if (keywordp (car __dq))
       (send* _dq __dq)
     (progn
       (if __dq (setq _dq (car __dq)))
       _dq)))
  (:dv
   (&rest __dv)
   (if (keywordp (car __dv))
       (send* _dv __dv)
     (progn
       (if __dv (setq _dv (car __dv)))
       _dv)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; custom_msgs/orientationEuler _orientation
    (send _orientation :serialization-length)
    ;; custom_msgs/XsensQuaternion _dq
    (send _dq :serialization-length)
    ;; geometry_msgs/Vector3 _dv
    (send _dv :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; custom_msgs/orientationEuler _orientation
       (send _orientation :serialize s)
     ;; custom_msgs/XsensQuaternion _dq
       (send _dq :serialize s)
     ;; geometry_msgs/Vector3 _dv
       (send _dv :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; custom_msgs/orientationEuler _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; custom_msgs/XsensQuaternion _dq
     (send _dq :deserialize buf ptr-) (incf ptr- (send _dq :serialization-length))
   ;; geometry_msgs/Vector3 _dv
     (send _dv :deserialize buf ptr-) (incf ptr- (send _dv :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;;
   self)
  )

(setf (get custom_msgs::ImuSensor :md5sum-) "479b13feb5a2ffdeb7421897e51b76c2")
(setf (get custom_msgs::ImuSensor :datatype-) "custom_msgs/ImuSensor")
(setf (get custom_msgs::ImuSensor :definition-)
      "# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec

Header header

orientationEuler orientation

XsensQuaternion dq

geometry_msgs/Vector3 dv



geometry_msgs/Vector3 angular_velocity
geometry_msgs/Vector3 linear_acceleration




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
MSG: custom_msgs/orientationEuler
# This is a message to hold orientation data. No header

float64 roll
float64 pitch
float64 yaw


================================================================================
MSG: custom_msgs/XsensQuaternion
# This represents an orientation in free space in quaternion form.

float64 w
float64 x
float64 y
float64 z


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



(provide :custom_msgs/ImuSensor "479b13feb5a2ffdeb7421897e51b76c2")



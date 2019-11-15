;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::NED)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'NED (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::NED")
  (make-package "CUSTOM_MSGS::NED"))

(in-package "ROS")
;;//! \htmlinclude NED.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::NED
  :super ros::object
  :slots (_header _north _east _down ))

(defmethod custom_msgs::NED
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:north __north) 0.0)
    ((:east __east) 0.0)
    ((:down __down) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _north (float __north))
   (setq _east (float __east))
   (setq _down (float __down))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:north
   (&optional __north)
   (if __north (setq _north __north)) _north)
  (:east
   (&optional __east)
   (if __east (setq _east __east)) _east)
  (:down
   (&optional __down)
   (if __down (setq _down __down)) _down)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _north
    8
    ;; float64 _east
    8
    ;; float64 _down
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _north
       (sys::poke _north (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east
       (sys::poke _east (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _down
       (sys::poke _down (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _north
     (setq _north (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east
     (setq _east (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _down
     (setq _down (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::NED :md5sum-) "5e3ad809ef3fb9cb0a4d745208c0eb90")
(setf (get custom_msgs::NED :datatype-) "custom_msgs/NED")
(setf (get custom_msgs::NED :definition-)
      "# this is a message to send NED data

Header header

float64 north
float64 east
float64 down


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

")



(provide :custom_msgs/NED "5e3ad809ef3fb9cb0a4d745208c0eb90")



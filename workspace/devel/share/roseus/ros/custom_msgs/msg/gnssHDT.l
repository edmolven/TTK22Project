;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::gnssHDT)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'gnssHDT (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::GNSSHDT")
  (make-package "CUSTOM_MSGS::GNSSHDT"))

(in-package "ROS")
;;//! \htmlinclude gnssHDT.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::gnssHDT
  :super ros::object
  :slots (_header _heading ))

(defmethod custom_msgs::gnssHDT
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _heading (float __heading))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _heading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::gnssHDT :md5sum-) "99a6e32aaf44ebb75a8836a630ce410e")
(setf (get custom_msgs::gnssHDT :datatype-) "custom_msgs/gnssHDT")
(setf (get custom_msgs::gnssHDT :definition-)
      "#Something something

Header header

float64 heading


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



(provide :custom_msgs/gnssHDT "99a6e32aaf44ebb75a8836a630ce410e")



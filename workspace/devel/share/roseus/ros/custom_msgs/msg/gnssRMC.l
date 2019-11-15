;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::gnssRMC)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'gnssRMC (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::GNSSRMC")
  (make-package "CUSTOM_MSGS::GNSSRMC"))

(in-package "ROS")
;;//! \htmlinclude gnssRMC.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::gnssRMC
  :super ros::object
  :slots (_header _speed_mps _course ))

(defmethod custom_msgs::gnssRMC
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:speed_mps __speed_mps) 0.0)
    ((:course __course) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _speed_mps (float __speed_mps))
   (setq _course (float __course))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:speed_mps
   (&optional __speed_mps)
   (if __speed_mps (setq _speed_mps __speed_mps)) _speed_mps)
  (:course
   (&optional __course)
   (if __course (setq _course __course)) _course)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _speed_mps
    8
    ;; float64 _course
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _speed_mps
       (sys::poke _speed_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _course
       (sys::poke _course (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _speed_mps
     (setq _speed_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _course
     (setq _course (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::gnssRMC :md5sum-) "d77cc88e76909ff5bdee08258a0a92d5")
(setf (get custom_msgs::gnssRMC :datatype-) "custom_msgs/gnssRMC")
(setf (get custom_msgs::gnssRMC :definition-)
      "#Something something

Header header

float64 speed_mps
float64 course


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



(provide :custom_msgs/gnssRMC "d77cc88e76909ff5bdee08258a0a92d5")



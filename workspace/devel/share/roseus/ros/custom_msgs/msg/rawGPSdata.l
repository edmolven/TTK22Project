;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::rawGPSdata)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'rawGPSdata (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::RAWGPSDATA")
  (make-package "CUSTOM_MSGS::RAWGPSDATA"))

(in-package "ROS")
;;//! \htmlinclude rawGPSdata.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::rawGPSdata
  :super ros::object
  :slots (_header _NMEA ))

(defmethod custom_msgs::rawGPSdata
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:NMEA __NMEA) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _NMEA (string __NMEA))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:NMEA
   (&optional __NMEA)
   (if __NMEA (setq _NMEA __NMEA)) _NMEA)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _NMEA
    4 (length _NMEA)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _NMEA
       (write-long (length _NMEA) s) (princ _NMEA s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _NMEA
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _NMEA (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get custom_msgs::rawGPSdata :md5sum-) "9b7b5e623e612f1bf238822a134f2656")
(setf (get custom_msgs::rawGPSdata :datatype-) "custom_msgs/rawGPSdata")
(setf (get custom_msgs::rawGPSdata :definition-)
      "# Raw GPS data

Header header
string NMEA

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



(provide :custom_msgs/rawGPSdata "9b7b5e623e612f1bf238822a134f2656")



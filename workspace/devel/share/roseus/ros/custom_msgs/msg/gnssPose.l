;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::gnssPose)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'gnssPose (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::GNSSPOSE")
  (make-package "CUSTOM_MSGS::GNSSPOSE"))

(in-package "ROS")
;;//! \htmlinclude gnssPose.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_msgs::gnssPose
  :super ros::object
  :slots (_header _sat_time _latitude _lat_direction _longitude _lon_direction _heading _heading_true _speed_kmph _mode_indicator _nav_status ))

(defmethod custom_msgs::gnssPose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sat_time __sat_time) "")
    ((:latitude __latitude) 0.0)
    ((:lat_direction __lat_direction) "")
    ((:longitude __longitude) 0.0)
    ((:lon_direction __lon_direction) "")
    ((:heading __heading) 0.0)
    ((:heading_true __heading_true) "")
    ((:speed_kmph __speed_kmph) 0.0)
    ((:mode_indicator __mode_indicator) "")
    ((:nav_status __nav_status) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _sat_time (string __sat_time))
   (setq _latitude (float __latitude))
   (setq _lat_direction (string __lat_direction))
   (setq _longitude (float __longitude))
   (setq _lon_direction (string __lon_direction))
   (setq _heading (float __heading))
   (setq _heading_true (string __heading_true))
   (setq _speed_kmph (float __speed_kmph))
   (setq _mode_indicator (string __mode_indicator))
   (setq _nav_status (string __nav_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sat_time
   (&optional __sat_time)
   (if __sat_time (setq _sat_time __sat_time)) _sat_time)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:lat_direction
   (&optional __lat_direction)
   (if __lat_direction (setq _lat_direction __lat_direction)) _lat_direction)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:lon_direction
   (&optional __lon_direction)
   (if __lon_direction (setq _lon_direction __lon_direction)) _lon_direction)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:heading_true
   (&optional __heading_true)
   (if __heading_true (setq _heading_true __heading_true)) _heading_true)
  (:speed_kmph
   (&optional __speed_kmph)
   (if __speed_kmph (setq _speed_kmph __speed_kmph)) _speed_kmph)
  (:mode_indicator
   (&optional __mode_indicator)
   (if __mode_indicator (setq _mode_indicator __mode_indicator)) _mode_indicator)
  (:nav_status
   (&optional __nav_status)
   (if __nav_status (setq _nav_status __nav_status)) _nav_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _sat_time
    4 (length _sat_time)
    ;; float64 _latitude
    8
    ;; string _lat_direction
    4 (length _lat_direction)
    ;; float64 _longitude
    8
    ;; string _lon_direction
    4 (length _lon_direction)
    ;; float64 _heading
    8
    ;; string _heading_true
    4 (length _heading_true)
    ;; float64 _speed_kmph
    8
    ;; string _mode_indicator
    4 (length _mode_indicator)
    ;; string _nav_status
    4 (length _nav_status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _sat_time
       (write-long (length _sat_time) s) (princ _sat_time s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _lat_direction
       (write-long (length _lat_direction) s) (princ _lat_direction s)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _lon_direction
       (write-long (length _lon_direction) s) (princ _lon_direction s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _heading_true
       (write-long (length _heading_true) s) (princ _heading_true s)
     ;; float64 _speed_kmph
       (sys::poke _speed_kmph (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _mode_indicator
       (write-long (length _mode_indicator) s) (princ _mode_indicator s)
     ;; string _nav_status
       (write-long (length _nav_status) s) (princ _nav_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _sat_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sat_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _lat_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lat_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _lon_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lon_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _heading_true
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _heading_true (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _speed_kmph
     (setq _speed_kmph (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _mode_indicator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode_indicator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _nav_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nav_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get custom_msgs::gnssPose :md5sum-) "801b92985560b82617eabd3df27449e3")
(setf (get custom_msgs::gnssPose :datatype-) "custom_msgs/gnssPose")
(setf (get custom_msgs::gnssPose :definition-)
      "#Something something
#something something

Header header

string sat_time
float64 latitude
string lat_direction
float64 longitude
string lon_direction

float64 heading
string heading_true

float64 speed_kmph

string mode_indicator
string nav_status

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



(provide :custom_msgs/gnssPose "801b92985560b82617eabd3df27449e3")



;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::orientationEuler)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'orientationEuler (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::ORIENTATIONEULER")
  (make-package "CUSTOM_MSGS::ORIENTATIONEULER"))

(in-package "ROS")
;;//! \htmlinclude orientationEuler.msg.html


(defclass custom_msgs::orientationEuler
  :super ros::object
  :slots (_roll _pitch _yaw ))

(defmethod custom_msgs::orientationEuler
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::orientationEuler :md5sum-) "eeec8b25a660789a89540dedcb2b06d6")
(setf (get custom_msgs::orientationEuler :datatype-) "custom_msgs/orientationEuler")
(setf (get custom_msgs::orientationEuler :definition-)
      "# This is a message to hold orientation data. No header

float64 roll
float64 pitch
float64 yaw


")



(provide :custom_msgs/orientationEuler "eeec8b25a660789a89540dedcb2b06d6")



;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::podAngle)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'podAngle (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::PODANGLE")
  (make-package "CUSTOM_MSGS::PODANGLE"))

(in-package "ROS")
;;//! \htmlinclude podAngle.msg.html


(defclass custom_msgs::podAngle
  :super ros::object
  :slots (_port _star ))

(defmethod custom_msgs::podAngle
  (:init
   (&key
    ((:port __port) 0.0)
    ((:star __star) 0.0)
    )
   (send-super :init)
   (setq _port (float __port))
   (setq _star (float __star))
   self)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:star
   (&optional __star)
   (if __star (setq _star __star)) _star)
  (:serialization-length
   ()
   (+
    ;; float64 _port
    8
    ;; float64 _star
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _port
       (sys::poke _port (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _star
       (sys::poke _star (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _port
     (setq _port (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _star
     (setq _star (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::podAngle :md5sum-) "008d1aaf11032e16c8f046f110392eb1")
(setf (get custom_msgs::podAngle :datatype-) "custom_msgs/podAngle")
(setf (get custom_msgs::podAngle :definition-)
      "float64 port
float64 star

")



(provide :custom_msgs/podAngle "008d1aaf11032e16c8f046f110392eb1")



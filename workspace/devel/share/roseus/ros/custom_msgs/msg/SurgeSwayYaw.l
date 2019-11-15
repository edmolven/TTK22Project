;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::SurgeSwayYaw)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'SurgeSwayYaw (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::SURGESWAYYAW")
  (make-package "CUSTOM_MSGS::SURGESWAYYAW"))

(in-package "ROS")
;;//! \htmlinclude SurgeSwayYaw.msg.html


(defclass custom_msgs::SurgeSwayYaw
  :super ros::object
  :slots (_surge _sway _yaw ))

(defmethod custom_msgs::SurgeSwayYaw
  (:init
   (&key
    ((:surge __surge) 0.0)
    ((:sway __sway) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _surge (float __surge))
   (setq _sway (float __sway))
   (setq _yaw (float __yaw))
   self)
  (:surge
   (&optional __surge)
   (if __surge (setq _surge __surge)) _surge)
  (:sway
   (&optional __sway)
   (if __sway (setq _sway __sway)) _sway)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _surge
    8
    ;; float64 _sway
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _surge
       (sys::poke _surge (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sway
       (sys::poke _sway (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _surge
     (setq _surge (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sway
     (setq _sway (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::SurgeSwayYaw :md5sum-) "d86ccd8ad254d064df2af607e63b6ac0")
(setf (get custom_msgs::SurgeSwayYaw :datatype-) "custom_msgs/SurgeSwayYaw")
(setf (get custom_msgs::SurgeSwayYaw :definition-)
      "float64 surge
float64 sway
float64 yaw

")



(provide :custom_msgs/SurgeSwayYaw "d86ccd8ad254d064df2af607e63b6ac0")



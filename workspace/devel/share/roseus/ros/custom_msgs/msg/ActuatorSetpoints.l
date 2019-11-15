;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ActuatorSetpoints)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ActuatorSetpoints (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::ACTUATORSETPOINTS")
  (make-package "CUSTOM_MSGS::ACTUATORSETPOINTS"))

(in-package "ROS")
;;//! \htmlinclude ActuatorSetpoints.msg.html


(defclass custom_msgs::ActuatorSetpoints
  :super ros::object
  :slots (_throttle_reference _angle_reference ))

(defmethod custom_msgs::ActuatorSetpoints
  (:init
   (&key
    ((:throttle_reference __throttle_reference) 0)
    ((:angle_reference __angle_reference) 0)
    )
   (send-super :init)
   (setq _throttle_reference (round __throttle_reference))
   (setq _angle_reference (round __angle_reference))
   self)
  (:throttle_reference
   (&optional __throttle_reference)
   (if __throttle_reference (setq _throttle_reference __throttle_reference)) _throttle_reference)
  (:angle_reference
   (&optional __angle_reference)
   (if __angle_reference (setq _angle_reference __angle_reference)) _angle_reference)
  (:serialization-length
   ()
   (+
    ;; int16 _throttle_reference
    2
    ;; int16 _angle_reference
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _throttle_reference
       (write-word _throttle_reference s)
     ;; int16 _angle_reference
       (write-word _angle_reference s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _throttle_reference
     (setq _throttle_reference (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _angle_reference
     (setq _angle_reference (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get custom_msgs::ActuatorSetpoints :md5sum-) "2d64702992bfea9b6443fa0b9864979b")
(setf (get custom_msgs::ActuatorSetpoints :datatype-) "custom_msgs/ActuatorSetpoints")
(setf (get custom_msgs::ActuatorSetpoints :definition-)
      "# Custom message for holding the actuator setpoints
# from thust allocation

int16 throttle_reference
int16 angle_reference
")



(provide :custom_msgs/ActuatorSetpoints "2d64702992bfea9b6443fa0b9864979b")



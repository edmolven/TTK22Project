;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::threeFloats)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'threeFloats (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::THREEFLOATS")
  (make-package "CUSTOM_MSGS::THREEFLOATS"))

(in-package "ROS")
;;//! \htmlinclude threeFloats.msg.html


(defclass custom_msgs::threeFloats
  :super ros::object
  :slots (_setpoint _state _error ))

(defmethod custom_msgs::threeFloats
  (:init
   (&key
    ((:setpoint __setpoint) 0.0)
    ((:state __state) 0.0)
    ((:error __error) 0.0)
    )
   (send-super :init)
   (setq _setpoint (float __setpoint))
   (setq _state (float __state))
   (setq _error (float __error))
   self)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; float64 _setpoint
    8
    ;; float64 _state
    8
    ;; float64 _error
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _setpoint
       (sys::poke _setpoint (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _state
       (sys::poke _state (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _setpoint
     (setq _setpoint (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _state
     (setq _state (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::threeFloats :md5sum-) "fac86045139c18e59f100246b2854728")
(setf (get custom_msgs::threeFloats :datatype-) "custom_msgs/threeFloats")
(setf (get custom_msgs::threeFloats :definition-)
      "float64 setpoint
float64 state
float64 error

")



(provide :custom_msgs/threeFloats "fac86045139c18e59f100246b2854728")



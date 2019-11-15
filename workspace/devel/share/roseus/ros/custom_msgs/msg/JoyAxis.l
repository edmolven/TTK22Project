;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::JoyAxis)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'JoyAxis (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::JOYAXIS")
  (make-package "CUSTOM_MSGS::JOYAXIS"))

(in-package "ROS")
;;//! \htmlinclude JoyAxis.msg.html


(defclass custom_msgs::JoyAxis
  :super ros::object
  :slots (_x_axis _y_axis ))

(defmethod custom_msgs::JoyAxis
  (:init
   (&key
    ((:x_axis __x_axis) 0)
    ((:y_axis __y_axis) 0)
    )
   (send-super :init)
   (setq _x_axis (round __x_axis))
   (setq _y_axis (round __y_axis))
   self)
  (:x_axis
   (&optional __x_axis)
   (if __x_axis (setq _x_axis __x_axis)) _x_axis)
  (:y_axis
   (&optional __y_axis)
   (if __y_axis (setq _y_axis __y_axis)) _y_axis)
  (:serialization-length
   ()
   (+
    ;; int16 _x_axis
    2
    ;; int16 _y_axis
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x_axis
       (write-word _x_axis s)
     ;; int16 _y_axis
       (write-word _y_axis s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x_axis
     (setq _x_axis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y_axis
     (setq _y_axis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get custom_msgs::JoyAxis :md5sum-) "d8729562965cf2371e2fd83295ee15ec")
(setf (get custom_msgs::JoyAxis :datatype-) "custom_msgs/JoyAxis")
(setf (get custom_msgs::JoyAxis :definition-)
      "# Custom message to hold the value of the axes of a joystick

int16 x_axis
int16 y_axis
")



(provide :custom_msgs/JoyAxis "d8729562965cf2371e2fd83295ee15ec")



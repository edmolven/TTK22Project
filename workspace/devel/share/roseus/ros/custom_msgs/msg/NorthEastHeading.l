;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::NorthEastHeading)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'NorthEastHeading (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::NORTHEASTHEADING")
  (make-package "CUSTOM_MSGS::NORTHEASTHEADING"))

(in-package "ROS")
;;//! \htmlinclude NorthEastHeading.msg.html


(defclass custom_msgs::NorthEastHeading
  :super ros::object
  :slots (_north _east _heading ))

(defmethod custom_msgs::NorthEastHeading
  (:init
   (&key
    ((:north __north) 0.0)
    ((:east __east) 0.0)
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _north (float __north))
   (setq _east (float __east))
   (setq _heading (float __heading))
   self)
  (:north
   (&optional __north)
   (if __north (setq _north __north)) _north)
  (:east
   (&optional __east)
   (if __east (setq _east __east)) _east)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; float64 _north
    8
    ;; float64 _east
    8
    ;; float64 _heading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _north
       (sys::poke _north (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east
       (sys::poke _east (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _north
     (setq _north (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east
     (setq _east (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::NorthEastHeading :md5sum-) "f8c4d8d295356fc4c7989ce2c0e1b148")
(setf (get custom_msgs::NorthEastHeading :datatype-) "custom_msgs/NorthEastHeading")
(setf (get custom_msgs::NorthEastHeading :definition-)
      "float64 north
float64 east
float64 heading


")



(provide :custom_msgs/NorthEastHeading "f8c4d8d295356fc4c7989ce2c0e1b148")



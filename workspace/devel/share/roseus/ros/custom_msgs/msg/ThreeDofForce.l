;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::ThreeDofForce)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'ThreeDofForce (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::THREEDOFFORCE")
  (make-package "CUSTOM_MSGS::THREEDOFFORCE"))

(in-package "ROS")
;;//! \htmlinclude ThreeDofForce.msg.html


(defclass custom_msgs::ThreeDofForce
  :super ros::object
  :slots (_X _Y _N ))

(defmethod custom_msgs::ThreeDofForce
  (:init
   (&key
    ((:X __X) 0.0)
    ((:Y __Y) 0.0)
    ((:N __N) 0.0)
    )
   (send-super :init)
   (setq _X (float __X))
   (setq _Y (float __Y))
   (setq _N (float __N))
   self)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
  (:N
   (&optional __N)
   (if __N (setq _N __N)) _N)
  (:serialization-length
   ()
   (+
    ;; float64 _X
    8
    ;; float64 _Y
    8
    ;; float64 _N
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _X
       (sys::poke _X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Y
       (sys::poke _Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _N
       (sys::poke _N (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _X
     (setq _X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Y
     (setq _Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _N
     (setq _N (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::ThreeDofForce :md5sum-) "5d59525997a21f5b026ea2746ebcfb38")
(setf (get custom_msgs::ThreeDofForce :datatype-) "custom_msgs/ThreeDofForce")
(setf (get custom_msgs::ThreeDofForce :definition-)
      "float64 X
float64 Y
float64 N

")



(provide :custom_msgs/ThreeDofForce "5d59525997a21f5b026ea2746ebcfb38")



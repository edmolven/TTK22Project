;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::HalfspaceDescription)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'HalfspaceDescription (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::HALFSPACEDESCRIPTION")
  (make-package "CUSTOM_MSGS::HALFSPACEDESCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude HalfspaceDescription.msg.html


(defclass custom_msgs::HalfspaceDescription
  :super ros::object
  :slots (_A _b ))

(defmethod custom_msgs::HalfspaceDescription
  (:init
   (&key
    ((:A __A) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:b __b) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _A __A)
   (setq _b __b)
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; float64[] _A
    (* 8    (length _A)) 4
    ;; float64[] _b
    (* 8    (length _b)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _A
     (write-long (length _A) s)
     (dotimes (i (length _A))
       (sys::poke (elt _A i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _b
     (write-long (length _b) s)
     (dotimes (i (length _b))
       (sys::poke (elt _b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _A
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _A (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _A i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get custom_msgs::HalfspaceDescription :md5sum-) "77bfbd60980c2f9a2cd09f881bcff234")
(setf (get custom_msgs::HalfspaceDescription :datatype-) "custom_msgs/HalfspaceDescription")
(setf (get custom_msgs::HalfspaceDescription :definition-)
      "# Describes halfspace s.t. Ax <= b is within the halfspace.
float64[] A
float64[] b
")



(provide :custom_msgs/HalfspaceDescription "77bfbd60980c2f9a2cd09f881bcff234")



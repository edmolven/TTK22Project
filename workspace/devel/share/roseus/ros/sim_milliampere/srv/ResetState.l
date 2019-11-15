;; Auto-generated. Do not edit!


(when (boundp 'sim_milliampere::ResetState)
  (if (not (find-package "SIM_MILLIAMPERE"))
    (make-package "SIM_MILLIAMPERE"))
  (shadow 'ResetState (find-package "SIM_MILLIAMPERE")))
(unless (find-package "SIM_MILLIAMPERE::RESETSTATE")
  (make-package "SIM_MILLIAMPERE::RESETSTATE"))
(unless (find-package "SIM_MILLIAMPERE::RESETSTATEREQUEST")
  (make-package "SIM_MILLIAMPERE::RESETSTATEREQUEST"))
(unless (find-package "SIM_MILLIAMPERE::RESETSTATERESPONSE")
  (make-package "SIM_MILLIAMPERE::RESETSTATERESPONSE"))

(in-package "ROS")





(defclass sim_milliampere::ResetStateRequest
  :super ros::object
  :slots (_state ))

(defmethod sim_milliampere::ResetStateRequest
  (:init
   (&key
    ((:state __state) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; float64[] _state
    (* 8    (length _state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (sys::poke (elt _state i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass sim_milliampere::ResetStateResponse
  :super ros::object
  :slots (_success ))

(defmethod sim_milliampere::ResetStateResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sim_milliampere::ResetState
  :super ros::object
  :slots ())

(setf (get sim_milliampere::ResetState :md5sum-) "90925f44bd5df209aa74ed335d36993e")
(setf (get sim_milliampere::ResetState :datatype-) "sim_milliampere/ResetState")
(setf (get sim_milliampere::ResetState :request) sim_milliampere::ResetStateRequest)
(setf (get sim_milliampere::ResetState :response) sim_milliampere::ResetStateResponse)

(defmethod sim_milliampere::ResetStateRequest
  (:response () (instance sim_milliampere::ResetStateResponse :init)))

(setf (get sim_milliampere::ResetStateRequest :md5sum-) "90925f44bd5df209aa74ed335d36993e")
(setf (get sim_milliampere::ResetStateRequest :datatype-) "sim_milliampere/ResetStateRequest")
(setf (get sim_milliampere::ResetStateRequest :definition-)
      "float64[] state
---
bool success

")

(setf (get sim_milliampere::ResetStateResponse :md5sum-) "90925f44bd5df209aa74ed335d36993e")
(setf (get sim_milliampere::ResetStateResponse :datatype-) "sim_milliampere/ResetStateResponse")
(setf (get sim_milliampere::ResetStateResponse :definition-)
      "float64[] state
---
bool success

")



(provide :sim_milliampere/ResetState "90925f44bd5df209aa74ed335d36993e")



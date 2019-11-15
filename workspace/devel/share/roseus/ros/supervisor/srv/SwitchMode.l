;; Auto-generated. Do not edit!


(when (boundp 'supervisor::SwitchMode)
  (if (not (find-package "SUPERVISOR"))
    (make-package "SUPERVISOR"))
  (shadow 'SwitchMode (find-package "SUPERVISOR")))
(unless (find-package "SUPERVISOR::SWITCHMODE")
  (make-package "SUPERVISOR::SWITCHMODE"))
(unless (find-package "SUPERVISOR::SWITCHMODEREQUEST")
  (make-package "SUPERVISOR::SWITCHMODEREQUEST"))
(unless (find-package "SUPERVISOR::SWITCHMODERESPONSE")
  (make-package "SUPERVISOR::SWITCHMODERESPONSE"))

(in-package "ROS")





(defclass supervisor::SwitchModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod supervisor::SwitchModeRequest
  (:init
   (&key
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass supervisor::SwitchModeResponse
  :super ros::object
  :slots (_approved ))

(defmethod supervisor::SwitchModeResponse
  (:init
   (&key
    ((:approved __approved) nil)
    )
   (send-super :init)
   (setq _approved __approved)
   self)
  (:approved
   (&optional __approved)
   (if __approved (setq _approved __approved)) _approved)
  (:serialization-length
   ()
   (+
    ;; bool _approved
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _approved
       (if _approved (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _approved
     (setq _approved (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass supervisor::SwitchMode
  :super ros::object
  :slots ())

(setf (get supervisor::SwitchMode :md5sum-) "a418eba3be203821f092a22ffded4941")
(setf (get supervisor::SwitchMode :datatype-) "supervisor/SwitchMode")
(setf (get supervisor::SwitchMode :request) supervisor::SwitchModeRequest)
(setf (get supervisor::SwitchMode :response) supervisor::SwitchModeResponse)

(defmethod supervisor::SwitchModeRequest
  (:response () (instance supervisor::SwitchModeResponse :init)))

(setf (get supervisor::SwitchModeRequest :md5sum-) "a418eba3be203821f092a22ffded4941")
(setf (get supervisor::SwitchModeRequest :datatype-) "supervisor/SwitchModeRequest")
(setf (get supervisor::SwitchModeRequest :definition-)
      "string mode
---
bool approved

")

(setf (get supervisor::SwitchModeResponse :md5sum-) "a418eba3be203821f092a22ffded4941")
(setf (get supervisor::SwitchModeResponse :datatype-) "supervisor/SwitchModeResponse")
(setf (get supervisor::SwitchModeResponse :definition-)
      "string mode
---
bool approved

")



(provide :supervisor/SwitchMode "a418eba3be203821f092a22ffded4941")



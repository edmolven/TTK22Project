;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::DockingMpcParameters)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'DockingMpcParameters (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::DOCKINGMPCPARAMETERS")
  (make-package "CUSTOM_MSGS::DOCKINGMPCPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude DockingMpcParameters.msg.html


(defclass custom_msgs::DockingMpcParameters
  :super ros::object
  :slots (_prediction_horizon _control_intervals _polynomial_degree _theta _initial_time _solution_time _convex_set _initial_state ))

(defmethod custom_msgs::DockingMpcParameters
  (:init
   (&key
    ((:prediction_horizon __prediction_horizon) 0.0)
    ((:control_intervals __control_intervals) 0)
    ((:polynomial_degree __polynomial_degree) 0)
    ((:theta __theta) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:initial_time __initial_time) 0.0)
    ((:solution_time __solution_time) 0.0)
    ((:convex_set __convex_set) (instance custom_msgs::HalfspaceDescription :init))
    ((:initial_state __initial_state) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _prediction_horizon (float __prediction_horizon))
   (setq _control_intervals (round __control_intervals))
   (setq _polynomial_degree (round __polynomial_degree))
   (setq _theta __theta)
   (setq _initial_time (float __initial_time))
   (setq _solution_time (float __solution_time))
   (setq _convex_set __convex_set)
   (setq _initial_state __initial_state)
   self)
  (:prediction_horizon
   (&optional __prediction_horizon)
   (if __prediction_horizon (setq _prediction_horizon __prediction_horizon)) _prediction_horizon)
  (:control_intervals
   (&optional __control_intervals)
   (if __control_intervals (setq _control_intervals __control_intervals)) _control_intervals)
  (:polynomial_degree
   (&optional __polynomial_degree)
   (if __polynomial_degree (setq _polynomial_degree __polynomial_degree)) _polynomial_degree)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:initial_time
   (&optional __initial_time)
   (if __initial_time (setq _initial_time __initial_time)) _initial_time)
  (:solution_time
   (&optional __solution_time)
   (if __solution_time (setq _solution_time __solution_time)) _solution_time)
  (:convex_set
   (&rest __convex_set)
   (if (keywordp (car __convex_set))
       (send* _convex_set __convex_set)
     (progn
       (if __convex_set (setq _convex_set (car __convex_set)))
       _convex_set)))
  (:initial_state
   (&optional __initial_state)
   (if __initial_state (setq _initial_state __initial_state)) _initial_state)
  (:serialization-length
   ()
   (+
    ;; float64 _prediction_horizon
    8
    ;; uint16 _control_intervals
    2
    ;; uint16 _polynomial_degree
    2
    ;; float64[] _theta
    (* 8    (length _theta)) 4
    ;; float64 _initial_time
    8
    ;; float64 _solution_time
    8
    ;; custom_msgs/HalfspaceDescription _convex_set
    (send _convex_set :serialization-length)
    ;; float64[] _initial_state
    (* 8    (length _initial_state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _prediction_horizon
       (sys::poke _prediction_horizon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _control_intervals
       (write-word _control_intervals s)
     ;; uint16 _polynomial_degree
       (write-word _polynomial_degree s)
     ;; float64[] _theta
     (write-long (length _theta) s)
     (dotimes (i (length _theta))
       (sys::poke (elt _theta i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _initial_time
       (sys::poke _initial_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _solution_time
       (sys::poke _solution_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; custom_msgs/HalfspaceDescription _convex_set
       (send _convex_set :serialize s)
     ;; float64[] _initial_state
     (write-long (length _initial_state) s)
     (dotimes (i (length _initial_state))
       (sys::poke (elt _initial_state i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _prediction_horizon
     (setq _prediction_horizon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _control_intervals
     (setq _control_intervals (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _polynomial_degree
     (setq _polynomial_degree (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64[] _theta
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _theta (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _theta i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _initial_time
     (setq _initial_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _solution_time
     (setq _solution_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; custom_msgs/HalfspaceDescription _convex_set
     (send _convex_set :deserialize buf ptr-) (incf ptr- (send _convex_set :serialization-length))
   ;; float64[] _initial_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _initial_state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _initial_state i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get custom_msgs::DockingMpcParameters :md5sum-) "a4ee0113d800b702c767f93572165b2f")
(setf (get custom_msgs::DockingMpcParameters :datatype-) "custom_msgs/DockingMpcParameters")
(setf (get custom_msgs::DockingMpcParameters :definition-)
      "
float64 prediction_horizon
uint16 control_intervals
uint16 polynomial_degree
float64[] theta
float64 initial_time
float64 solution_time
HalfspaceDescription convex_set
float64[] initial_state

================================================================================
MSG: custom_msgs/HalfspaceDescription
# Describes halfspace s.t. Ax <= b is within the halfspace.
float64[] A
float64[] b
")



(provide :custom_msgs/DockingMpcParameters "a4ee0113d800b702c767f93572165b2f")



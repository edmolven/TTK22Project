;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::MotorState)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'MotorState (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::MOTORSTATE")
  (make-package "CUSTOM_MSGS::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass custom_msgs::MotorState
  :super ros::object
  :slots (_set_throttle_stop _motor_in_temp_limit _battery_nearly_empty _master_error_code _motor_voltage _motor_current _motor_speed _motor_pcb_temp _motor_stator_temp _battery_voltage _battery_current _temperature_reverse_voltage_protection ))

(defmethod custom_msgs::MotorState
  (:init
   (&key
    ((:set_throttle_stop __set_throttle_stop) nil)
    ((:motor_in_temp_limit __motor_in_temp_limit) nil)
    ((:battery_nearly_empty __battery_nearly_empty) nil)
    ((:master_error_code __master_error_code) 0.0)
    ((:motor_voltage __motor_voltage) 0.0)
    ((:motor_current __motor_current) 0.0)
    ((:motor_speed __motor_speed) 0.0)
    ((:motor_pcb_temp __motor_pcb_temp) 0.0)
    ((:motor_stator_temp __motor_stator_temp) 0.0)
    ((:battery_voltage __battery_voltage) 0.0)
    ((:battery_current __battery_current) 0.0)
    ((:temperature_reverse_voltage_protection __temperature_reverse_voltage_protection) 0.0)
    )
   (send-super :init)
   (setq _set_throttle_stop __set_throttle_stop)
   (setq _motor_in_temp_limit __motor_in_temp_limit)
   (setq _battery_nearly_empty __battery_nearly_empty)
   (setq _master_error_code (float __master_error_code))
   (setq _motor_voltage (float __motor_voltage))
   (setq _motor_current (float __motor_current))
   (setq _motor_speed (float __motor_speed))
   (setq _motor_pcb_temp (float __motor_pcb_temp))
   (setq _motor_stator_temp (float __motor_stator_temp))
   (setq _battery_voltage (float __battery_voltage))
   (setq _battery_current (float __battery_current))
   (setq _temperature_reverse_voltage_protection (float __temperature_reverse_voltage_protection))
   self)
  (:set_throttle_stop
   (&optional __set_throttle_stop)
   (if __set_throttle_stop (setq _set_throttle_stop __set_throttle_stop)) _set_throttle_stop)
  (:motor_in_temp_limit
   (&optional __motor_in_temp_limit)
   (if __motor_in_temp_limit (setq _motor_in_temp_limit __motor_in_temp_limit)) _motor_in_temp_limit)
  (:battery_nearly_empty
   (&optional __battery_nearly_empty)
   (if __battery_nearly_empty (setq _battery_nearly_empty __battery_nearly_empty)) _battery_nearly_empty)
  (:master_error_code
   (&optional __master_error_code)
   (if __master_error_code (setq _master_error_code __master_error_code)) _master_error_code)
  (:motor_voltage
   (&optional __motor_voltage)
   (if __motor_voltage (setq _motor_voltage __motor_voltage)) _motor_voltage)
  (:motor_current
   (&optional __motor_current)
   (if __motor_current (setq _motor_current __motor_current)) _motor_current)
  (:motor_speed
   (&optional __motor_speed)
   (if __motor_speed (setq _motor_speed __motor_speed)) _motor_speed)
  (:motor_pcb_temp
   (&optional __motor_pcb_temp)
   (if __motor_pcb_temp (setq _motor_pcb_temp __motor_pcb_temp)) _motor_pcb_temp)
  (:motor_stator_temp
   (&optional __motor_stator_temp)
   (if __motor_stator_temp (setq _motor_stator_temp __motor_stator_temp)) _motor_stator_temp)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:battery_current
   (&optional __battery_current)
   (if __battery_current (setq _battery_current __battery_current)) _battery_current)
  (:temperature_reverse_voltage_protection
   (&optional __temperature_reverse_voltage_protection)
   (if __temperature_reverse_voltage_protection (setq _temperature_reverse_voltage_protection __temperature_reverse_voltage_protection)) _temperature_reverse_voltage_protection)
  (:serialization-length
   ()
   (+
    ;; bool _set_throttle_stop
    1
    ;; bool _motor_in_temp_limit
    1
    ;; bool _battery_nearly_empty
    1
    ;; float64 _master_error_code
    8
    ;; float64 _motor_voltage
    8
    ;; float64 _motor_current
    8
    ;; float64 _motor_speed
    8
    ;; float64 _motor_pcb_temp
    8
    ;; float64 _motor_stator_temp
    8
    ;; float64 _battery_voltage
    8
    ;; float64 _battery_current
    8
    ;; float64 _temperature_reverse_voltage_protection
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_throttle_stop
       (if _set_throttle_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_in_temp_limit
       (if _motor_in_temp_limit (write-byte -1 s) (write-byte 0 s))
     ;; bool _battery_nearly_empty
       (if _battery_nearly_empty (write-byte -1 s) (write-byte 0 s))
     ;; float64 _master_error_code
       (sys::poke _master_error_code (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_voltage
       (sys::poke _motor_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_current
       (sys::poke _motor_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_speed
       (sys::poke _motor_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_pcb_temp
       (sys::poke _motor_pcb_temp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_stator_temp
       (sys::poke _motor_stator_temp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery_current
       (sys::poke _battery_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _temperature_reverse_voltage_protection
       (sys::poke _temperature_reverse_voltage_protection (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_throttle_stop
     (setq _set_throttle_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_in_temp_limit
     (setq _motor_in_temp_limit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _battery_nearly_empty
     (setq _battery_nearly_empty (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _master_error_code
     (setq _master_error_code (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_voltage
     (setq _motor_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_current
     (setq _motor_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_speed
     (setq _motor_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_pcb_temp
     (setq _motor_pcb_temp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_stator_temp
     (setq _motor_stator_temp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery_current
     (setq _battery_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _temperature_reverse_voltage_protection
     (setq _temperature_reverse_voltage_protection (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msgs::MotorState :md5sum-) "5ba26985322fe9ed7cb8984452bc3eb4")
(setf (get custom_msgs::MotorState :datatype-) "custom_msgs/MotorState")
(setf (get custom_msgs::MotorState :definition-)
      "# Custom message for holding the motor state
# from torqeedo motors


bool set_throttle_stop
bool motor_in_temp_limit
bool battery_nearly_empty
float64 master_error_code
float64 motor_voltage 
float64 motor_current
float64 motor_speed
float64 motor_pcb_temp
float64 motor_stator_temp
float64 battery_voltage
float64 battery_current
float64 temperature_reverse_voltage_protection

")



(provide :custom_msgs/MotorState "5ba26985322fe9ed7cb8984452bc3eb4")



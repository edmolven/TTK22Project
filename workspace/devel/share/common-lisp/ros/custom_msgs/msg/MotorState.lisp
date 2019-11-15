; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude MotorState.msg.html

(cl:defclass <MotorState> (roslisp-msg-protocol:ros-message)
  ((set_throttle_stop
    :reader set_throttle_stop
    :initarg :set_throttle_stop
    :type cl:boolean
    :initform cl:nil)
   (motor_in_temp_limit
    :reader motor_in_temp_limit
    :initarg :motor_in_temp_limit
    :type cl:boolean
    :initform cl:nil)
   (battery_nearly_empty
    :reader battery_nearly_empty
    :initarg :battery_nearly_empty
    :type cl:boolean
    :initform cl:nil)
   (master_error_code
    :reader master_error_code
    :initarg :master_error_code
    :type cl:float
    :initform 0.0)
   (motor_voltage
    :reader motor_voltage
    :initarg :motor_voltage
    :type cl:float
    :initform 0.0)
   (motor_current
    :reader motor_current
    :initarg :motor_current
    :type cl:float
    :initform 0.0)
   (motor_speed
    :reader motor_speed
    :initarg :motor_speed
    :type cl:float
    :initform 0.0)
   (motor_pcb_temp
    :reader motor_pcb_temp
    :initarg :motor_pcb_temp
    :type cl:float
    :initform 0.0)
   (motor_stator_temp
    :reader motor_stator_temp
    :initarg :motor_stator_temp
    :type cl:float
    :initform 0.0)
   (battery_voltage
    :reader battery_voltage
    :initarg :battery_voltage
    :type cl:float
    :initform 0.0)
   (battery_current
    :reader battery_current
    :initarg :battery_current
    :type cl:float
    :initform 0.0)
   (temperature_reverse_voltage_protection
    :reader temperature_reverse_voltage_protection
    :initarg :temperature_reverse_voltage_protection
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorState (<MotorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<MotorState> is deprecated: use custom_msgs-msg:MotorState instead.")))

(cl:ensure-generic-function 'set_throttle_stop-val :lambda-list '(m))
(cl:defmethod set_throttle_stop-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:set_throttle_stop-val is deprecated.  Use custom_msgs-msg:set_throttle_stop instead.")
  (set_throttle_stop m))

(cl:ensure-generic-function 'motor_in_temp_limit-val :lambda-list '(m))
(cl:defmethod motor_in_temp_limit-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:motor_in_temp_limit-val is deprecated.  Use custom_msgs-msg:motor_in_temp_limit instead.")
  (motor_in_temp_limit m))

(cl:ensure-generic-function 'battery_nearly_empty-val :lambda-list '(m))
(cl:defmethod battery_nearly_empty-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:battery_nearly_empty-val is deprecated.  Use custom_msgs-msg:battery_nearly_empty instead.")
  (battery_nearly_empty m))

(cl:ensure-generic-function 'master_error_code-val :lambda-list '(m))
(cl:defmethod master_error_code-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:master_error_code-val is deprecated.  Use custom_msgs-msg:master_error_code instead.")
  (master_error_code m))

(cl:ensure-generic-function 'motor_voltage-val :lambda-list '(m))
(cl:defmethod motor_voltage-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:motor_voltage-val is deprecated.  Use custom_msgs-msg:motor_voltage instead.")
  (motor_voltage m))

(cl:ensure-generic-function 'motor_current-val :lambda-list '(m))
(cl:defmethod motor_current-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:motor_current-val is deprecated.  Use custom_msgs-msg:motor_current instead.")
  (motor_current m))

(cl:ensure-generic-function 'motor_speed-val :lambda-list '(m))
(cl:defmethod motor_speed-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:motor_speed-val is deprecated.  Use custom_msgs-msg:motor_speed instead.")
  (motor_speed m))

(cl:ensure-generic-function 'motor_pcb_temp-val :lambda-list '(m))
(cl:defmethod motor_pcb_temp-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:motor_pcb_temp-val is deprecated.  Use custom_msgs-msg:motor_pcb_temp instead.")
  (motor_pcb_temp m))

(cl:ensure-generic-function 'motor_stator_temp-val :lambda-list '(m))
(cl:defmethod motor_stator_temp-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:motor_stator_temp-val is deprecated.  Use custom_msgs-msg:motor_stator_temp instead.")
  (motor_stator_temp m))

(cl:ensure-generic-function 'battery_voltage-val :lambda-list '(m))
(cl:defmethod battery_voltage-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:battery_voltage-val is deprecated.  Use custom_msgs-msg:battery_voltage instead.")
  (battery_voltage m))

(cl:ensure-generic-function 'battery_current-val :lambda-list '(m))
(cl:defmethod battery_current-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:battery_current-val is deprecated.  Use custom_msgs-msg:battery_current instead.")
  (battery_current m))

(cl:ensure-generic-function 'temperature_reverse_voltage_protection-val :lambda-list '(m))
(cl:defmethod temperature_reverse_voltage_protection-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:temperature_reverse_voltage_protection-val is deprecated.  Use custom_msgs-msg:temperature_reverse_voltage_protection instead.")
  (temperature_reverse_voltage_protection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorState>) ostream)
  "Serializes a message object of type '<MotorState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_throttle_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_in_temp_limit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'battery_nearly_empty) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'master_error_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_pcb_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_stator_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'battery_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'battery_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature_reverse_voltage_protection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorState>) istream)
  "Deserializes a message object of type '<MotorState>"
    (cl:setf (cl:slot-value msg 'set_throttle_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_in_temp_limit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'battery_nearly_empty) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'master_error_code) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_pcb_temp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_stator_temp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_reverse_voltage_protection) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorState>)))
  "Returns string type for a message object of type '<MotorState>"
  "custom_msgs/MotorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorState)))
  "Returns string type for a message object of type 'MotorState"
  "custom_msgs/MotorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorState>)))
  "Returns md5sum for a message object of type '<MotorState>"
  "5ba26985322fe9ed7cb8984452bc3eb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorState)))
  "Returns md5sum for a message object of type 'MotorState"
  "5ba26985322fe9ed7cb8984452bc3eb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorState>)))
  "Returns full string definition for message of type '<MotorState>"
  (cl:format cl:nil "# Custom message for holding the motor state~%# from torqeedo motors~%~%~%bool set_throttle_stop~%bool motor_in_temp_limit~%bool battery_nearly_empty~%float64 master_error_code~%float64 motor_voltage ~%float64 motor_current~%float64 motor_speed~%float64 motor_pcb_temp~%float64 motor_stator_temp~%float64 battery_voltage~%float64 battery_current~%float64 temperature_reverse_voltage_protection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorState)))
  "Returns full string definition for message of type 'MotorState"
  (cl:format cl:nil "# Custom message for holding the motor state~%# from torqeedo motors~%~%~%bool set_throttle_stop~%bool motor_in_temp_limit~%bool battery_nearly_empty~%float64 master_error_code~%float64 motor_voltage ~%float64 motor_current~%float64 motor_speed~%float64 motor_pcb_temp~%float64 motor_stator_temp~%float64 battery_voltage~%float64 battery_current~%float64 temperature_reverse_voltage_protection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorState>))
  (cl:+ 0
     1
     1
     1
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorState>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorState
    (cl:cons ':set_throttle_stop (set_throttle_stop msg))
    (cl:cons ':motor_in_temp_limit (motor_in_temp_limit msg))
    (cl:cons ':battery_nearly_empty (battery_nearly_empty msg))
    (cl:cons ':master_error_code (master_error_code msg))
    (cl:cons ':motor_voltage (motor_voltage msg))
    (cl:cons ':motor_current (motor_current msg))
    (cl:cons ':motor_speed (motor_speed msg))
    (cl:cons ':motor_pcb_temp (motor_pcb_temp msg))
    (cl:cons ':motor_stator_temp (motor_stator_temp msg))
    (cl:cons ':battery_voltage (battery_voltage msg))
    (cl:cons ':battery_current (battery_current msg))
    (cl:cons ':temperature_reverse_voltage_protection (temperature_reverse_voltage_protection msg))
))

; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude DockingMpcParameters.msg.html

(cl:defclass <DockingMpcParameters> (roslisp-msg-protocol:ros-message)
  ((prediction_horizon
    :reader prediction_horizon
    :initarg :prediction_horizon
    :type cl:float
    :initform 0.0)
   (control_intervals
    :reader control_intervals
    :initarg :control_intervals
    :type cl:fixnum
    :initform 0)
   (polynomial_degree
    :reader polynomial_degree
    :initarg :polynomial_degree
    :type cl:fixnum
    :initform 0)
   (theta
    :reader theta
    :initarg :theta
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (initial_time
    :reader initial_time
    :initarg :initial_time
    :type cl:float
    :initform 0.0)
   (solution_time
    :reader solution_time
    :initarg :solution_time
    :type cl:float
    :initform 0.0)
   (convex_set
    :reader convex_set
    :initarg :convex_set
    :type custom_msgs-msg:HalfspaceDescription
    :initform (cl:make-instance 'custom_msgs-msg:HalfspaceDescription))
   (initial_state
    :reader initial_state
    :initarg :initial_state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DockingMpcParameters (<DockingMpcParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockingMpcParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockingMpcParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<DockingMpcParameters> is deprecated: use custom_msgs-msg:DockingMpcParameters instead.")))

(cl:ensure-generic-function 'prediction_horizon-val :lambda-list '(m))
(cl:defmethod prediction_horizon-val ((m <DockingMpcParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:prediction_horizon-val is deprecated.  Use custom_msgs-msg:prediction_horizon instead.")
  (prediction_horizon m))

(cl:ensure-generic-function 'control_intervals-val :lambda-list '(m))
(cl:defmethod control_intervals-val ((m <DockingMpcParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:control_intervals-val is deprecated.  Use custom_msgs-msg:control_intervals instead.")
  (control_intervals m))

(cl:ensure-generic-function 'polynomial_degree-val :lambda-list '(m))
(cl:defmethod polynomial_degree-val ((m <DockingMpcParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:polynomial_degree-val is deprecated.  Use custom_msgs-msg:polynomial_degree instead.")
  (polynomial_degree m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <DockingMpcParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:theta-val is deprecated.  Use custom_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'initial_time-val :lambda-list '(m))
(cl:defmethod initial_time-val ((m <DockingMpcParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:initial_time-val is deprecated.  Use custom_msgs-msg:initial_time instead.")
  (initial_time m))

(cl:ensure-generic-function 'solution_time-val :lambda-list '(m))
(cl:defmethod solution_time-val ((m <DockingMpcParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:solution_time-val is deprecated.  Use custom_msgs-msg:solution_time instead.")
  (solution_time m))

(cl:ensure-generic-function 'convex_set-val :lambda-list '(m))
(cl:defmethod convex_set-val ((m <DockingMpcParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:convex_set-val is deprecated.  Use custom_msgs-msg:convex_set instead.")
  (convex_set m))

(cl:ensure-generic-function 'initial_state-val :lambda-list '(m))
(cl:defmethod initial_state-val ((m <DockingMpcParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:initial_state-val is deprecated.  Use custom_msgs-msg:initial_state instead.")
  (initial_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockingMpcParameters>) ostream)
  "Serializes a message object of type '<DockingMpcParameters>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prediction_horizon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_intervals)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'control_intervals)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'polynomial_degree)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'polynomial_degree)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'theta))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'initial_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'solution_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'convex_set) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'initial_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'initial_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockingMpcParameters>) istream)
  "Deserializes a message object of type '<DockingMpcParameters>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prediction_horizon) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_intervals)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'control_intervals)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'polynomial_degree)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'polynomial_degree)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'theta) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'theta)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'initial_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'solution_time) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'convex_set) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'initial_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'initial_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockingMpcParameters>)))
  "Returns string type for a message object of type '<DockingMpcParameters>"
  "custom_msgs/DockingMpcParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockingMpcParameters)))
  "Returns string type for a message object of type 'DockingMpcParameters"
  "custom_msgs/DockingMpcParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockingMpcParameters>)))
  "Returns md5sum for a message object of type '<DockingMpcParameters>"
  "a4ee0113d800b702c767f93572165b2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockingMpcParameters)))
  "Returns md5sum for a message object of type 'DockingMpcParameters"
  "a4ee0113d800b702c767f93572165b2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockingMpcParameters>)))
  "Returns full string definition for message of type '<DockingMpcParameters>"
  (cl:format cl:nil "~%float64 prediction_horizon~%uint16 control_intervals~%uint16 polynomial_degree~%float64[] theta~%float64 initial_time~%float64 solution_time~%HalfspaceDescription convex_set~%float64[] initial_state~%~%================================================================================~%MSG: custom_msgs/HalfspaceDescription~%# Describes halfspace s.t. Ax <= b is within the halfspace.~%float64[] A~%float64[] b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockingMpcParameters)))
  "Returns full string definition for message of type 'DockingMpcParameters"
  (cl:format cl:nil "~%float64 prediction_horizon~%uint16 control_intervals~%uint16 polynomial_degree~%float64[] theta~%float64 initial_time~%float64 solution_time~%HalfspaceDescription convex_set~%float64[] initial_state~%~%================================================================================~%MSG: custom_msgs/HalfspaceDescription~%# Describes halfspace s.t. Ax <= b is within the halfspace.~%float64[] A~%float64[] b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockingMpcParameters>))
  (cl:+ 0
     8
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'theta) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'convex_set))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'initial_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockingMpcParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'DockingMpcParameters
    (cl:cons ':prediction_horizon (prediction_horizon msg))
    (cl:cons ':control_intervals (control_intervals msg))
    (cl:cons ':polynomial_degree (polynomial_degree msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':initial_time (initial_time msg))
    (cl:cons ':solution_time (solution_time msg))
    (cl:cons ':convex_set (convex_set msg))
    (cl:cons ':initial_state (initial_state msg))
))

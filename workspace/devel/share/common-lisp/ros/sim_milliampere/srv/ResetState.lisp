; Auto-generated. Do not edit!


(cl:in-package sim_milliampere-srv)


;//! \htmlinclude ResetState-request.msg.html

(cl:defclass <ResetState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ResetState-request (<ResetState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sim_milliampere-srv:<ResetState-request> is deprecated: use sim_milliampere-srv:ResetState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ResetState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_milliampere-srv:state-val is deprecated.  Use sim_milliampere-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetState-request>) ostream)
  "Serializes a message object of type '<ResetState-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
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
   (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetState-request>) istream)
  "Deserializes a message object of type '<ResetState-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetState-request>)))
  "Returns string type for a service object of type '<ResetState-request>"
  "sim_milliampere/ResetStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetState-request)))
  "Returns string type for a service object of type 'ResetState-request"
  "sim_milliampere/ResetStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetState-request>)))
  "Returns md5sum for a message object of type '<ResetState-request>"
  "90925f44bd5df209aa74ed335d36993e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetState-request)))
  "Returns md5sum for a message object of type 'ResetState-request"
  "90925f44bd5df209aa74ed335d36993e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetState-request>)))
  "Returns full string definition for message of type '<ResetState-request>"
  (cl:format cl:nil "float64[] state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetState-request)))
  "Returns full string definition for message of type 'ResetState-request"
  (cl:format cl:nil "float64[] state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetState-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ResetState-response.msg.html

(cl:defclass <ResetState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ResetState-response (<ResetState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sim_milliampere-srv:<ResetState-response> is deprecated: use sim_milliampere-srv:ResetState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_milliampere-srv:success-val is deprecated.  Use sim_milliampere-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetState-response>) ostream)
  "Serializes a message object of type '<ResetState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetState-response>) istream)
  "Deserializes a message object of type '<ResetState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetState-response>)))
  "Returns string type for a service object of type '<ResetState-response>"
  "sim_milliampere/ResetStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetState-response)))
  "Returns string type for a service object of type 'ResetState-response"
  "sim_milliampere/ResetStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetState-response>)))
  "Returns md5sum for a message object of type '<ResetState-response>"
  "90925f44bd5df209aa74ed335d36993e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetState-response)))
  "Returns md5sum for a message object of type 'ResetState-response"
  "90925f44bd5df209aa74ed335d36993e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetState-response>)))
  "Returns full string definition for message of type '<ResetState-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetState-response)))
  "Returns full string definition for message of type 'ResetState-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetState-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetState)))
  'ResetState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetState)))
  'ResetState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetState)))
  "Returns string type for a service object of type '<ResetState>"
  "sim_milliampere/ResetState")
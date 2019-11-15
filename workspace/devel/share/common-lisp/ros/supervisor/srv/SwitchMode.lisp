; Auto-generated. Do not edit!


(cl:in-package supervisor-srv)


;//! \htmlinclude SwitchMode-request.msg.html

(cl:defclass <SwitchMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass SwitchMode-request (<SwitchMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervisor-srv:<SwitchMode-request> is deprecated: use supervisor-srv:SwitchMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SwitchMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervisor-srv:mode-val is deprecated.  Use supervisor-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchMode-request>) ostream)
  "Serializes a message object of type '<SwitchMode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchMode-request>) istream)
  "Deserializes a message object of type '<SwitchMode-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchMode-request>)))
  "Returns string type for a service object of type '<SwitchMode-request>"
  "supervisor/SwitchModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMode-request)))
  "Returns string type for a service object of type 'SwitchMode-request"
  "supervisor/SwitchModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchMode-request>)))
  "Returns md5sum for a message object of type '<SwitchMode-request>"
  "a418eba3be203821f092a22ffded4941")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchMode-request)))
  "Returns md5sum for a message object of type 'SwitchMode-request"
  "a418eba3be203821f092a22ffded4941")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchMode-request>)))
  "Returns full string definition for message of type '<SwitchMode-request>"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchMode-request)))
  "Returns full string definition for message of type 'SwitchMode-request"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchMode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SwitchMode-response.msg.html

(cl:defclass <SwitchMode-response> (roslisp-msg-protocol:ros-message)
  ((approved
    :reader approved
    :initarg :approved
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SwitchMode-response (<SwitchMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervisor-srv:<SwitchMode-response> is deprecated: use supervisor-srv:SwitchMode-response instead.")))

(cl:ensure-generic-function 'approved-val :lambda-list '(m))
(cl:defmethod approved-val ((m <SwitchMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervisor-srv:approved-val is deprecated.  Use supervisor-srv:approved instead.")
  (approved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchMode-response>) ostream)
  "Serializes a message object of type '<SwitchMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'approved) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchMode-response>) istream)
  "Deserializes a message object of type '<SwitchMode-response>"
    (cl:setf (cl:slot-value msg 'approved) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchMode-response>)))
  "Returns string type for a service object of type '<SwitchMode-response>"
  "supervisor/SwitchModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMode-response)))
  "Returns string type for a service object of type 'SwitchMode-response"
  "supervisor/SwitchModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchMode-response>)))
  "Returns md5sum for a message object of type '<SwitchMode-response>"
  "a418eba3be203821f092a22ffded4941")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchMode-response)))
  "Returns md5sum for a message object of type 'SwitchMode-response"
  "a418eba3be203821f092a22ffded4941")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchMode-response>)))
  "Returns full string definition for message of type '<SwitchMode-response>"
  (cl:format cl:nil "bool approved~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchMode-response)))
  "Returns full string definition for message of type 'SwitchMode-response"
  (cl:format cl:nil "bool approved~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchMode-response
    (cl:cons ':approved (approved msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchMode)))
  'SwitchMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchMode)))
  'SwitchMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMode)))
  "Returns string type for a service object of type '<SwitchMode>"
  "supervisor/SwitchMode")
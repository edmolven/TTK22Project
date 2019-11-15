; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude HalfspaceDescription.msg.html

(cl:defclass <HalfspaceDescription> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (b
    :reader b
    :initarg :b
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass HalfspaceDescription (<HalfspaceDescription>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HalfspaceDescription>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HalfspaceDescription)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<HalfspaceDescription> is deprecated: use custom_msgs-msg:HalfspaceDescription instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <HalfspaceDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:A-val is deprecated.  Use custom_msgs-msg:A instead.")
  (A m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <HalfspaceDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:b-val is deprecated.  Use custom_msgs-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HalfspaceDescription>) ostream)
  "Serializes a message object of type '<HalfspaceDescription>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'A))))
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
   (cl:slot-value msg 'A))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'b))))
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
   (cl:slot-value msg 'b))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HalfspaceDescription>) istream)
  "Deserializes a message object of type '<HalfspaceDescription>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'A) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'A)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'b) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'b)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HalfspaceDescription>)))
  "Returns string type for a message object of type '<HalfspaceDescription>"
  "custom_msgs/HalfspaceDescription")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HalfspaceDescription)))
  "Returns string type for a message object of type 'HalfspaceDescription"
  "custom_msgs/HalfspaceDescription")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HalfspaceDescription>)))
  "Returns md5sum for a message object of type '<HalfspaceDescription>"
  "77bfbd60980c2f9a2cd09f881bcff234")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HalfspaceDescription)))
  "Returns md5sum for a message object of type 'HalfspaceDescription"
  "77bfbd60980c2f9a2cd09f881bcff234")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HalfspaceDescription>)))
  "Returns full string definition for message of type '<HalfspaceDescription>"
  (cl:format cl:nil "# Describes halfspace s.t. Ax <= b is within the halfspace.~%float64[] A~%float64[] b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HalfspaceDescription)))
  "Returns full string definition for message of type 'HalfspaceDescription"
  (cl:format cl:nil "# Describes halfspace s.t. Ax <= b is within the halfspace.~%float64[] A~%float64[] b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HalfspaceDescription>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'A) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'b) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HalfspaceDescription>))
  "Converts a ROS message object to a list"
  (cl:list 'HalfspaceDescription
    (cl:cons ':A (A msg))
    (cl:cons ':b (b msg))
))

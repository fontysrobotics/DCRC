; Auto-generated. Do not edit!


(cl:in-package blackboard-msg)


;//! \htmlinclude TaskCost.msg.html

(cl:defclass <TaskCost> (roslisp-msg-protocol:ros-message)
  ((taskId
    :reader taskId
    :initarg :taskId
    :type cl:fixnum
    :initform 0)
   (taskCost
    :reader taskCost
    :initarg :taskCost
    :type cl:float
    :initform 0.0)
   (robotId
    :reader robotId
    :initarg :robotId
    :type cl:fixnum
    :initform 0)
   (energyCost
    :reader energyCost
    :initarg :energyCost
    :type cl:float
    :initform 0.0))
)

(cl:defclass TaskCost (<TaskCost>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskCost>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskCost)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blackboard-msg:<TaskCost> is deprecated: use blackboard-msg:TaskCost instead.")))

(cl:ensure-generic-function 'taskId-val :lambda-list '(m))
(cl:defmethod taskId-val ((m <TaskCost>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:taskId-val is deprecated.  Use blackboard-msg:taskId instead.")
  (taskId m))

(cl:ensure-generic-function 'taskCost-val :lambda-list '(m))
(cl:defmethod taskCost-val ((m <TaskCost>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:taskCost-val is deprecated.  Use blackboard-msg:taskCost instead.")
  (taskCost m))

(cl:ensure-generic-function 'robotId-val :lambda-list '(m))
(cl:defmethod robotId-val ((m <TaskCost>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:robotId-val is deprecated.  Use blackboard-msg:robotId instead.")
  (robotId m))

(cl:ensure-generic-function 'energyCost-val :lambda-list '(m))
(cl:defmethod energyCost-val ((m <TaskCost>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:energyCost-val is deprecated.  Use blackboard-msg:energyCost instead.")
  (energyCost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskCost>) ostream)
  "Serializes a message object of type '<TaskCost>"
  (cl:let* ((signed (cl:slot-value msg 'taskId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'taskCost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'robotId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'energyCost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskCost>) istream)
  "Deserializes a message object of type '<TaskCost>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskId) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'taskCost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotId) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'energyCost) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskCost>)))
  "Returns string type for a message object of type '<TaskCost>"
  "blackboard/TaskCost")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskCost)))
  "Returns string type for a message object of type 'TaskCost"
  "blackboard/TaskCost")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskCost>)))
  "Returns md5sum for a message object of type '<TaskCost>"
  "0f44cd155759633dbc2acfa15e81bd1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskCost)))
  "Returns md5sum for a message object of type 'TaskCost"
  "0f44cd155759633dbc2acfa15e81bd1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskCost>)))
  "Returns full string definition for message of type '<TaskCost>"
  (cl:format cl:nil "int16 taskId~%float32 taskCost~%int16 robotId~%float32 energyCost~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskCost)))
  "Returns full string definition for message of type 'TaskCost"
  (cl:format cl:nil "int16 taskId~%float32 taskCost~%int16 robotId~%float32 energyCost~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskCost>))
  (cl:+ 0
     2
     4
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskCost>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskCost
    (cl:cons ':taskId (taskId msg))
    (cl:cons ':taskCost (taskCost msg))
    (cl:cons ':robotId (robotId msg))
    (cl:cons ':energyCost (energyCost msg))
))

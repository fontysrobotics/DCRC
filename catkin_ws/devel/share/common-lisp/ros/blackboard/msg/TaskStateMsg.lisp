; Auto-generated. Do not edit!


(cl:in-package blackboard-msg)


;//! \htmlinclude TaskStateMsg.msg.html

(cl:defclass <TaskStateMsg> (roslisp-msg-protocol:ros-message)
  ((taskId
    :reader taskId
    :initarg :taskId
    :type cl:fixnum
    :initform 0)
   (taskState
    :reader taskState
    :initarg :taskState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TaskStateMsg (<TaskStateMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskStateMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskStateMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blackboard-msg:<TaskStateMsg> is deprecated: use blackboard-msg:TaskStateMsg instead.")))

(cl:ensure-generic-function 'taskId-val :lambda-list '(m))
(cl:defmethod taskId-val ((m <TaskStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:taskId-val is deprecated.  Use blackboard-msg:taskId instead.")
  (taskId m))

(cl:ensure-generic-function 'taskState-val :lambda-list '(m))
(cl:defmethod taskState-val ((m <TaskStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:taskState-val is deprecated.  Use blackboard-msg:taskState instead.")
  (taskState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskStateMsg>) ostream)
  "Serializes a message object of type '<TaskStateMsg>"
  (cl:let* ((signed (cl:slot-value msg 'taskId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'taskState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskStateMsg>) istream)
  "Deserializes a message object of type '<TaskStateMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskId) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskState) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskStateMsg>)))
  "Returns string type for a message object of type '<TaskStateMsg>"
  "blackboard/TaskStateMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStateMsg)))
  "Returns string type for a message object of type 'TaskStateMsg"
  "blackboard/TaskStateMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskStateMsg>)))
  "Returns md5sum for a message object of type '<TaskStateMsg>"
  "f5ce57945f778c6d07ba18bc1f23f3bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskStateMsg)))
  "Returns md5sum for a message object of type 'TaskStateMsg"
  "f5ce57945f778c6d07ba18bc1f23f3bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskStateMsg>)))
  "Returns full string definition for message of type '<TaskStateMsg>"
  (cl:format cl:nil "int16 taskId~%int16 taskState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskStateMsg)))
  "Returns full string definition for message of type 'TaskStateMsg"
  (cl:format cl:nil "int16 taskId~%int16 taskState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskStateMsg>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskStateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskStateMsg
    (cl:cons ':taskId (taskId msg))
    (cl:cons ':taskState (taskState msg))
))

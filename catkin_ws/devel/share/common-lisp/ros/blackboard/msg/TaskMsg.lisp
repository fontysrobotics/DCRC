; Auto-generated. Do not edit!


(cl:in-package blackboard-msg)


;//! \htmlinclude TaskMsg.msg.html

(cl:defclass <TaskMsg> (roslisp-msg-protocol:ros-message)
  ((taskId
    :reader taskId
    :initarg :taskId
    :type cl:fixnum
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (taskType
    :reader taskType
    :initarg :taskType
    :type cl:fixnum
    :initform 0)
   (payload
    :reader payload
    :initarg :payload
    :type cl:fixnum
    :initform 0)
   (taskState
    :reader taskState
    :initarg :taskState
    :type cl:fixnum
    :initform 0)
   (cost
    :reader cost
    :initarg :cost
    :type cl:float
    :initform 0.0)
   (energyCost
    :reader energyCost
    :initarg :energyCost
    :type cl:float
    :initform 0.0)
   (robotId
    :reader robotId
    :initarg :robotId
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass TaskMsg (<TaskMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blackboard-msg:<TaskMsg> is deprecated: use blackboard-msg:TaskMsg instead.")))

(cl:ensure-generic-function 'taskId-val :lambda-list '(m))
(cl:defmethod taskId-val ((m <TaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:taskId-val is deprecated.  Use blackboard-msg:taskId instead.")
  (taskId m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <TaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:priority-val is deprecated.  Use blackboard-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'taskType-val :lambda-list '(m))
(cl:defmethod taskType-val ((m <TaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:taskType-val is deprecated.  Use blackboard-msg:taskType instead.")
  (taskType m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <TaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:payload-val is deprecated.  Use blackboard-msg:payload instead.")
  (payload m))

(cl:ensure-generic-function 'taskState-val :lambda-list '(m))
(cl:defmethod taskState-val ((m <TaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:taskState-val is deprecated.  Use blackboard-msg:taskState instead.")
  (taskState m))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <TaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:cost-val is deprecated.  Use blackboard-msg:cost instead.")
  (cost m))

(cl:ensure-generic-function 'energyCost-val :lambda-list '(m))
(cl:defmethod energyCost-val ((m <TaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:energyCost-val is deprecated.  Use blackboard-msg:energyCost instead.")
  (energyCost m))

(cl:ensure-generic-function 'robotId-val :lambda-list '(m))
(cl:defmethod robotId-val ((m <TaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:robotId-val is deprecated.  Use blackboard-msg:robotId instead.")
  (robotId m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TaskMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:pose-val is deprecated.  Use blackboard-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskMsg>) ostream)
  "Serializes a message object of type '<TaskMsg>"
  (cl:let* ((signed (cl:slot-value msg 'taskId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'taskType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'payload)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'taskState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'energyCost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'robotId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskMsg>) istream)
  "Deserializes a message object of type '<TaskMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskId) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskType) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'payload) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskState) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'energyCost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotId) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskMsg>)))
  "Returns string type for a message object of type '<TaskMsg>"
  "blackboard/TaskMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskMsg)))
  "Returns string type for a message object of type 'TaskMsg"
  "blackboard/TaskMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskMsg>)))
  "Returns md5sum for a message object of type '<TaskMsg>"
  "36aacfc4fa43201ce4e714ef4c2d80ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskMsg)))
  "Returns md5sum for a message object of type 'TaskMsg"
  "36aacfc4fa43201ce4e714ef4c2d80ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskMsg>)))
  "Returns full string definition for message of type '<TaskMsg>"
  (cl:format cl:nil "int16 taskId~%int16 priority~%int16 taskType~%int16 payload~%int16 taskState~%float32 cost~%float32 energyCost~%int16 robotId~%geometry_msgs/Pose[] pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskMsg)))
  "Returns full string definition for message of type 'TaskMsg"
  (cl:format cl:nil "int16 taskId~%int16 priority~%int16 taskType~%int16 payload~%int16 taskState~%float32 cost~%float32 energyCost~%int16 robotId~%geometry_msgs/Pose[] pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskMsg>))
  (cl:+ 0
     2
     2
     2
     2
     2
     4
     4
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskMsg
    (cl:cons ':taskId (taskId msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':taskType (taskType msg))
    (cl:cons ':payload (payload msg))
    (cl:cons ':taskState (taskState msg))
    (cl:cons ':cost (cost msg))
    (cl:cons ':energyCost (energyCost msg))
    (cl:cons ':robotId (robotId msg))
    (cl:cons ':pose (pose msg))
))

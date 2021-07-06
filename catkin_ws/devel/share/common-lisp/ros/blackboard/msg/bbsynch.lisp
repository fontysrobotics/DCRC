; Auto-generated. Do not edit!


(cl:in-package blackboard-msg)


;//! \htmlinclude bbsynch.msg.html

(cl:defclass <bbsynch> (roslisp-msg-protocol:ros-message)
  ((tasks
    :reader tasks
    :initarg :tasks
    :type (cl:vector blackboard-msg:TaskMsg)
   :initform (cl:make-array 0 :element-type 'blackboard-msg:TaskMsg :initial-element (cl:make-instance 'blackboard-msg:TaskMsg))))
)

(cl:defclass bbsynch (<bbsynch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bbsynch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bbsynch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blackboard-msg:<bbsynch> is deprecated: use blackboard-msg:bbsynch instead.")))

(cl:ensure-generic-function 'tasks-val :lambda-list '(m))
(cl:defmethod tasks-val ((m <bbsynch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:tasks-val is deprecated.  Use blackboard-msg:tasks instead.")
  (tasks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bbsynch>) ostream)
  "Serializes a message object of type '<bbsynch>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tasks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bbsynch>) istream)
  "Deserializes a message object of type '<bbsynch>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'blackboard-msg:TaskMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bbsynch>)))
  "Returns string type for a message object of type '<bbsynch>"
  "blackboard/bbsynch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bbsynch)))
  "Returns string type for a message object of type 'bbsynch"
  "blackboard/bbsynch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bbsynch>)))
  "Returns md5sum for a message object of type '<bbsynch>"
  "6466ca11443297facdd573ec78db41a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bbsynch)))
  "Returns md5sum for a message object of type 'bbsynch"
  "6466ca11443297facdd573ec78db41a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bbsynch>)))
  "Returns full string definition for message of type '<bbsynch>"
  (cl:format cl:nil "blackboard/TaskMsg[] tasks~%================================================================================~%MSG: blackboard/TaskMsg~%int16 taskId~%int16 priority~%int16 taskType~%int16 payload~%int16 taskState~%float32 cost~%float32 energyCost~%int16 robotId~%geometry_msgs/Pose[] pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bbsynch)))
  "Returns full string definition for message of type 'bbsynch"
  (cl:format cl:nil "blackboard/TaskMsg[] tasks~%================================================================================~%MSG: blackboard/TaskMsg~%int16 taskId~%int16 priority~%int16 taskType~%int16 payload~%int16 taskState~%float32 cost~%float32 energyCost~%int16 robotId~%geometry_msgs/Pose[] pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bbsynch>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bbsynch>))
  "Converts a ROS message object to a list"
  (cl:list 'bbsynch
    (cl:cons ':tasks (tasks msg))
))

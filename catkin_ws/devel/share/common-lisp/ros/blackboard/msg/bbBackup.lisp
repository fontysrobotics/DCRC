; Auto-generated. Do not edit!


(cl:in-package blackboard-msg)


;//! \htmlinclude bbBackup.msg.html

(cl:defclass <bbBackup> (roslisp-msg-protocol:ros-message)
  ((bbAdress
    :reader bbAdress
    :initarg :bbAdress
    :type cl:string
    :initform "")
   (buAdress
    :reader buAdress
    :initarg :buAdress
    :type cl:string
    :initform ""))
)

(cl:defclass bbBackup (<bbBackup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bbBackup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bbBackup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blackboard-msg:<bbBackup> is deprecated: use blackboard-msg:bbBackup instead.")))

(cl:ensure-generic-function 'bbAdress-val :lambda-list '(m))
(cl:defmethod bbAdress-val ((m <bbBackup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:bbAdress-val is deprecated.  Use blackboard-msg:bbAdress instead.")
  (bbAdress m))

(cl:ensure-generic-function 'buAdress-val :lambda-list '(m))
(cl:defmethod buAdress-val ((m <bbBackup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackboard-msg:buAdress-val is deprecated.  Use blackboard-msg:buAdress instead.")
  (buAdress m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bbBackup>) ostream)
  "Serializes a message object of type '<bbBackup>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bbAdress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bbAdress))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'buAdress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'buAdress))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bbBackup>) istream)
  "Deserializes a message object of type '<bbBackup>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bbAdress) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bbAdress) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buAdress) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'buAdress) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bbBackup>)))
  "Returns string type for a message object of type '<bbBackup>"
  "blackboard/bbBackup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bbBackup)))
  "Returns string type for a message object of type 'bbBackup"
  "blackboard/bbBackup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bbBackup>)))
  "Returns md5sum for a message object of type '<bbBackup>"
  "e47aaa65c9ecf31332f737b2f3056288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bbBackup)))
  "Returns md5sum for a message object of type 'bbBackup"
  "e47aaa65c9ecf31332f737b2f3056288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bbBackup>)))
  "Returns full string definition for message of type '<bbBackup>"
  (cl:format cl:nil "string bbAdress~%string buAdress~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bbBackup)))
  "Returns full string definition for message of type 'bbBackup"
  (cl:format cl:nil "string bbAdress~%string buAdress~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bbBackup>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'bbAdress))
     4 (cl:length (cl:slot-value msg 'buAdress))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bbBackup>))
  "Converts a ROS message object to a list"
  (cl:list 'bbBackup
    (cl:cons ':bbAdress (bbAdress msg))
    (cl:cons ':buAdress (buAdress msg))
))

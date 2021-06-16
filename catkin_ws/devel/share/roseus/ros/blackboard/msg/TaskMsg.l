;; Auto-generated. Do not edit!


(when (boundp 'blackboard::TaskMsg)
  (if (not (find-package "BLACKBOARD"))
    (make-package "BLACKBOARD"))
  (shadow 'TaskMsg (find-package "BLACKBOARD")))
(unless (find-package "BLACKBOARD::TASKMSG")
  (make-package "BLACKBOARD::TASKMSG"))

(in-package "ROS")
;;//! \htmlinclude TaskMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass blackboard::TaskMsg
  :super ros::object
  :slots (_taskId _priority _taskType _payload _taskState _cost _energyCost _robotId _pose ))

(defmethod blackboard::TaskMsg
  (:init
   (&key
    ((:taskId __taskId) 0)
    ((:priority __priority) 0)
    ((:taskType __taskType) 0)
    ((:payload __payload) 0)
    ((:taskState __taskState) 0)
    ((:cost __cost) 0.0)
    ((:energyCost __energyCost) 0.0)
    ((:robotId __robotId) 0)
    ((:pose __pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _taskId (round __taskId))
   (setq _priority (round __priority))
   (setq _taskType (round __taskType))
   (setq _payload (round __payload))
   (setq _taskState (round __taskState))
   (setq _cost (float __cost))
   (setq _energyCost (float __energyCost))
   (setq _robotId (round __robotId))
   (setq _pose __pose)
   self)
  (:taskId
   (&optional __taskId)
   (if __taskId (setq _taskId __taskId)) _taskId)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:taskType
   (&optional __taskType)
   (if __taskType (setq _taskType __taskType)) _taskType)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:taskState
   (&optional __taskState)
   (if __taskState (setq _taskState __taskState)) _taskState)
  (:cost
   (&optional __cost)
   (if __cost (setq _cost __cost)) _cost)
  (:energyCost
   (&optional __energyCost)
   (if __energyCost (setq _energyCost __energyCost)) _energyCost)
  (:robotId
   (&optional __robotId)
   (if __robotId (setq _robotId __robotId)) _robotId)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int16 _taskId
    2
    ;; int16 _priority
    2
    ;; int16 _taskType
    2
    ;; int16 _payload
    2
    ;; int16 _taskState
    2
    ;; float32 _cost
    4
    ;; float32 _energyCost
    4
    ;; int16 _robotId
    2
    ;; geometry_msgs/Pose[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _taskId
       (write-word _taskId s)
     ;; int16 _priority
       (write-word _priority s)
     ;; int16 _taskType
       (write-word _taskType s)
     ;; int16 _payload
       (write-word _payload s)
     ;; int16 _taskState
       (write-word _taskState s)
     ;; float32 _cost
       (sys::poke _cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _energyCost
       (sys::poke _energyCost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _robotId
       (write-word _robotId s)
     ;; geometry_msgs/Pose[] _pose
     (write-long (length _pose) s)
     (dolist (elem _pose)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _taskId
     (setq _taskId (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _taskType
     (setq _taskType (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _payload
     (setq _payload (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _taskState
     (setq _taskState (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _cost
     (setq _cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _energyCost
     (setq _energyCost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _robotId
     (setq _robotId (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Pose[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get blackboard::TaskMsg :md5sum-) "36aacfc4fa43201ce4e714ef4c2d80ab")
(setf (get blackboard::TaskMsg :datatype-) "blackboard/TaskMsg")
(setf (get blackboard::TaskMsg :definition-)
      "int16 taskId
int16 priority
int16 taskType
int16 payload
int16 taskState
float32 cost
float32 energyCost
int16 robotId
geometry_msgs/Pose[] pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :blackboard/TaskMsg "36aacfc4fa43201ce4e714ef4c2d80ab")



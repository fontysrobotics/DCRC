;; Auto-generated. Do not edit!


(when (boundp 'blackboard::bbsynch)
  (if (not (find-package "BLACKBOARD"))
    (make-package "BLACKBOARD"))
  (shadow 'bbsynch (find-package "BLACKBOARD")))
(unless (find-package "BLACKBOARD::BBSYNCH")
  (make-package "BLACKBOARD::BBSYNCH"))

(in-package "ROS")
;;//! \htmlinclude bbsynch.msg.html


(defclass blackboard::bbsynch
  :super ros::object
  :slots (_tasks ))

(defmethod blackboard::bbsynch
  (:init
   (&key
    ((:tasks __tasks) (let (r) (dotimes (i 0) (push (instance blackboard::TaskMsg :init) r)) r))
    )
   (send-super :init)
   (setq _tasks __tasks)
   self)
  (:tasks
   (&rest __tasks)
   (if (keywordp (car __tasks))
       (send* _tasks __tasks)
     (progn
       (if __tasks (setq _tasks (car __tasks)))
       _tasks)))
  (:serialization-length
   ()
   (+
    ;; blackboard/TaskMsg[] _tasks
    (apply #'+ (send-all _tasks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; blackboard/TaskMsg[] _tasks
     (write-long (length _tasks) s)
     (dolist (elem _tasks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; blackboard/TaskMsg[] _tasks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tasks (let (r) (dotimes (i n) (push (instance blackboard::TaskMsg :init) r)) r))
     (dolist (elem- _tasks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get blackboard::bbsynch :md5sum-) "6466ca11443297facdd573ec78db41a7")
(setf (get blackboard::bbsynch :datatype-) "blackboard/bbsynch")
(setf (get blackboard::bbsynch :definition-)
      "blackboard/TaskMsg[] tasks
================================================================================
MSG: blackboard/TaskMsg
int16 taskId
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



(provide :blackboard/bbsynch "6466ca11443297facdd573ec78db41a7")



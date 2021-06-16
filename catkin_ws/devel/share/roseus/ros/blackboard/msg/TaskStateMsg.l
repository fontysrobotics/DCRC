;; Auto-generated. Do not edit!


(when (boundp 'blackboard::TaskStateMsg)
  (if (not (find-package "BLACKBOARD"))
    (make-package "BLACKBOARD"))
  (shadow 'TaskStateMsg (find-package "BLACKBOARD")))
(unless (find-package "BLACKBOARD::TASKSTATEMSG")
  (make-package "BLACKBOARD::TASKSTATEMSG"))

(in-package "ROS")
;;//! \htmlinclude TaskStateMsg.msg.html


(defclass blackboard::TaskStateMsg
  :super ros::object
  :slots (_taskId _taskState ))

(defmethod blackboard::TaskStateMsg
  (:init
   (&key
    ((:taskId __taskId) 0)
    ((:taskState __taskState) 0)
    )
   (send-super :init)
   (setq _taskId (round __taskId))
   (setq _taskState (round __taskState))
   self)
  (:taskId
   (&optional __taskId)
   (if __taskId (setq _taskId __taskId)) _taskId)
  (:taskState
   (&optional __taskState)
   (if __taskState (setq _taskState __taskState)) _taskState)
  (:serialization-length
   ()
   (+
    ;; int16 _taskId
    2
    ;; int16 _taskState
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _taskId
       (write-word _taskId s)
     ;; int16 _taskState
       (write-word _taskState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _taskId
     (setq _taskId (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _taskState
     (setq _taskState (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get blackboard::TaskStateMsg :md5sum-) "f5ce57945f778c6d07ba18bc1f23f3bf")
(setf (get blackboard::TaskStateMsg :datatype-) "blackboard/TaskStateMsg")
(setf (get blackboard::TaskStateMsg :definition-)
      "int16 taskId
int16 taskState

")



(provide :blackboard/TaskStateMsg "f5ce57945f778c6d07ba18bc1f23f3bf")



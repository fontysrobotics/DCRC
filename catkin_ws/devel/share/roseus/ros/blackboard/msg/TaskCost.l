;; Auto-generated. Do not edit!


(when (boundp 'blackboard::TaskCost)
  (if (not (find-package "BLACKBOARD"))
    (make-package "BLACKBOARD"))
  (shadow 'TaskCost (find-package "BLACKBOARD")))
(unless (find-package "BLACKBOARD::TASKCOST")
  (make-package "BLACKBOARD::TASKCOST"))

(in-package "ROS")
;;//! \htmlinclude TaskCost.msg.html


(defclass blackboard::TaskCost
  :super ros::object
  :slots (_taskId _taskCost _robotId _energyCost ))

(defmethod blackboard::TaskCost
  (:init
   (&key
    ((:taskId __taskId) 0)
    ((:taskCost __taskCost) 0.0)
    ((:robotId __robotId) 0)
    ((:energyCost __energyCost) 0.0)
    )
   (send-super :init)
   (setq _taskId (round __taskId))
   (setq _taskCost (float __taskCost))
   (setq _robotId (round __robotId))
   (setq _energyCost (float __energyCost))
   self)
  (:taskId
   (&optional __taskId)
   (if __taskId (setq _taskId __taskId)) _taskId)
  (:taskCost
   (&optional __taskCost)
   (if __taskCost (setq _taskCost __taskCost)) _taskCost)
  (:robotId
   (&optional __robotId)
   (if __robotId (setq _robotId __robotId)) _robotId)
  (:energyCost
   (&optional __energyCost)
   (if __energyCost (setq _energyCost __energyCost)) _energyCost)
  (:serialization-length
   ()
   (+
    ;; int16 _taskId
    2
    ;; float32 _taskCost
    4
    ;; int16 _robotId
    2
    ;; float32 _energyCost
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _taskId
       (write-word _taskId s)
     ;; float32 _taskCost
       (sys::poke _taskCost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _robotId
       (write-word _robotId s)
     ;; float32 _energyCost
       (sys::poke _energyCost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _taskId
     (setq _taskId (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _taskCost
     (setq _taskCost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _robotId
     (setq _robotId (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _energyCost
     (setq _energyCost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get blackboard::TaskCost :md5sum-) "0f44cd155759633dbc2acfa15e81bd1c")
(setf (get blackboard::TaskCost :datatype-) "blackboard/TaskCost")
(setf (get blackboard::TaskCost :definition-)
      "int16 taskId
float32 taskCost
int16 robotId
float32 energyCost
")



(provide :blackboard/TaskCost "0f44cd155759633dbc2acfa15e81bd1c")



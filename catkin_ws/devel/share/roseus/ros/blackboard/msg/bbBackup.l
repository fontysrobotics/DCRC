;; Auto-generated. Do not edit!


(when (boundp 'blackboard::bbBackup)
  (if (not (find-package "BLACKBOARD"))
    (make-package "BLACKBOARD"))
  (shadow 'bbBackup (find-package "BLACKBOARD")))
(unless (find-package "BLACKBOARD::BBBACKUP")
  (make-package "BLACKBOARD::BBBACKUP"))

(in-package "ROS")
;;//! \htmlinclude bbBackup.msg.html


(defclass blackboard::bbBackup
  :super ros::object
  :slots (_bbAdress _buAdress ))

(defmethod blackboard::bbBackup
  (:init
   (&key
    ((:bbAdress __bbAdress) "")
    ((:buAdress __buAdress) "")
    )
   (send-super :init)
   (setq _bbAdress (string __bbAdress))
   (setq _buAdress (string __buAdress))
   self)
  (:bbAdress
   (&optional __bbAdress)
   (if __bbAdress (setq _bbAdress __bbAdress)) _bbAdress)
  (:buAdress
   (&optional __buAdress)
   (if __buAdress (setq _buAdress __buAdress)) _buAdress)
  (:serialization-length
   ()
   (+
    ;; string _bbAdress
    4 (length _bbAdress)
    ;; string _buAdress
    4 (length _buAdress)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _bbAdress
       (write-long (length _bbAdress) s) (princ _bbAdress s)
     ;; string _buAdress
       (write-long (length _buAdress) s) (princ _buAdress s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _bbAdress
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bbAdress (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _buAdress
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _buAdress (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get blackboard::bbBackup :md5sum-) "e47aaa65c9ecf31332f737b2f3056288")
(setf (get blackboard::bbBackup :datatype-) "blackboard/bbBackup")
(setf (get blackboard::bbBackup :definition-)
      "string bbAdress
string buAdress
")



(provide :blackboard/bbBackup "e47aaa65c9ecf31332f737b2f3056288")



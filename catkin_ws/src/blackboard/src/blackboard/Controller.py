#!/usr/bin/env python

#---------------------------------------------------------------- 
# Blackboard distributed fleet manager - Fontys lectoraat
# Sep 2020 - Feb 2021 internship Eindhoven BIC
# Hussam Ayoub, 356203@student.fontys.nl

#----------------------------Description------------------------- 
# The controller is responsable for executing tasks for robots
# it contains an instance of ROS movebaseaction and goal to
# execute navigation tasks, for future development this class
# should contain an instance of ROS moveit to execute manipulator
# tasks, which are dropped for the current project for simulation
# limitations
#----------------------------------------------------------------


from .RosCommunication import Talker
import rospy
from std_msgs.msg import String
from std_msgs.msg import Float64MultiArray
import actionlib
from .Task import *
from threading import Thread


# class controller start
class Controller:
    def __init__(self, robotid, talker):
        self.robotid = robotid                              # used to be passed to movebase command object
        self.talker = talker
        self.state = 0                                      # controller state idle
        self.emergency = 0                                  # emergency situation status / 0 means no emergency / 1 means emergency
        rospy.Subscriber('taskFinished',String,self.finishTask)


    def finishTask(self,msg):
        self.state = 1

    def sendGoal(self, goal):
        self.talker.pub_execTask.publish(goal)
        
    
    # called through startExecute function as a thread
    def executeTask(self, task):
        
        self.state = -1                                     # set state to busy
        self.stepcounter = 0                                # reset step counter
        task.analyzeTask()                                  # analyze the task
        
        for step in task.stepsList:                         # send each stgep in task.stepsList as a goal
            temp = [self.robotId, step.pose.position.x,step.pose.position.y]
            temp1 = Float64MultiArray()
            temp1.data = temp
            self.talker.pub_execTask.publish(temp1)
            print(temp1)
        while True:
            if self.state == 1:
                task.taskState = TaskState.Done
      

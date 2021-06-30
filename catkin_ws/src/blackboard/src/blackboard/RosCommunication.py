#---------------------------------------------------------------- 
# Blackboard distributed fleet manager - Fontys lectoraat
# Sep 2020 - Feb 2021 internship Eindhoven BIC
# Hussam Ayoub, 356203@student.fontys.nl

#----------------------------Description------------------------- 
# 
# The Talker class is responsable for initilizing a ROS
# Node and its publishers on specified topics.
#----------------------------------------------------------------


from typing import List
import rospy
from std_msgs.msg import String             
from std_msgs.msg import Float64MultiArray  
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Int16              # Custom built ROS messages
from blackboard.msg import TaskMsg          #
from blackboard.msg import bbBackup         #
from blackboard.msg import TaskCost         #
from blackboard.msg import bbsynch          #
from blackboard.msg import TaskStateMsg     #

import paramiko



class Talker():
    # class constructor with node name variable
    def __init__(self,nodeName):

        # assign passed node name
        self.nodeName = nodeName
        # init publishers:
        self.pub_newTask = rospy.Publisher('newTask', TaskMsg,queue_size=1)                 # new task publisher
        self.pub_robotState = rospy.Publisher('robotState', String,queue_size=1)            # robot state to simulate defect
        self.pub_bbSync = rospy.Publisher('BbSync', bbsynch,queue_size=1)                   # syncronize blackboard task list
        self.pub_taskBC = rospy.Publisher('taskBC', TaskMsg,queue_size=1)                   # broadcast a task over topic
        self.pub_bbBackup = rospy.Publisher('bbBackup', bbBackup,queue_size=1)              # blackboard and backup adresses
        self.pub_taskAssign = rospy.Publisher('taskAssign', TaskMsg,queue_size=1)           # assign a task to robot
        self.pub_taskCost = rospy.Publisher('taskCost', TaskCost,queue_size=1)              # send task cost from robots
        self.pub_taskState = rospy.Publisher('TaskStateMsg', TaskStateMsg,queue_size=1)     # update task state in blackboare
        self.pub_Emergency = rospy.Publisher('Emergency', String,queue_size=1)              # emergency situation topic
        self.pub_EmStop = rospy.Publisher('EmStop', String,queue_size=1)                    # emergency stop topic
        self.pub_Priority = rospy.Publisher('taskPriority',Int16,queue_size=1)              # send msg to robotinstance to return task priority
        self.pub_returnPriority = rospy.Publisher('returnTaskPriority',Int16,queue_size=1)  # robotinstance returns priority to robotPI via ssh
        self.pub_execTask = rospy.Publisher('executeTask',Float64MultiArray,queue_size=1)   # pass goal and robot_id to robotPi to make robot go to goal
        self.pub_robotPose = rospy.Publisher('robotPose',PoseStamped,queue_size=1)
        rospy.init_node(nodeName, anonymous=False)                                          # initilize ROS node

        


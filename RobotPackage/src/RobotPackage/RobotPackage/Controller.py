import time
from typing import List
import rclpy
from rclpy.node import Node
from std_msgs.msg import String,Int16,Float64MultiArray
from sensor_msgs.msg import LaserScan
from .Robot import Robot
from .TCPClient import TCPClient

class Controller(Node):

    def __init__(self):
        super().__init__('Controller')
        self.robot = Robot()
        self.client = TCPClient()
        self.client.connect()
        self.colabData = []
        self.goal = []
        self.agvs = []
        self.priority = -999
        self.pub_GetPriority = self.create_publisher(Int16, 'getPriority', 10)
        self.execTask = self.create_subscription(
            Float64MultiArray,
             'executeTask',
            self.CheckGoal,
            10
        )
        self.lidarSubscription = self.create_subscription(
            LaserScan,
            '/scan',
            self.getLidarData,
            10
        )
        #Subscribe via SSH
        self.subscriptionToEmergencyMessage = self.create_subscription(
            String,
            'EmStop',
            self.emergencyStop,
            10)

        self.subscriptionToTaskPriority = self.create_subscription(
            Int16,
            'returnTaskPriority',
            self.getRobotTaskPriority,
            10)

        self.execTask
        self.subscriptionToTaskPriority
        self.subscriptionToEmergencyMessage
        self.lidarSubscription

    def emergencyStop(self, msg):
        print(msg)
        self.robot.EmergencyStop(msg)

    def getAGVListFromServer(self):
        #get robots in radius from colab via tcp
        self.agvs = self.client.getAgvs()
        #filter robots in 50cm range
        for i in range(len(self.agvs)):
            if self.agvs[i][1] >= 0.5:
                self.agvs.pop(i)

    def getLidarData(self,data):
        print(len(data.ranges))
        #filter AGVs in 50cm range from lidar data
        if data.ranges[0]<=0.5:
            #get agvs in radius around this robot from colab
            self.getAGVListFromServer()
            #self.agvs contains robots in 50cm range according to colab data
            for i in range(len(self.agvs)):
                #filter AGVs from colab in 5 degrees range
                #if there is a robot that fulfulls the check then that is what the lidar detected
                if self.agvs[i][3]>=-2.5 and self.agvs[i][3]<=2.5:
                    #stop current task to avoid crash
                    self.robot.EmergencyStop("Stop")
                    #get priority of tasks of both robots and compare them
                    self.pub_GetPriority.publish(self.agvs[i][0])
                    otherRobotPr = self.priority

                    self.pub_GetPriority.publish(self.client.colab_id)
                    myPr = self.priority

                    if myPr > otherRobotPr:
                        #if this robot's priority is greater then we wait for the other to get out of the way
                        time.sleep(2)
                        self.robot.EmergencyStop("Resume")
                    elif myPr < otherRobotPr:
                        #if this robot's priority is not greater then we give it an intermediate goal
                        #in order to get it out of the way, the goal x stays the same, the goal y is increased
                        #so the robot moves out of the way
                        self.robot.goToGoal(self.goal[0],self.goal[1]+5,self.colabData[0],self.colabData[1])
                        #we wait until the goal is achieved
                        while self.robot.goalReached != True:
                            print("getting out of the way")
                        #after it has gotten out of the way we give it its initial goal
                        self.robot.goToGoal(self.goal[0],self.goal[1],self.colabData[0],self.colabData[1])

    def CheckGoal(self,msg):
            if msg.data[0] == self.robot.robot_id:
                self.colabData = self.client.getPreprocessedData()
                self.goal = [msg.data[1],msg.data[2]]
                self.robot.goToGoal(self.goal,self.colabData[0],self.colabData[1])
                
    def getRobotTaskPriority(self,data):
        self.priority = data


def main(args=None):
    rclpy.init(args=args)

    controller = Controller()
    rclpy.spin(controller)
    controller.destroy_node()
    controller.client.disconnect()
    rclpy.shutdown()


if __name__ == '__main__':
    main()

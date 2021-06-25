import time
from typing import List
import rclpy
from rclpy.node import Node
from std_msgs.msg import String
from sensor_msgs.msg import LaserScan
from .Robot import Robot
from .TCPClient import TCPClient

class Controller(Node):

    def __init__(self):
        super().__init__('Controller')
        self.robot = Robot()
        self.client = TCPClient()
        self.client.connect()
        self.agvs = []
        self.priority = -999
        self.pub_GetPriority = self.create_publisher(int, 'getPriority', 10)
        self.execTask = self.create_subscription(
            List,
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
            int,
            'returnTaskPriority',
            self.getRobotTaskPriority,
            10)

        self.execTask
        self.subscriptionToTaskPriority
        self.subscriptionToEmergencyMessage
        self.lidarSubscription

    def emergencyStop(self, msg):
        print(msg)
        self.robot.EmergencyStop()

    def getAGVListFromServer(self):
        self.agvs = self.client.getAgvs()
        for i in range(len(self.agvs)):
            if self.agvs[i][1] >= 0.5:
                self.agvs.pop(i)

    def getLidarData(self,data):
        print(len(data.ranges))
        if data.ranges[0]<=0.5:
            #filter AGVs in 50cm range
            self.getAGVListFromServer()
            for i in range(len(self.agvs)):
                #filter AGVs in 5 degrees range
                if self.agvs[i][3]<5:
                    #stop current task to avoid crash
                    self.robot.EmergencyStop()
                    #get priority of tasks of both robots
                    self.pub_GetPriority.publish(self.agvs[i][0])
                    time.sleep(1)
                    otherRobotPr = self.priority

                    self.pub_GetPriority.publish(self.client.colab_id)
                    time.sleep(1)
                    myPr = self.priority
                    #make decision which should go and which should get out of the way


    def getRobotTaskPriority(self,data):
        self.priority = data

    def CheckGoal(self,data):
        if data[0] == self.robot.robot_id:
            colabData = self.client.getPreprocessedData()
            self.robot.goToGoal(data[1],colabData[0],colabData[1])


def main(args=None):
    rclpy.init(args=args)

    controller = Controller()
    rclpy.spin(controller)
    controller.destroy_node()
    controller.client.disconnect()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
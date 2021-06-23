import rclpy
from rclpy.node import Node
from std_msgs.msg import String
from .Robot import Robot
from sensor_msgs.msg import LaserScan

class Controller(Node):

    def __init__(self):
        super().__init__('Controller')
        self.robot = Robot()
        self.lidarSubscription = self.create_subscription(
            LaserScan,
            '/scan',
            self.getLidarData,
            10
        )
        self.subscriptionToEmergencyMessage = self.create_subscription(
            String,
            'EmStop',
            self.emergencyStop,
            10)

        self.subscriptionToEmergencyMessage  # prevent unused variable warning
        self.lidarSubscription

    def emergencyStop(self, msg):
        print(msg)
        self.robot.EmergencyStop()

    def getLidarData(self,data):
        print(len(data.ranges))



def main(args=None):
    rclpy.init(args=args)

    controller = Controller()
    rclpy.spin(controller)
    # Destroy the node explicitly
    # (optional - otherwise it will be done automatically
    # when the garbage collector destroys the node object)
    controller.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()

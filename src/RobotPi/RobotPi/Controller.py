import rclpy
from rclpy.node import Node
from std_msgs.msg import String
from .Robot import Robot

class Controller(Node):

    def __init__(self):
        super().__init__('Controller')
        self.robot = Robot()

        self.subscriptionToEmergencyMessage = self.create_subscription(
            String,
            'EmStop',
            self.emergencyStop,
            10)

        self.subscriptionToEmergencyMessage  # prevent unused variable warning

    def emergencyStop(self, msg):
        print(msg)
        self.robot.EmergencyStop()


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

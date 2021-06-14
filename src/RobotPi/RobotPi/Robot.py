import gpiozero
import numpy
from time import sleep

class Robot():

    def __init__(self):
        #RF = RightFront     
        self.motorRFin1 = gpiozero.LED(22)#27
        self.motorRFin2 = gpiozero.LED(24)#23
        self.motorRF_PWM = gpiozero.PWMLED(19)#18

        # LF= LefFront
        self.motorLFin3 = gpiozero.LED(27)
        self.motorLFin4 = gpiozero.LED(23)
        self.motorLF_PWM = gpiozero.PWMLED(18)

        # RR = RightRear
        self.motorRRin1 = gpiozero.LED(25)#8
        self.motorRRin2 = gpiozero.LED(10)#9
        self.motorRR_PWM = gpiozero.PWMLED(12)#13

        # LR = LeftRear
        self.motorLRin3 = gpiozero.LED(8)
        self.motorLRin4 = gpiozero.LED(9)
        self.motorLR_PWM = gpiozero.PWMLED(13)

    #GPIO and PWM for moving rightfront wheel
    def RF(self,speed):
        #print("RF: ",speed)
        if speed > 0:
            self.motorRFin1.on()
            self.motorRFin2.off()
            self.motorRF_PWM.value = speed
        elif speed < 0:
            self.motorRFin1.off()
            self.motorRFin2.on()
            self.motorRF_PWM.value = (-1*speed)
        elif speed == 0:
            self.motorRFin1.off()
            self.motorRFin2.on()
            self.motorRF_PWM.value = 0

    #GPIO and PWM for moving leftfront wheel
    def LF(self,speed):
        #print("LF: ",speed)
        if speed >= 0:
            self.motorLFin3.on()
            self.motorLFin4.off()
            self.motorLF_PWM.value = speed
        elif speed < 0:
            self.motorLFin3.off()
            self.motorLFin4.on()
            self.motorLF_PWM.value = (-1*speed)
        elif speed == 0:
            self.motorLFin3.off()
            self.motorLFin4.on()
            self.motorLF_PWM.value = 0

    #GPIO and PWM for moving rightrear wheel
    def RR(self,speed):
        #print("RR: ",speed)
        if speed >= 0:
            self.motorRRin1.on()
            self.motorRRin2.off()
            self.motorRR_PWM.value = speed
        elif speed < 0:
            self.motorRRin1.off()
            self.motorRRin2.on()
            self.motorRR_PWM.value = (-1*speed)
        elif speed == 0:
            self.motorRRin1.off()
            self.motorRRin2.on()
            self.motorRR_PWM.value = 0

    #GPIO and PWM for moving leftrear wheel
    def LR(self,speed):
        #print("LR: ",speed)
        if speed >= 0:
            self.motorLRin3.on()
            self.motorLRin4.off()
            self.motorLR_PWM.value = speed
        elif speed < 0:
            self.motorLRin3.off()
            self.motorLRin4.on()
            self.motorLR_PWM.value = (-1*speed)
        elif speed == 0:
            self.motorLRin3.off()
            self.motorLRin4.on()
            self.motorLR_PWM.value = 0
            
    #GPIO states for forward motion
    def forward(self,speed):
        self.RF(speed)
        self.LF(speed)
        self.RR(speed)
        self.LR(speed)

    def Stop(self,Speed,Angle):
        if (Angle >= -1.57 and Angle < 0):
            self.RF(-Speed)
            self.RR((numpy.cos(2*Angle)*-Speed))
            self.LF((numpy.cos(2*Angle)*-Speed))
            self.LR(-Speed)
        elif (Angle >= -3.14 and Angle < 1.57):
            self.RF((numpy.cos(2*Angle)*Speed))
            self.RR(Speed)
            self.LF(Speed)
            self.LR((numpy.cos(2*Angle)*Speed))
        elif (Angle >= 0 and Angle < 1.57):
            self.RR(-Speed)
            self.RF((numpy.cos(2*Angle)*-Speed))
            self.LR((numpy.cos(2*Angle)*-Speed))
            self.LF(-Speed)
        elif (Angle >= 1.57 and Angle <= 3.14):
            self.RF(Speed)
            self.RR((numpy.cos(2*Angle)*Speed))
            self.LF((numpy.cos(2*Angle)*Speed))
            self.LR(Speed)
        sleep(0.2)
        self.RF(0)
        self.LF(0)
        self.RR(0)
        self.LR(0)


    def EmergencyStop(self):
        self.RF(0)
        self.LF(0)
        self.RR(0)
        self.LR(0)



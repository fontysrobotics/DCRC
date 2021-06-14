"""This module is used to receive the location data from the UWB tags, process the data and publish the processed data on the MQTT network on a separate thread"""

#import paho.mqtt.publish as publish
from statistics import mean
import threading
import serial
import math
import time
import json
import gpiozero
import numpy
from time import sleep
#import CoLAB_config as config
print("Test1")
running = False

preProcessedLocation = [0,0]
preProcessedOrientation = 0

#RF = RightFront     
motorRFin1 = gpiozero.LED(22)#27
motorRFin2 = gpiozero.LED(24)#23
motorRF_PWM = gpiozero.PWMLED(19)#18

# LF= LefFront
motorLFin3 = gpiozero.LED(27)
motorLFin4 = gpiozero.LED(23)
motorLF_PWM = gpiozero.PWMLED(18)

# RR = RightRear
motorRRin1 = gpiozero.LED(25)#8
motorRRin2 = gpiozero.LED(10)#9
motorRR_PWM = gpiozero.PWMLED(12)#13

# LR = LeftRear
motorLRin3 = gpiozero.LED(8)
motorLRin4 = gpiozero.LED(9)
motorLR_PWM = gpiozero.PWMLED(13)

goalReached = False
Xgoal = 4
Ygoal = 2
Rotgoal = 0

Speed = 0.3
maxSpeed = 0.4
minSpeed = 0.2
locationTolerance = 0.3

#GPIO and PWM for moving rightfront wheel
def RF(speed):
    #print("RF: ",speed)
    if speed > 0:
        motorRFin1.on()
        motorRFin2.off()
        motorRF_PWM.value = speed
    elif speed < 0:
        motorRFin1.off()
        motorRFin2.on()
        motorRF_PWM.value = (-1*speed)
    elif speed == 0:
        motorRFin1.off()
        motorRFin2.on()
        motorRF_PWM.value = 0

#GPIO and PWM for moving leftfront wheel
def LF(speed):
    #print("LF: ",speed)
    if speed >= 0:
        motorLFin3.on()
        motorLFin4.off()
        motorLF_PWM.value = speed
    elif speed < 0:
        motorLFin3.off()
        motorLFin4.on()
        motorLF_PWM.value = (-1*speed)
    elif speed == 0:
        motorLFin3.off()
        motorLFin4.on()
        motorLF_PWM.value = 0

#GPIO and PWM for moving rightrear wheel
def RR(speed):
    #print("RR: ",speed)
    if speed >= 0:
        motorRRin1.on()
        motorRRin2.off()
        motorRR_PWM.value = speed
    elif speed < 0:
        motorRRin1.off()
        motorRRin2.on()
        motorRR_PWM.value = (-1*speed)
    elif speed == 0:
        motorRRin1.off()
        motorRRin2.on()
        motorRR_PWM.value = 0

#GPIO and PWM for moving leftrear wheel
def LR(speed):
    #print("LR: ",speed)
    if speed >= 0:
        motorLRin3.on()
        motorLRin4.off()
        motorLR_PWM.value = speed
    elif speed < 0:
        motorLRin3.off()
        motorLRin4.on()
        motorLR_PWM.value = (-1*speed)
    elif speed == 0:
        motorLRin3.off()
        motorLRin4.on()
        motorLR_PWM.value = 0
        
#GPIO states for forward motion
def forward(speed):
    RF(speed)
    LF(speed)
    RR(speed)
    LR(speed)

def Stop(Speed,Angle):
    if (Angle >= -1.57 and Angle < 0):
        RF(-Speed)
        RR((numpy.cos(2*Angle)*-Speed))
        LF((numpy.cos(2*Angle)*-Speed))
        LR(-Speed)
    elif (Angle >= -3.14 and Angle < 1.57):
        RF((numpy.cos(2*Angle)*Speed))
        RR(Speed)
        LF(Speed)
        LR((numpy.cos(2*Angle)*Speed))
    elif (Angle >= 0 and Angle < 1.57):
        RR(-Speed)
        RF((numpy.cos(2*Angle)*-Speed))
        LR((numpy.cos(2*Angle)*-Speed))
        LF(-Speed)
    elif (Angle >= 1.57 and Angle <= 3.14):
        RF(Speed)
        RR((numpy.cos(2*Angle)*Speed))
        LF((numpy.cos(2*Angle)*Speed))
        LR(Speed)
    sleep(0.2)
    RF(0)
    LF(0)
    RR(0)
    LR(0)

# receive the location data from the UWB tags, process the data and publish the processed data on the MQTT network
def sendLocation():
    """Receive the location data from the UWB tags, process the data and publish the processed data on the MQTT network"""
    global goalReached
    global Xgoal
    global Ygoal
    global Rotgoal
    global running
    global preProcessedLocation
    global preProcessedOrientation
    running = True
    readingCount = 0
    lastReading = 0

    #Rear tag serial config
    serRear = serial.Serial()
    serRear.port = '/dev/serial/by-id/usb-SEGGER_J-Link_000760116036-if00' #red tag
    serRear.baudrate = 115200
    serRear.bytesize = serial.EIGHTBITS 
    serRear.parity =serial.PARITY_NONE 
    serRear.stopbits = serial.STOPBITS_ONE 
    serRear.timeout = 1
    serRear.open()
    serRear.write(b'\r\r')
    
    #Front tag serial config
    serFront = serial.Serial()
    serFront.port = '/dev/serial/by-id/usb-SEGGER_J-Link_000760116041-if00' #000760116036-if00
    serFront.baudrate = 115200
    serFront.bytesize = serial.EIGHTBITS 
    serFront.parity =serial.PARITY_NONE 
    serFront.stopbits = serial.STOPBITS_ONE 
    serFront.timeout = 1
    serFront.open()
    serFront.write(b'\r\r')

    time.sleep(0.5)

    serFront.close()
    serRear.close()

    time.sleep(0.5)

    serFront.open()
    serRear.open()

    # loop until running is no longer true
    while running == True:
        # read the location data from the UWB tags 5 times per second
        if (time.perf_counter()-lastReading) > 1/5:

            # save the time of this reading
            lastReading = time.perf_counter()

            #Start with empty lists if the reading count is 0
            if readingCount == 0:
                FTagX = []
                FTagY = []
                RTagX = []
                RTagY = []

            # read location data from rear UWB tag
            serRear.write(b'apg\n')
            serRear.readline()
            dataRear= str(serRear.readline())

            # read location data from front UWB tag
            serFront.write(b'apg\n')
            serFront.readline()
            dataFront = str(serFront.readline())
            #print(dataFront)

            # extract x, y, z and qf values from the raw received data of the rear tag
            dataRear = dataRear.split(' ')
            dataRear[1] = float(dataRear[1].replace("x:","")) 
            dataRear[2] = float(dataRear[2].replace("y:","")) 
            dataRear[3] = float(dataRear[3].replace("z:","")) 
            dataRear[4] = dataRear[4].replace("qf:","")
            dataRear[4] = float(dataRear[4].replace("\\r\\n'",""))
            dataRear.pop(0)

            # extract x, y, z and qf values from the raw received data of the front tag
            dataFront = dataFront.split(' ')
            dataFront[1] = float(dataFront[1].replace("x:","")) 
            dataFront[2] = float(dataFront[2].replace("y:","")) 
            dataFront[3] = float(dataFront[3].replace("z:","")) 
            dataFront[4] = dataFront[4].replace("qf:","")
            dataFront[4] = float(dataFront[4].replace("\\r\\n'",""))
            dataFront.pop(0)

            # add the received x and y data to the lists
            FTagX.append(dataFront[0])
            FTagY.append(dataFront[1])
            RTagX.append(dataRear[0])
            RTagY.append(dataRear[1])

            # update readingCount
            readingCount += 1

        # preprocess the readings from the UWB tag if 10 readings are done
        if readingCount == 1:
            # preprocess the last 10 readings
            frontTagX = mean(FTagX) # FrontTag and RearTag are arrays 1x2 
            frontTagY = mean(FTagY)
            rearTagX = mean(RTagX)
            rearTagY = mean(RTagY)

            # find midpoint location
            midpointX = ((frontTagX-rearTagX)/2 + rearTagX)/1000
            midpointY = ((frontTagY-rearTagY)/2 + rearTagY)/1000
            preProcessedLocation = [round(midpointX, 2) , round(midpointY, 2)]

            # find orientation
            preProcessedOrientation = math.atan2((frontTagY-rearTagY), (frontTagX-rearTagX)) * 180/math.pi

            # find accuracy
            calculatedDistanceBetweenTags = math.sqrt(math.pow((frontTagX-rearTagX),2) + math.pow((frontTagY-rearTagY),2))/10
            errorDistanceBetweenTags = round(abs(calculatedDistanceBetweenTags-30),2)

            # build the dictionary with the data to send
            messageToSend = {
              "colab_id": "Holonomic1",
              "location": preProcessedLocation,
              "orientation": int(preProcessedOrientation),
              "errorDistance": errorDistanceBetweenTags
            }
            print(messageToSend)

            # create a string with the data in JSON format
            payloadToSend = json.dumps(messageToSend)

            # publish the data on the MQTT topic
            #publish.single("CRL/location", payloadToSend, hostname="test.mosquitto.org")

            # reset the reading count to 0
            readingCount = 0
            
        if goalReached:
            Xgoal = float(input('X position'))
            Ygoal = float(input('Y position'))
            #Rotgoal = float(input('Rot position'))
            goalReached = False
        
        if (not goalReached):
            PosError = math.sqrt(math.pow((Xgoal-preProcessedLocation[0]),2) + math.pow((Ygoal-preProcessedLocation[1]),2))
            RotError = (preProcessedOrientation/57.3) - math.atan2((Ygoal-preProcessedLocation[1]),(Xgoal-preProcessedLocation[0]))
            angle = 0
            if angle>3.14:
                angle = angle-6.28
            #elif angle <-3.14:
            #    angle = angle+6.28
            print(Xgoal,Ygoal,preProcessedLocation,angle,RotError,preProcessedOrientation,PosError)
            if angle == 0:
                forward(0.4)
            if PosError < 3:
                Speed = (((maxSpeed-minSpeed)/2.5)*PosError)+minSpeed
            elif PosError >=3:
                Speed = maxSpeed
            if (angle >= -1.57 and angle < 0):
                #print("1")
                RF(Speed)
                RR((numpy.cos(2*angle)*Speed))
                LF((numpy.cos(2*angle)*Speed))
                LR(Speed)
            elif (angle >= -3.14 and angle < -1.57):
                #print("2")
                RF((numpy.cos(2*angle)*-Speed))
                RR(-Speed)
                LF(-Speed)
                LR((numpy.cos(2*angle)*-Speed))
            elif (angle > 0 and angle < 1.57):
                #print("3")
                RR(Speed)
                RF((numpy.cos(2*angle)*Speed))
                LR((numpy.cos(2*angle)*Speed))
                LF(Speed)
            elif (angle >= 1.57 and angle <= 3.14):
                #print("4")
                RF(-Speed)
                RR((numpy.cos(2*angle)*-Speed))
                LF((numpy.cos(2*angle)*-Speed))
                LR(-Speed)
            if PosError < locationTolerance:
                goalReached = True
                Stop(Speed,angle)

# create a thread to send location data
def startSending():
    """Start a thread for receiving UWB data from the tags and sending the processed data over the MQTT network"""
    
    t = threading.Thread(target=sendLocation)
    t.daemon = True
    t.start()

# stop the thread for sending location data
def stopSending():
    """Stop the thread for receiving UWB data from the tags and sending the processed data over the MQTT network"""

    global running
    running = False
    
#startSending()
sendLocation()
#while True:
#        forward(0.5)
#	RF(0.5)
#	RR(-0.5)
#	LF(-0.5)
#	LR(0.5)

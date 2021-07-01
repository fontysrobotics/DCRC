import socket, pickle
import sys
from typing import List

class TCPClient():

    def __init__(self):
        self.HOST, self.PORT = "145.93.68.114", 9999
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    def connect(self):
        try:
            self.sock.connect((self.HOST, self.PORT))
        except ConnectionError:
            print("Can't connect to server!")
        
    def sendGoal(self,data):
        self.request.sendall(pickle.dumps(data))

    def disconnect(self):
        self.sock.close()

        
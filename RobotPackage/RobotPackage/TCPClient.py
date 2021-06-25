import socket, pickle
import sys
from typing import List
class TCPClient():

    def __init__(self):
        self.HOST, self.PORT = "145.93.68.114", 9999
        self.colab_id = 1
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    def connect(self):
        try:
            self.sock.connect((self.HOST, self.PORT))
        except ConnectionError:
            print("Can't connect to server!")
        
    def getAgvs(self)->List:
        self.sock.sendall(b'List')
        received = self.sock.recv(1024)
        agvList = pickle.loads(received)
        print(agvList)
        return agvList

    def getPreprocessedData(self):
        self.sock.sendall(b'Preprocessed')
        received = self.sock.recv(1024)
        preprocessed = pickle.loads(received)
        print(preprocessed)
        return preprocessed

    def disconnect(self):
        self.sock.close()

        
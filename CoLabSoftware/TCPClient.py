import socket, pickle
import sys
class TCPClient():

    def __init__(self):
        self.HOST, self.PORT = "145.93.68.114", 9999
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    def connect(self):
        try:
            self.sock.connect((self.HOST, self.PORT))
        except ValueError:
            print("Can't connect to server!")
        
    def getData(self):
        self.sock.sendall(b'List')
        received = self.sock.recv(1024)
        agvList = pickle.loads(received)
        print(agvList)

    def disconnect(self):
        self.sock.close()

    def doJob(self):
        self.connect()
        self.getData()
        self.disconnect()

if __name__ == "__main__":
    temp = TCPClient()
    temp.doJob()


        
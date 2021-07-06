import socketserver, pickle
from .Robot import Robot
class TCPServer(socketserver.BaseRequestHandler):
    def handle(self):
        data = self.sock.recv(1024)
        processed = pickle.loads(data)
        if processed[0] == 'Task':
            Robot.goToGoal(processed[1],processed[2],processed[3],processed[4])
        elif processed[0] == 'Emergency':
            Robot.EmergencyStop(processed[1])
        
if __name__ == "__main__":
    HOST, PORT = "145.93.68.114", 9999
    server = socketserver.TCPServer((HOST, PORT), TCPServer)
    server.serve_forever()
    
    
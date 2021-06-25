import socketserver, pickle
from CoLAB_main import AGVMap
class TCPServer(socketserver.BaseRequestHandler):
    def handle(self):
        data = self.request.recv(1024).strip()
        if data == b'List':
            self.request.sendall(pickle.dumps(AGVMap))
        else:
            self.request.sendall(b'Default')
        
if __name__ == "__main__":
    HOST, PORT = "145.93.68.114", 9999
    server = socketserver.TCPServer((HOST, PORT), TCPServer)
    server.serve_forever()
    
    
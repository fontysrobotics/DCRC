import socketserver, pickle
import CoLAB_main as colab
class TCPServer(socketserver.BaseRequestHandler):

    def handle(self):
        data = self.request.recv(1024).strip()
        if data == b'List':
            agvList = colab.getAGVList()
            #agvList = [1,2,5,6,7,[1,2,3]]
            self.request.sendall(pickle.dumps(agvList))
        else:
            self.request.sendall(b'Default')
        
if __name__ == "__main__":
    HOST, PORT = "145.93.68.114", 9999
    server = socketserver.TCPServer((HOST, PORT), TCPServer)
    server.serve_forever()
    
    
import socket
import sys

HOST, PORT = "192.168.43.221", 9999
#data = b'asgasgag'

# Create a socket (SOCK_STREAM means a TCP socket)
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

try:
    # Connect to server and send data
    sock.connect((HOST, PORT))
    sock.sendall(b'agg')

    # Receive data from the server and shut down
    received = sock.recv(1024)
finally:
    sock.close()

print("Sent:     {}".format(b'agg'))
print("Received: {}".format(received))
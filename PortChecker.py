#!/usr/bin/python

# A python tool I wrote to find if a port is open or closed.

import socket
ip = raw_input("Enter the ip: ")
port = input("Enter the port: ")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
if s.connect_ex((ip, port)):
	      print "Port", port, "is closed"
else:
        print "Port", port, "is open"

# Hercules 01: Lernaean Hydra

**Goals**
In this project, you will start learning a little more about sockets and getting a brief overlook at how the network works

**Mandatory Part**
Write a fully functional server in C that anwsers any ping request two pongs.
It can run as  a daemon (advisable), or as a simple program

**Commands to Run**
Compile -
	gcc client.c -o client
	gcc server.c -o server

If already complied -
	Run ./server with the PORT option of 8080 in a first terminal
		./server 8080
	Run ./client with the IP 127.0.0.1 and PORT 8080 in a second terminal
		./client 127.0.0.1 8080


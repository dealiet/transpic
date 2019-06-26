CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
PROJECT(server)
ADD_EXECUTABLE(server 
main.c
error.c
Server.h
server_process.c
)

TARGET_LINK_LIBRARIES(server
pthread
turbojpeg
)

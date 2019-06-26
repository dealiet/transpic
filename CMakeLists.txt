CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
PROJECT(server)

SET(CMAKE_FIND_ROOT_PATH ${CMAKE_INSTALL_PREFIX})
message("CMAKE_INSTALL_PREFIX" ${CMAKE_INSTALL_PREFIX}/libjpeg-turbo)
message("TURBO_LIBRARY" ${CMAKE_INSTALL_PREFIX}/libjpeg-turbo/bin)
message("TURBO_INCLUDE" ${CMAKE_INSTALL_PREFIX}/libjpeg-turbo/include)


include_directories("${CMAKE_INSTALL_PREFIX}/libjpeg-turbo/include/")
link_directories("${CMAKE_INSTALL_PREFIX}/libjpeg-turbo/lib64/")

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

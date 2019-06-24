CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
PROJECT(server)
SET(CMAKE_SYSTEM_NAME_NAME linux)
SET(CMAKE_C_COMPILER "aarch64-linux-gnu-gcc")
SET(CMAKE_CXX_COMPILER "aarch64-linux-gnu-gcc")
SET(CMAKE_FIND_ROOT_PATH ~/jpegturbo/opt/libjpeg-turbo/)
include_directories("~/jpegturbo/opt/libjpeg-turbo/include/")
link_directories("~/jpegturbo/opt/libjpeg-turbo/lib64")
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
install(TARGETS server
  RUNTIME DESTINATION
)

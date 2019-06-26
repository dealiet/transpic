CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
PROJECT(server)
#SET(CMAKE_SYSTEM_NAME_NAME linux)
#SET(CMAKE_C_COMPILER "aarch64-linux-gnu-gcc")
#SET(CMAKE_CXX_COMPILER "aarch64-linux-gnu-gcc")
#find_package(JPEG REQUIRED)
#SET(CMAKE_FIND_ROOT_PATH ~/jpegturbo/opt/libjpeg-turbo/)
#include_directories("~/jpegturbo/opt/libjpeg-turbo/include/")
#link_directories("~/jpegturbo/opt/libjpeg-turbo/lib64")

find_package(PkgConfig)
pkg_search_module(TURBO_JPEG REQUIRED libturbojpeg)

ADD_EXECUTABLE(server 
main.c
error.c
Server.h
server_process.c
)

TARGET_INCLUDE_DIRECTORIES(server PRIVATE ${TURBO_JPEG_INCLUDE_DIR})

message("JPEG_LIBRARIES:    " ${TURBO_JPEG_LIBRARIES})

TARGET_LINK_LIBRARIES(server
pthread
${TURBO_JPEG_LIBRARIES}
)

install(TARGETS server
  RUNTIME DESTINATION bin
)

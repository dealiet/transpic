#ifndef SERVER_H
#define SERVER_H
#include<stdio.h>
#include<string.h>
#include<sys/select.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<unistd.h>
#include<pthread.h>
#include<stdlib.h>
#include<jpeglib.h>
#include<turbojpeg.h>
#include<setjmp.h>
#include<netdb.h>
#include <stdio.h>
#include <sys/time.h>

#define maxptd 3                     //最大可连接客户数
#define ServerPort 50717             //TCP默认端口

typedef unsigned char uchar;


pthread_mutex_t mutex;


char buf[1024];

struct Clients{                      //客户表
	int sockfd;
	unsigned short port;         
	struct in_addr addr;
	int stat;
};


struct Clients ent[maxptd];


void server_process(int index);



void error(const char *msg);

#endif

#include "Server.h"
const int quality = 20;
const int color_components = 4;
int inwidth = 1024;
int inheight = 768;
int pixelfmt = TJPF_RGB;


/*压缩*/
int pic_compress(uchar *rgb_buffer, uchar **outjpg_buffer, unsigned long *outjpg_size)
{
  tjhandle handle = NULL;
  int flags = 0;
  int subsamp = TJSAMP_422;
  handle=tjInitCompress();
  if (NULL == handle) {
    return -1;
  }

  int ret = tjCompress2(handle, rgb_buffer,inwidth,0,inheight,pixelfmt,outjpg_buffer,outjpg_size,subsamp,quality,flags);
  if (0 != ret) {
    tjDestroy(handle);
    return -1;
  }
  tjDestroy(handle);
  return 0;
}


/*发送图片*/
void pic_send(int info, uchar *outpic, struct sockaddr_in address, socklen_t len,int no,unsigned long size)
{
    uchar *buf_temp;   
	buf_temp=(uchar*)malloc(sizeof(char)*65535);
    
    memcpy(buf_temp,outpic,size);
    if(sendto(info,buf_temp,size,0,(struct sockaddr *) &address,len) == -1)
    {    printf("user %d sending problem,stat is %d,ip is %s,port is %d,fd is %d\n",no,ent[no].stat,inet_ntoa(address.sin_addr),ntohs(address.sin_port),info);
         error("sendto");
		 ent[no].stat = 0;
    }
	free(buf_temp);
	buf_temp = NULL;
}




void server_process(int index){
	
	printf("client server port:%d\n",ent[index].port);
	int server_udp_fd = socket(AF_INET, SOCK_DGRAM, 0);
	int port = ServerPort+index;
	if(-1 == server_udp_fd) error("socket");
	printf("user %d's fd is:%d\n",index,server_udp_fd);
	struct sockaddr_in servaddr_2 = {0},fromaddr = {0},overseeaddr = {0};
	servaddr_2.sin_family = AF_INET;
	servaddr_2.sin_addr.s_addr = INADDR_ANY;
	servaddr_2.sin_port = htons(port);
	socklen_t len = sizeof(fromaddr);
	int on = 1;
	setsockopt(server_udp_fd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on));
	while(1){
		
	if(-1 != bind(server_udp_fd, (struct sockaddr*)&servaddr_2,len)) break;
	else{
		port++;
		servaddr_2.sin_port = htons(port);
		}
	}
	
	
	fromaddr.sin_addr = ent[index].addr;
	fromaddr.sin_family = AF_INET;
	fromaddr.sin_port = htons(ent[index].port);
	
	
	fd_set rset;
	bzero(buf,0); 
	
	char *filename = "source.bmp";
    int move = 0;
	char readbuf[100];
	
	printf("图片包传输中...\n");	


	
    for(;move<512;move+=32){		
		struct timeval tv = {0,200000};   
		FD_ZERO(&rset);
		FD_SET(server_udp_fd,&rset);
		select(server_udp_fd+1,&rset,NULL,NULL,&tv);
		int n;
		
		if(FD_ISSET(server_udp_fd,&rset))
		{
			
			if((n = recvfrom(server_udp_fd,buf,1024,0,(struct sockaddr*)&overseeaddr,&len))<0)
			error("recv");
		}
		else 
		{
			pthread_mutex_lock(&mutex);
			ent[index].stat = 0;
			pthread_mutex_unlock(&mutex);
			printf("客户%d中断连接\n",index);
			break;
		}
		
		uchar *buffer;   
		if((buffer = tjLoadImage(filename, &inwidth, 4, &inheight, &pixelfmt, 0))==NULL)error("load error:");
		for(int j = 0;j<128;j++){
			for(int k = 0;k<inheight;k++){
				buffer[j+inwidth*k+move] = 0;
			   
			}
		}
		uchar *outbuffer = NULL;
		unsigned long outsize;
		pic_compress(buffer, &outbuffer, &outsize);                              //压缩        
		pic_send(server_udp_fd, outbuffer, fromaddr, len,index,outsize);         //发送
		
        free(buffer);
		buffer = NULL;
		free(outbuffer);
		outbuffer = NULL;	   
		if(move>478)move = 0;			
	}
	
	
 
	
	bzero(buf,0);
	close(server_udp_fd);
	close(ent[index].sockfd);
}

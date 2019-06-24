#include "Server.h"


void *func(void *arg){
	int info;
	info = *(int *)arg;
      
	server_process(info);
	//printf("退出udp进程\n");
	pthread_exit(NULL);
	pthread_detach(pthread_self());
}



int main(int argc, char *argv[]){
	
	//初始化
	pthread_mutex_init(&mutex,NULL);
	
	int server_tcp_fd = socket(AF_INET,SOCK_STREAM,0);
	if(-1 == server_tcp_fd) error("create server_tcp_fd");
    
	int index;
	struct sockaddr_in servaddr = {0},cliaddr = {0};
    servaddr.sin_family = AF_INET;
	servaddr.sin_addr.s_addr = INADDR_ANY;
	servaddr.sin_port = htons(ServerPort);
    socklen_t len = sizeof(servaddr);
	if(-1 == bind(server_tcp_fd, (struct sockaddr*)&servaddr,len)) error("bind");
	for(int i=0;i<5;i++){
		ent[i].stat = 0;
	}
        

	//tcp监听
	if(listen(server_tcp_fd,3) == -1){
		error("listen");
	}
	
	//初始化新客户
	while(1){
        pthread_t  tid;
		int client_fd;
		//printf("waiting user...\n");
		if((client_fd = accept(server_tcp_fd, (struct sockaddr*)&cliaddr,&len))== -1){
			error("accept error");
		}
		index = maxptd;
		
		pthread_mutex_lock(&mutex);
		for(int i=0;i<maxptd;i++){
			if(ent[i].stat == 0){
				ent[i].stat = 1;
				index = i;
				
				break;
			}
			
		}
		pthread_mutex_unlock(&mutex);
		
		if(index < maxptd){
			char buffer[1024];
			int n = read(client_fd,buffer,1023);
			
			ent[index].port = atoi(buffer);
			
			int udp_port = ServerPort+index;
			
			memset(buffer,0,strlen(buffer));
			sprintf(buffer,"%d",udp_port);
			
			printf("客户%d加入\n",index);
			write(client_fd,buffer,strlen(buffer));
			//printf("client_fd:%d\n",client_fd);
			
			
			ent[index].addr = cliaddr.sin_addr;			
			printf("client IP: %s\n",inet_ntoa(cliaddr.sin_addr));
			ent[index].sockfd = client_fd;
			
			int *arg = &index;
			pthread_create(&tid, NULL, func,(void*)arg);    //唤醒图传线程
			
           
			
		}
		else{
			printf("failed\n");
			char *buffer ="failed";
			printf("no more room for client\n");
			write(client_fd,buffer,strlen(buffer));
			close(client_fd);
		}
                
	}
	close(server_tcp_fd);
	
	return 0;
	
}






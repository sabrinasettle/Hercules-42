/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/03/09 16:39:14 by ssettle           #+#    #+#             */
/*   Updated: 2019/03/09 18:49:26 by ssettle          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

int	main(int argc, char **argv)
{
	int					sock_fd;
	int					readvalue;
	char				buffer[256];
	struct sockaddr_in	server;

	if (argc != 3)
	{
		printf("please input: ./client [IP] [PORT]\n");
		return (0);
	}
	sock_fd = socket(AF_INET, SOCK_STREAM, 0);
	if (sock_fd < 0)
	{
		printf("no socket for you!\n");
		return (0);
	}
	memset(&server, '0', sizeof(server));
	server.sin_family = AF_INET;
	server.sin_port = htons(atoi(argv[2]));
	server.sin_addr.s_addr = inet_addr(argv[1]);
	if (connect(sock_fd, (struct sockaddr*)&server, sizeof(server)) < 0)
	{
		printf("no connection for you!\n");
		return (-1);
	}
	printf("PLEASE TALK TO ME: ");
	bzero(buffer, 256);
	fgets(buffer, 255, stdin);
	write(sock_fd, buffer, strlen(buffer));
	bzero(buffer, 256);
	read(sock_fd, buffer, 10);
	buffer[10] = '\0';
	printf("%s", buffer);
	close(sock_fd);
	return (0);
}

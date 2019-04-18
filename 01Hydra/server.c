/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/03/06 18:13:29 by ssettle           #+#    #+#             */
/*   Updated: 2019/03/09 19:01:49 by ssettle          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int	main(int argc, char **argv)
{
	int					sock_fd;
	int					conn_fd;
	int					readvalue;
	char				buffer[256];
	int					addr_size;
	struct sockaddr_in	address;

	if (argc != 2)
	{
		printf("please input: ./server [PORT]\n");
		return (0);
	}
	addr_size = sizeof(address);
	sock_fd = socket(AF_INET, SOCK_STREAM, 0);
	if (sock_fd < 0)
	{
		printf("no socket for you!\n");
		return (0);
	}
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = INADDR_ANY;
	address.sin_port = htons(atoi(argv[1]));
	if (bind(sock_fd, (struct sockaddr*)&address, sizeof(address)) < 0)
	{
		printf("no bind for you!\n");
		return (0);
	}
	(listen(sock_fd, 3));
	while (1)
	{
		addr_size = sizeof(address);
		conn_fd = accept(sock_fd, (struct sockaddr *)NULL, NULL);
		printf("%i\n", conn_fd);
		if (conn_fd < 0)
		{
			printf("no connection for you!\n");
			return (0);
		}
		else
		{
			readvalue = read(conn_fd, buffer, 1024);
			buffer[readvalue] = '\0';
			if (!strncmp(buffer, "ping", 4))
				write(conn_fd, "PONG\nPONG\n", 10);
		}
		close(conn_fd);
	}
	return (0);
}

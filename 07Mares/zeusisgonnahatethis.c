/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   zeusisgonnahatethis.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ssettle <ssettle@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/22 20:21:20 by ssettle           #+#    #+#             */
/*   Updated: 2019/04/23 14:37:17 by ssettle          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <sys/types.h>

/*
** Fork - fork() system herccall use for creates a new process, which is called
** a child process
*/

/*
** Signals in C - a signal is a software generated interrrupt that is sent to a
** process by the OS because of when user presses ctrl-c or another process
** tell something to this process.Any command like thing the the OS
** sends to the program saying that somehting happened. SUCH AS SIGINT --ctrl c
*/

/*
** system() executes any commands the os allows
*/

int	main(void)
{
	while (1)
	{
		fork();
		write(1, "meow", 4);
	}
	return (0);
}

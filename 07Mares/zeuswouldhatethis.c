#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

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

// void	giveyousomeshit(void)
// {
// 	system("for ((i=0; 1; i++)); do echo withloveandaffection > poo$i.shit; sleep 0.5; done");
// }

// void	poopoo(void)
// {
// 	while (1)
// 		system("echo poopoo; sleep 0.05");
// }

// void	settingvolume(void)
// {
// 	// while (1)
// 	// {
// 		system(" osascript \
// 			-e 'set Volume 4' &");
// 	// }
// }

// void	wordplay(void)
// {
// 	settingvolume(); //ok so this gets called and then ruins the process because it never ends
// 	// system("say -v Oliver 'tra la la ala al' & ; sleep 0.05");

// 	//"say -v Oliver -f ./whatsnew.txt &");
// }

int		main(void)
{
	while (1)
	{
		fork();
		printf("meow");
	}
	return (0);
}

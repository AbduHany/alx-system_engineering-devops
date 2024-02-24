#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

/**
 * infinite_while - runs an infinite loop in the parent
 * processes to convert them to zombie processes.
 *
 * Return: 0 on success.
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - entry point of program that creates 5 zombie processes.
 *
 * Return: 0 on success.
 */
int main(void)
{
	pid_t zombiepid;
	int i;

	for (i = 0; i < 5; i++)
	{
		zombiepid = fork();
		if (zombiepid > 0)
		{
			printf("Zombie process created, PID: %d\n", zombiepid);
		}
		else
			exit(0);
	}
	infinite_while();
	return (0);
}

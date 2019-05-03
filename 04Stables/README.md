# Hercules 04: Augean Stables

**Goals**
This project aims to help you get the basic notions of freeing memory.
You might not necessarily need to free much memory and you might not care now that you are writing rather small programs on powerful computers but imagine a program that's much more resource demanding or ran on a very limited server!
Then you're going to want to track every single and tiniest memory leak.

**Mandatory Part**
For this you just need to turn in the same program provided but with no memory leaks. You can change whatever you want in it except the lines that are malloc-ing and the program needs to be performing the exact same task with the same result.

**Commands to Run**

Orignal code is in filthystables.c and the cleaned up version is in stables.c

Compile -
	gcc -g stables.c -o stables

Valgrind -
	valgrind --leak-check=full ./stables


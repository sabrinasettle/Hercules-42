.name "sumobabyboss'
.comment "*headbutts in sign langauge*"

fork:
	fork %:livespawn ;

hello:
	sti r1, %:live, %1
	and r1, %0, r1

live:
	live %1 ; [0x01] allows a process to stay alive.
	zjmp %:live

spawn:
	live %1

//is at the same place as a zork whatever that means for the most part

.name "sumobabyboss"
.comment "*headbutts in sign langauge*"

entry:
	fork %:spawn ; [0x0c] create a new process that will inherit

l2:
	sti r1, %:live, %1
	and r1, %0, r1

live:
	live %1
	zjmp %:live

spawn:
	live %1	; [0x01] allows a process to stay alive.


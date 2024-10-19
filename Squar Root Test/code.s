.global main

.section .note.GNU-stack

.extern printf, scanf

.section .data
	str: .ascii "The square root of %i is equal to around %i\n\0"
.section .text

main:

	ldr r1, =#1      // the resultent ( x )
	ldr r2, =#20000 //  the value to take the root of ( n )
	ldr r3, =#1    //   the temp value
	ldr r4, =#-1  //    the prev. value

	.loop_body:
		cmp r1, r4
		beq .exit
		mov r4, r1
		// x = (x+n/x)/2
		udiv r3, r2, r1
		add r1, r1, r3
		lsr r1, #1
		b .loop_body
		
	.exit:
	
	mov r3, r2
	mov r2, r1
	mov r1, r3
	
	ldr r0, =#str
	bl printf

	mov r7, #0x1
	mov r0, #0
	swi #0

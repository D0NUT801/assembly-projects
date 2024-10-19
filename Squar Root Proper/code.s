.global main

.section .note.GNU-stack

.extern printf, exit, atoi

.section .data
	str: .ascii "The square root of %i is equal to around %i.%02i\n\0"
	errstr: .ascii "Usage: make arm ARG=<value>\n\0"
	test: .ascii "%i\n\0"
.section .text

main:
	cmp r0, #2
	bne fail

	ldr r0, [r1, #4]
	bl atoi
	mov r1, r0

	mov r3, #10000

	mul r2, r1, r3

	ldr r1, =#1      // the resultent ( x )
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
	
	// r2 is the orignal
	// r1 is the resultent

	mov r4, #100
	udiv r3, r1, r4
	mov r5, r3
	mul r3, r5, r4
	sub r3, r1, r3

	push {r2}

	mov r4, #100
	udiv r2, r1, r4

	pop {r1}

	mov r4, #10000
	udiv r1, r1, r4
	
	ldr r0, =#str
	bl printf

	b exit2

fail:
	ldr r0, =#errstr
	bl printf
exit2:
	mov r0, #0
	bl exit

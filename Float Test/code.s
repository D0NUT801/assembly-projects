.global main

.section .note.GNU-stack

.extern printf

.section .data
	str: .ascii "%f\n\0"
	x: .float 0.1
	y: .float 0.2

.section .text

main:

	ldr r1, =x

	vldr.32 s1, [r1]

	ldr r1, =y

	vldr.32 s2, [r1]

	vadd.f32 s3, s1, s2

	vcvt.f64.f32 d1, s3
	
	vmov r2, r3, d1

	ldr r0, =str

	bl printf

	mov r7, #0x1
	mov r0, #0
	swi #0


.global main

.section .note.GNU-stack

.extern printf

.section .data
    str: .ascii "%u \n\0"

.section .text

main:
    mov r0, #1
    mov r1, #0
    mov r2, #0
    .loop:
        mov r3, r0
        bl print
        mov r2, r0
        add r0, r1, r0
        mov r1, r2

        cmp r0, #0xFFFFFFF
        blt .loop

    mov r7, #0x1
    mov r0, #0
    swi #0


print:
    push {r0, r1, r2, lr}
    mov r1, r3
    ldr r0, =str
    bl printf
    pop {r0, r1, r2, pc}

.global main

.section .note.GNU-stack

.extern printf, usleep, time

.section .data
    str: .ascii "%10u\t%32b\n\0"
    sleeptime: .int 250000

.section .text

main:
    mov r1, #0
    mov r2, #0
    mov r3, #0

    //mov r0, #0
    //bl time
    //mov r1, r0
    //bl print
    
    mov r1, #1

    .loop:
        
        add r3, r3, #1

        mov r0, r1
        bl print

        mov r2, r1

        mov r4, r1
        lsl r4, #3
        eor r2, r2, r4

        mov r4, r2
        asrs r4, #7
        eor r2, r2, r4

        mov r4, r2
        lsl r4, #5
        eor r2, r2, r4

        mov r1, r2

        cmp r3, #100
        blt .loop

    mov r7, #0x1
    mov r0, #0
    swi #0

print:
    push {r1, r2, r3, r4, lr}
    mov r1, r0
    mov r2, r0
    ldr r0, =str
    bl printf
    pop {r1, r2, r3, r4, pc}
    
sleep:
    push {r0, r1, r2, r3, r4, lr}
    ldr r0, =sleeptime
    ldr r0, [r0]
    bl usleep
    pop {r0, r1, r2, r3, r4, lr}

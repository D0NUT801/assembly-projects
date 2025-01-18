.global main

.section .note.GNU-stack
.extern printf, usleep, exit

.section .data
    nl: .ascii "\n\0"
    num: .ascii "%2u \0"
    sleeptime: .int 25000
    a: 
    .int 10
    .int  9
    .int  8
    .int  7
    .int  6
    .int  5
    .int  4
    .int  3
    .int  2
    .int  1

.section .text
main:
    mov r5, #0
    mov r6, #0
    .iLoop:
        mov r6, #0
        .jLoop:

            ldr r1, =a
            mov r3, r6
            mov r4, #4
            mul r3, r4, r3
            add r1, r1, r3
            ldr r2, [r1, #4]
            ldr r1, [r1]
            cmp r1, r2
            ble noSwap
            swap:
                mov r7, r1
                mov r8, r2
                
                ldr r1, =a
                mov r3, r6
                mov r4, #4
                mul r3, r4, r3
                add r1, r1, r3
                str r7, [r1, #4]
                str r8, [r1]

            noSwap:
            bl printArray
            add r6, r6, #1
            mov r7, #9
            sub r7, r7, r5
            cmp r6, r7
            blt .jLoop
        add r5, r5, #1
        cmp r5, #9
        blt .iLoop

    //bl printArray
    bl exit2

printArray:
    push {r1, r2, r3, r4, r5, r6, r7, lr}
    mov r6, #0
    .lop:
        ldr r5, =a
        add r5, r6
        ldr r1, [r5]
        ldr r0, =num
        bl printf
        
        add r6, r6, #4

        cmp r6, #40
        bge .exitPA
        b .lop
.exitPA:
    ldr r0, =sleeptime
    ldr r0, [r0]
    bl usleep
    ldr r0, =nl
    bl printf
    pop {r1, r2, r3, r4, r5, r6, r7, pc}

exit2:
    mov r0, #0
    bl exit

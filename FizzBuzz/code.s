.global main

.section .note.GNU-stack

.extern printf

.section .data
    fizz: .ascii "fizz\0"
    buzz: .ascii "buzz\0"
    nln: .ascii "\n\0"
    num: .ascii "%i\0"
    sleeptime: .int 100000

.section .text

main:
    mov r1, #1
    mov r2, #0
    mov r3, #0
    mov r4, #0

    .loop:
        mov r4, #1

        add r2, r2, #1
        cmp r2, #3
        bleq fizzcon

        add r3, r3, #1
        cmp r3, #5
        bleq buzzcon

        mov r5, r1
        cmp r4, #0
        blne wnum

        bl newline
        push {r0, r1, r2, r3, r4}
        ldr r0, =sleeptime
        ldr r0, [r0]
        bl usleep
        pop {r0, r1, r2, r3, r4}

        add r1, r1, #1
        cmp r1, #100
        ble .loop

    mov r7, #0x1
    mov r0, #0
    swi #0

fizzcon:
    push {lr}
    mov r2, #0
    mov r4, #0
    bl wfizz
    pop {pc}

buzzcon:
    push {lr}
    mov r3, #0
    mov r4, #0
    bl wbuzz
    pop {pc}

wfizz:
    push {r0, r1, r2, r3, r4, lr}
    ldr r0, =fizz
    bl printf
    pop {r0, r1, r2, r3, r4, pc}
    
wbuzz:
    push {r0, r1, r2, r3, r4, lr}
    ldr r0, =buzz
    bl printf
    pop {r0, r1, r2, r3, r4, pc}

newline:
    push {r0, r1, r2, r3, r4, lr}
    ldr r0, =nln
    bl printf
    pop {r0, r1, r2, r3, r4, pc}

wnum:
    push {r0, r1, r2, r3, r4, lr}
    mov r1, r5
    ldr r0, =num
    bl printf
    pop {r0, r1, r2, r3, r4, pc}
    
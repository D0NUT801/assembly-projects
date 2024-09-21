.global main

.section .note.GNU-stack

.extern printf

.section .data
    str: .ascii "*\0"
    nln: .ascii "\n\0"
    spc: .ascii " \0"
    num: .ascii "%i\0"

.section .text

main:
    mov r0, #1
    mov r1, #0
    .outterIloop:
        mov r1, #0
        .prestarspace:
            add r1, r1, #1
            mov r2, r0
            sub r2, r2, #100
            neg r2, r2
            lsr r2, r2, #1
            cmp r1, r2
            bgt .postprestar
            bl space
            b .prestarspace
        .postprestar:
        mov r1, #0
        .starloop:
            bl star
            add r1, r1, #1
            cmp r1, r0
            blt .starloop
        bl newline
        add r0, r0, #2
        cmp r0, #100
        blt .outterIloop

    mov r7, #0x1
    mov r0, #0
    swi #0


star:
    push {r0, r1, r2, lr}
    ldr r0, =str
    bl printf
    pop {r0, r1, r2, pc}
    
space:
    push {r0, r1, r2, lr}
    ldr r0, =spc
    bl printf
    pop {r0, r1, r2, pc}

newline:
    push {r0, r1, r2, lr}
    ldr r0, =nln
    bl printf
    pop {r0, r1, r2, pc}
    
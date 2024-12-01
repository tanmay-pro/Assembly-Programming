.text
.global distance

distance:
    movq %rsi, %rbx 
    xor %di, %bx
    movq $0, %rcx
.loop:
    testq %rbx, %rbx
        je .finish
        movw %bx, %ax
        shr $1, %bx
        and $0x1, %ax
        cmpw $0, %ax
        jz .loop
        incq %rcx
        jmp .loop
    .finish:
        movq %rcx, %rax
        ret





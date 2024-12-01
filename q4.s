.text
.global freq
freq:
    movq $32, %rcx
    leaq (%rsi), %rbx
.loop:
    leaq (%rbx), %rsi
    xorq %rax, %rax
    movb (%rdi), %al
    subb $97, %al
    cmpb $25, %al
    jg .skip
    addq %rax, %rax
    addq %rax, %rax
    addq %rax, %rsi 
    incq (%rsi) 
.skip: 
    decq %rcx
    jz .finish
    leaq 1(%rdi), %rdi
    jmp .loop
.finish:
    ret





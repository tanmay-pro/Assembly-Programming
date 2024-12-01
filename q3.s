.text
.global check

check:
    movq $8, %rbx
    movq $0, %rax
.loop1:
    movq $0, %r8
    xorq %rsi, %rsi
    movq %rbx, %rsi
    subq %rax, %rsi
.inner_loop1:
    leaq (, %rax, 8), %r9
    leaq (%rdi, %r9, 2), %r9
    leaq (%r9, %r8, 2), %r9
    xorq %r10, %r10
    movw (%r9), %r10w
    movq %rsi, %r11
    subq $1, %r11
    movq %rbx, %rcx
    subq $1, %rcx
    subq %r8, %rcx
    leaq (, %rcx, 8), %r12
    leaq (%rdi, %r12, 2), %r12
    leaq (%r12, %r11, 2), %r12
    xorq %r13, %r13
    movw (%r12), %r13w
    movw %r13w, (%r9)
    movw %r10w, (%r12)
    incq %r8
    cmp %r8, %rsi
    jne .inner_loop1
    incq %rax
    cmp %rbx, %rax
    jne .loop1
    mov $0, %rax
.loop2:
    movq $0, %r8
.inner_loop2:
    leaq (, %rax, 8), %r9
    leaq (%rdi, %r9, 2), %r9
    leaq (%r9, %r8, 2), %r9
    xorq %r10, %r10
    movw (%r9), %r10w
    xorq %rsi, %rsi
    movq %rbx, %rsi
    subq %rax, %rsi
    subq $1, %rsi
    leaq (, %rsi, 8), %r12
    leaq (%rdi, %r12, 2), %r12
    leaq (%r12, %r8, 2), %r12
    xorq %r13, %r13
    movw (%r12), %r13w
    movw %r13w, (%r9)    
    movw %r10w, (%r12)
    incq %r8
    cmp %r8, %rbx
    jne .inner_loop2
    incq %rax
    cmp $4, %rax
    jne .loop2
.finish:
    ret 



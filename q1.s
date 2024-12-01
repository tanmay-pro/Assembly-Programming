.data
array: 
.word -1, 150, 30, 10, 20, 90, 110, 11, -55, 1, 2, 124, 343, 45, 56, 67, 34, 21, 10, 11, 123, 109, -45, -67, -78, -111, -0, 0, 20, 21, 22, 23
n:
.quad 32

.text
.global main

main:
    mov n@GOTPCREL(%rip), %r8
    movq (%r8), %r8
    decq %r8
    leaq array(%rip), %rdx
    mov $0, %rax
.outer_loop:
    cmp $1, %rax
    je .finish
    mov $1, %rax
    movq %r8, %rbx
    mov $1, %r9
    lea array(%rip), %rcx 
.inner_loop1:
    leaq (%rcx,%r9,2), %rdi  
    movw (%rdi), %r10w
    movw 2(%rdi), %r11w
    cmp %r10w, %r11w
    jge .no_swap
    movw  %r11w, (%rdi)
    movw %r10w, 2(%rdi)
    mov $0, %rax
.no_swap:   
    addq $2, %r9 
    cmp %r9, %rbx
    jne .inner_loop1
    incq %rbx
    mov $0, %r9
.inner_loop2:
    leaq (%rcx,%r9,2), %rdi  
    movw (%rdi), %r10w
    movw 2(%rdi), %r11w
    cmp %r10w, %r11w
    jge .no_swap2
    movw  %r11w, (%rdi)
    movw %r10w, 2(%rdi)
    mov $0, %rax
.no_swap2:
    addq $2, %r9 
    cmp %r9, %rbx
    jne .inner_loop2
    mov $9, %rbx
    mov $0, %r9
    jmp .outer_loop
.finish:
    ret






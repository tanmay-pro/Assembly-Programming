.data
array: 
.word -1, 150, 30, 10, 20, 90, 110, 11, -55, 1, 12, 13, 14, -15, 17, 9, 43, -45, 90, 30, -31, -33, -56, -54, -78, -90, -1, -111, 89, 45, 32, -1
n:
.quad 32

key:
.quad -2

.text
.global main

main:
    mov n@GOTPCREL(%rip), %r8
    movq (%r8), %r8
    movq %r8, %r9
    mov key@GOTPCREL(%rip), %rdx
    movq (%rdx), %rdx
    lea array(%rip), %rcx 
    xorq %r12, %r12
    xorq %r11, %r11
.loop:
    movw (%rcx), %bx
    incq %r12
    incq %r11
    cmpw %bx, %dx
    jz .finish
    lea 2(%rcx), %rcx
    cmpq %r9, %r12
    jne .skip
    movq $-1, %r11
.skip:
    decq %r8
    jnz .loop
    call .finish
.finish:
    ret

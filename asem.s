.global _start
.intel_syntax noprefix
.section .text
_start:
    //sys_write
    mov rax, 1
    mov rdi, 1
    lea rsi, [hello_world]
    mov rdx, 14
    syscall

    //sys_exit
    mov rax, 60
    mov rdi, 69
    syscall

.section .rodata
hello_world:
    .ascii "hello_world!\n"

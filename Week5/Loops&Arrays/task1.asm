section .text
global _start

_start:
    mov ebx, 10

loop_start:
    dec ebx
    jnz loop_start

    mov eax, 1
    int 0x80
section .text
global _start

_start:
    mov ecx, 10
    mov eax, 0
    mov ebx, 1

fib_loop:
    mov edx, eax
    add edx, ebx
    mov eax, ebx
    mov ebx, edx
    dec ecx
    jnz fib_loop

    mov eax, 1
    int 0x80
section .text
global _start

_start:
    mov eax, 0

generate_even:
    add eax, 2
    cmp eax, 20
    jl generate_even

    mov eax, 1
    int 0x80
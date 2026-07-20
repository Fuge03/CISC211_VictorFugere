section .data
    my_array dd 17, 92, 45

section .bss
    largest resd 1

section .text
global _start

_start:
    mov esi, my_array
    mov ecx, 3
    mov eax, [esi]

find_largest:
    cmp eax, [esi]
    jge skip_update
    mov eax, [esi]

skip_update:
    add esi, 4
    dec ecx
    jnz find_largest

    mov [largest], eax

    mov eax, 1
    int 0x80
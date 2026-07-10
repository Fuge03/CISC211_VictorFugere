section .text
    global _start

_start:
    mov ax, [num]
    mov bl, 2
    div bl

    cmp ah, 0 
    je evnn

    mov eax, 4
    mov ebx, 1
    mov ecx, msg_odd
    mov edx, len_odd
    int 0x80
    jmp finish

evnn:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_even
    mov edx, len_even
    int 0x80

finish:
    mov eax, 1
    int 0x80

section .data
    num DD 7
    msg_odd db 'odd number', 0xA
    len_odd equ $-msg_odd
    msg_even db 'even number', 0xA
    len_even equ $-msg_even
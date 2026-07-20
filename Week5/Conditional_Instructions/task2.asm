section .data
    num1 dd 12
    num2 dd 45
    num3 dd 30
    num4 dd 88
    num5 dd 15

segment .bss
    largest resd 1

section .text
global _start

_start:
    mov eax, [num1]

    cmp eax, [num2]
    jge check3
    mov eax, [num2]

check3:
    cmp eax, [num3]
    jge check4
    mov eax, [num3]

check4:
    cmp eax, [num4]
    jge check5
    mov eax, [num4]

check5:
    cmp eax, [num5]
    jge finish
    mov eax, [num5]

finish:
    mov [largest], eax

    mov eax, 1
    int 0x80
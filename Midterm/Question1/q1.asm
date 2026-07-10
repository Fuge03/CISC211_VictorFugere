section .text
    global _start

_start:
    ; a. Values: result = 53, var1 = 8, var2 = 2, var3 = 4
    
    mov eax, [var1]
    add eax, 2
    
    mov ebx, [var3]
    sub ebx, [var2]
    
    mov edx, 0
    div ebx
    
    add eax, 48
    mov [result], eax
    
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80
    
    mov eax, 1
    int 0x80

section .data
    var1 DD 8
    var2 DD 2
    var3 DD 4

section .bss
    result resb 1
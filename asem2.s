SECTION .data 
msg db 'Hello la team', 0Ah

SECTION .text 

global _start


_start:
    mov ebx, msg 
    mov eax, ebx


nextchar: 
    cmp byte[eax], 0
    je finished
    inc eax
    jmp nextchar


finished: 
    sub eax, ebx


    mov edx, eax 
    mov ecx, msg
    mov eax, 4
    mov ebx, 1 
    int 80h 
    mov eax, 1 
    mov ebx, 0 
    int 80h 


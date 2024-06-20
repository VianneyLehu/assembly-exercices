SECTION .data 
    msg db 'Hello World!', 0Ah

SECTION .text 

global _start 


_start:
mov ebx, 1
mov eax, 4
mov edx, 13
mov ecx, msg 
int 80h 

mov eax, 1 
mov ebx, 0
int 80h

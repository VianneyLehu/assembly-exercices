%include 'funct.s'


SECTION .data 

fizz db 'fizz', 0h 
buzz db 'buzz', 0h 


SECTION .text 

global _start 


_start: 
    mov esi, 0 
    mov edi, 0 
    mov ecx, 0 

nextNumber: 
    inc ecx 

.checkFizz: 
   mov edx, 0 
   mov eax, ecx 
   mov ebx, 3
   div ebx
   mov esi, edx 
   cmp esi, 0
   jne .checkBuzz
   mov eax, fizz 
   call sprint



.checkBuzz: 
    mov edx, 0 
    mov eax, ecx 
    mov ebx, 5
    div ebx
    mov edi, edx
    cmp edi, 0
    jne .checkInt
    mov eax, buzz 
    call sprint



.checkInt: 
    cmp esi, 0 
    je .continue 
    cmp edi, 0 
    je .continue 
    mov eax, ecx 
    call iprint

.continue:
    mov eax, 0Ah 
    push eax 
    mov eax, esp 
    call sprint 
    pop eax 
    cmp ecx, 100 
    jne nextNumber
    call quit


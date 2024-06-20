%include 'funct.s'

SECTION .text 

global _start 

_start: 
    mov ecx, 0 

nextnumber: 
    inc ecx 
    mov eax, ecx 
    add eax, 48
    push eax 
    mov eax, esp 
    call sprintLF 
    pop eax 
    cmp ecx, 10
    jne nextnumber

    call quit 
%include 'funct.s'

SECTION .text 
global _start


_start: 
    pop ecx
    pop edx 
    sub ecx,1 
    mov edx, 0 


nextArg: 
    cmp ecx, 0h
    jz end 
    pop eax 
    call atoi 
    add edx, eax 
    dec ecx 
    jmp nextArg



end:
    mov eax, edx 
    call iprintLF
    call quit

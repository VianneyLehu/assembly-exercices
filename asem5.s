%include 'funct.s'

SECTION .text 


global _start


_start: 

    pop ecx 

nextArg: 
    cmp ecx,0h 
    jz end
    pop eax 
    call sprintLF
    dec ecx
    jmp nextArg



end: 
    call quit
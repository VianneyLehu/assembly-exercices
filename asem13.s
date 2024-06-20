%include 'funct.s'

SECTION .data 

childmsg db 'This is the child process', 0h 
parentmsg db 'This is the parent process', 0h 

SECTION .text 

global _start 

_start: 
    mov eax, 2 
    int 80h 

    cmp eax, 0 
    jz child 

parent: 
    mov eax, parentmsg
    call sprintLF

    call quit


child: 
    mov eax, childmsg
    call sprintLF
    call quit
 

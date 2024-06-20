%include 'funct.s'


SECTION .data 

command1 db '/bin/echo', 0h 
command2 db '/bin/ls', 0h 
command3 db '/usr/bin/sleep', 0h 
arg1 db '-l', 0h
arg2 db '5', 0h
arguments       dd      command3
                dd      arg2           
                dd      0h  

environment     dd      0h                 




SECTION .text 

global _start 


_start: 

    mov eax, 11 
    mov ecx, arguments
    mov ebx, command2
    mov edx, environment

    int 80h 

    call quit


%include 'funct.s'

SECTION .data
msg1 db 'ceci est un premier test', 0h
msg2 db 'deuxieme test bonjour a vous', 0h

SECTION .text 

global _start 

_start:
    mov eax, msg1
    call sprintLF

    mov eax, msg2
    call sprintLF

    call quit
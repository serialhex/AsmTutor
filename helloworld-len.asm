; Hello World Program from asmtutor.com
; it (should) do things!
; Compile with: nasm -f elf $filename.asm
; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 $filename.o -o $filename
; Run with: ./$filename

SECTION .data
msg     db        'Hello brave new world!', 0Ah     ; we can modify this 

SECTION .text
global  _start

_start:
    mov    edx, 13
    mov    ecx, msg
    mov    ebx, 1
    mov    eax, 4
    int    80h

    mov    ebx, 0    ; return 0 status on exit - 'No Errors'
    mov    eax, 1    ; invoke SYS_EXIT (kernel opcode 1)
    int    80h


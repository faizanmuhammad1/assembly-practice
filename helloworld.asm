section .data
    hello db 'Hello, World!', 0
    helloLen equ $ - hello
    newline db 0xA
    newlineLen equ $ - newline

section .bss
    counter resb 1

section .text
global _start

_start:
    mov byte [counter], 5

print_loop:
    ; write "Hello, World!" system call
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, helloLen
    int 0x80

    ; write newline system call
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, newlineLen
    int 0x80

    dec byte [counter]
    jnz print_loop

    ; exit system call
    mov eax, 1
    xor ebx, ebx
    int 0x80
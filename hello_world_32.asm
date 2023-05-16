; hello_world_32.asm

section .data
    hello db 'Hello, World!', 10

section .text
    global _start

_start:
    ; Write 'Hello, World!' to the console
    mov eax, 4 ; System call number for 'write' (4)
    mov ebx, 1 ; File descriptor for stdout (1)
    lea ecx, [hello] ; Load address of 'hello' string into ecx
    mov edx, 13 ; Length of 'hello' string (13 characters)
    int 0x80 ; Call the kernel

    ; Exit the program
    mov eax, 1 ; System call number for 'exit' (1)
    xor ebx, ebx ; Zero out ebx (exit status 0)
    int 0x80 ; Call the kernel

; Disassembly of file: game.o
; Sat Jun 27 21:40:13 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 8086, x64

default rel

global main


SECTION .text   align=1                                 ; section number 1, code

main:   ; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        mov     rax, qword 6173646173647361H            ; 0004 _ 48: B8, 6173646173647361
        mov     edx, 0                                  ; 000E _ BA, 00000000
        mov     qword [rbp-20H], rax                    ; 0013 _ 48: 89. 45, E0
        mov     qword [rbp-18H], rdx                    ; 0017 _ 48: 89. 55, E8
        mov     dword [rbp-10H], 0                      ; 001B _ C7. 45, F0, 00000000
        mov     dword [rbp-4H], 2                       ; 0022 _ C7. 45, FC, 00000002
        mov     eax, 0                                  ; 0029 _ B8, 00000000
        pop     rbp                                     ; 002E _ 5D
        mov     eax, 60                                 ; sys_exit syscall number: 60
        xor     edi, edi                                ; set exit status to 0 (`xor edi, edi` is equal to `mov edi, 0` )
        syscall                                         ; 002F _ C3
; main End of function


SECTION .data   align=1                                 ; section number 2, data


SECTION .bss    align=1                                 ; section number 3, bss


SECTION .eh_frame align=8                               ; section number 4, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 78H, 10H, 01H       ; 0008 _ .zR..x..
        db 1BH, 0CH, 07H, 08H, 90H, 01H, 00H, 00H       ; 0010 _ ........
        db 1CH, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ ........
        dd main-$-20H                                   ; 0020 _ 00000000 (rel)
        dd 00000030H, 100E4100H                         ; 0024 _ 48 269369600 
        dd 0D430286H, 070C6B06H                         ; 002C _ 222495366 118254342 
        dd 00000008H                                    ; 0034 _ 8 



; Disassembly of file: game.o
; Sat Jun 27 21:52:43 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 8086, x64

default rel

global func
global main


SECTION .text   align=1                                 ; section number 1, code

func:   ; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 0004 _ 48: 89. 7D, F8
        mov     dword [rbp-0CH], esi                    ; 0008 _ 89. 75, F4
        mov     dword [rbp-10H], edx                    ; 000B _ 89. 55, F0
        mov     eax, 4                                  ; 000E _ B8, 00000004
        pop     rbp                                     ; 0013 _ 5D
        ret                                             ; 0014 _ C3
; func End of function

main:   ; Function begin
        push    rbp                                     ; 0015 _ 55
        mov     rbp, rsp                                ; 0016 _ 48: 89. E5
        sub     rsp, 32                                 ; 0019 _ 48: 83. EC, 20
        mov     rax, qword 6173646173647361H            ; 001D _ 48: B8, 6173646173647361
        mov     edx, 0                                  ; 0027 _ BA, 00000000
        mov     qword [rbp-20H], rax                    ; 002C _ 48: 89. 45, E0
        mov     qword [rbp-18H], rdx                    ; 0030 _ 48: 89. 55, E8
        mov     dword [rbp-10H], 0                      ; 0034 _ C7. 45, F0, 00000000
        mov     dword [rbp-4H], 7                       ; 003B _ C7. 45, FC, 00000007
        mov     edx, dword [rbp-4H]                     ; 0042 _ 8B. 55, FC
        mov     ecx, dword [rbp-8H]                     ; 0045 _ 8B. 4D, F8
        lea     rax, [rbp-20H]                          ; 0048 _ 48: 8D. 45, E0
        mov     esi, ecx                                ; 004C _ 89. CE
        mov     rdi, rax                                ; 004E _ 48: 89. C7
        call    func                                    ; 0051 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 0056 _ B8, 00000000
        mov     rax, 60        
        mov     rdi, 0        
        syscall                                         ; 005C _ C3
; main End of function


SECTION .data   align=1                                 ; section number 2, data


SECTION .bss    align=1                                 ; section number 3, bss


SECTION .eh_frame align=8                               ; section number 4, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 78H, 10H, 01H       ; 0008 _ .zR..x..
        db 1BH, 0CH, 07H, 08H, 90H, 01H, 00H, 00H       ; 0010 _ ........
        db 1CH, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ ........
        dd func-$-20H                                   ; 0020 _ 00000000 (rel)
        dd 00000015H, 100E4100H                         ; 0024 _ 21 269369600 
        dd 0D430286H, 070C5006H                         ; 002C _ 222495366 118247430 
        dd 00000008H, 0000001CH                         ; 0034 _ 8 28 
        dd 0000003CH                                    ; 003C _ 60 
        dd func-$-2BH                                   ; 0040 _ 00000000 (rel)
        dd 00000048H, 100E4100H                         ; 0044 _ 72 269369600 
        dd 0D430286H, 0C430206H                         ; 004C _ 222495366 205718022 
        dd 00000807H                                    ; 0054 _ 2055 



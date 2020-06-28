; Disassembly of file: game.o
; Sun Jun 28 12:41:54 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 8086, x64

default rel

global a3
global fun
global fun2
global main
global con
global a1
global a2


SECTION .text   align=1                                 ; section number 1, code

fun:    ; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        mov     dword [rbp-4H], edi                     ; 0004 _ 89. 7D, FC
        mov     qword [rbp-10H], rsi                    ; 0007 _ 48: 89. 75, F0
        mov     dword [rbp-8H], edx                     ; 000B _ 89. 55, F8
        mov     eax, 0                                  ; 000E _ B8, 00000000
        pop     rbp                                     ; 0013 _ 5D
        ret                                             ; 0014 _ C3
; fun End of function

fun2:   ; Function begin
        push    rbp                                     ; 0015 _ 55
        mov     rbp, rsp                                ; 0016 _ 48: 89. E5
        mov     dword [rbp-4H], edi                     ; 0019 _ 89. 7D, FC
        mov     qword [rbp-10H], rsi                    ; 001C _ 48: 89. 75, F0
        mov     dword [rbp-8H], edx                     ; 0020 _ 89. 55, F8
        mov     eax, 0                                  ; 0023 _ B8, 00000000
        pop     rbp                                     ; 0028 _ 5D
        ret                                             ; 0029 _ C3
; fun2 End of function

main:   ; Function begin
        push    rbp                                     ; 002A _ 55
        mov     rbp, rsp                                ; 002B _ 48: 89. E5
        sub     rsp, 64                                 ; 002E _ 48: 83. EC, 40
        mov     rax, qword 7A7A7A7A7A7A7A7AH            ; 0032 _ 48: B8, 7A7A7A7A7A7A7A7A
        mov     edx, 31354                              ; 003C _ BA, 00007A7A
        mov     qword [rbp-40H], rax                    ; 0041 _ 48: 89. 45, C0
        mov     qword [rbp-38H], rdx                    ; 0045 _ 48: 89. 55, C8
        mov     qword [rbp-30H], 0                      ; 0049 _ 48: C7. 45, D0, 00000000
        mov     qword [rbp-28H], 0                      ; 0051 _ 48: C7. 45, D8, 00000000
        mov     qword [rbp-20H], 0                      ; 0059 _ 48: C7. 45, E0, 00000000
        mov     qword [rbp-18H], 0                      ; 0061 _ 48: C7. 45, E8, 00000000
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [rbp-10H], 0                       ; 0069 _ 66: C7. 45, F0, 0000
        mov     dword [rbp-4H], 0                       ; 006F _ C7. 45, FC, 00000000
        mov     dword [rbp-8H], 1                       ; 0076 _ C7. 45, F8, 00000001
        mov     dword [rbp-0CH], 15                     ; 007D _ C7. 45, F4, 0000000F
        mov     edx, dword [rbp-0CH]                    ; 0084 _ 8B. 55, F4
        lea     rcx, [rbp-40H]                          ; 0087 _ 48: 8D. 4D, C0
        mov     eax, dword [rbp-4H]                     ; 008B _ 8B. 45, FC
        mov     rsi, rcx                                ; 008E _ 48: 89. CE
        mov     edi, eax                                ; 0091 _ 89. C7
        call    fun                                     ; 0093 _ E8, 00000000(PLT r)
        mov     edx, dword [rbp-0CH]                    ; 0098 _ 8B. 55, F4
        lea     rcx, [rbp-40H]                          ; 009B _ 48: 8D. 4D, C0
        mov     eax, dword [rbp-8H]                     ; 009F _ 8B. 45, F8
        mov     rsi, rcx                                ; 00A2 _ 48: 89. CE
        mov     edi, eax                                ; 00A5 _ 89. C7
        call    fun2                                    ; 00A7 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 00AC _ B8, 00000000
        leave                                           ; 00B1 _ C9
        ret                                             ; 00B2 _ C3
; main End of function


SECTION .data   align=32                                ; section number 2, data

con:                                                    ; byte
        db 65H, 68H, 65H, 68H, 65H, 68H, 65H, 00H       ; 0000 _ ehehehe.
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0008 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0020 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0028 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0030 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0038 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........
        db 00H, 00H, 00H, 00H                           ; 0060 _ ....

a1:     dd 00000001H                                    ; 0064 _ 1 

a2:     dd 00000002H                                    ; 0068 _ 2 


SECTION .bss    align=1                                 ; section number 3, bss


SECTION .eh_frame align=8                               ; section number 4, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 78H, 10H, 01H       ; 0008 _ .zR..x..
        db 1BH, 0CH, 07H, 08H, 90H, 01H, 00H, 00H       ; 0010 _ ........
        db 1CH, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ ........
        dd fun-$-20H                                    ; 0020 _ 00000000 (rel)
        dd 00000015H, 100E4100H                         ; 0024 _ 21 269369600 
        dd 0D430286H, 070C5006H                         ; 002C _ 222495366 118247430 
        dd 00000008H, 0000001CH                         ; 0034 _ 8 28 
        dd 0000003CH                                    ; 003C _ 60 
        dd fun-$-2BH                                    ; 0040 _ 00000000 (rel)
        dd 00000015H, 100E4100H                         ; 0044 _ 21 269369600 
        dd 0D430286H, 070C5006H                         ; 004C _ 222495366 118247430 
        dd 00000008H, 0000001CH                         ; 0054 _ 8 28 
        dd 0000005CH                                    ; 005C _ 92 
        dd fun-$-36H                                    ; 0060 _ 00000000 (rel)
        dd 00000089H, 100E4100H                         ; 0064 _ 137 269369600 
        dd 0D430286H, 0C840206H                         ; 006C _ 222495366 209977862 
        dd 00000807H                                    ; 0074 _ 2055 



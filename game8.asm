; Disassembly of file: game.o
; Sun Jun 28 12:54:19 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 8086, x64

default rel

global a3
global fun
global fun2
global main
global a1
global a2
global pre1
global pre2
global pre3
global pre4
global pre5
global correct


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
        mov     dword [rbp-4H], 15                      ; 006F _ C7. 45, FC, 0000000F
        mov     edx, 25                                 ; 0076 _ BA, 00000019
        lea     rsi, [rel pre1]                         ; 007B _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0082 _ BF, 00000001
        mov     eax, 1
        syscall 
        mov     edx, 16                                 ; 008C _ BA, 00000010
        lea     rsi, [rel pre2]                         ; 0091 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0098 _ BF, 00000001
        mov     eax, 1
        syscall 
        mov     edx, 18                                 ; 00A2 _ BA, 00000012
        lea     rsi, [rel pre3]                         ; 00A7 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 00AE _ BF, 00000001
        mov     eax, 1
        syscall 
        mov     edx, 16                                 ; 00B8 _ BA, 00000010
        lea     rsi, [rel pre4]                         ; 00BD _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 00C4 _ BF, 00000001
        mov     eax, 1
        syscall 
        mov     edx, 7                                  ; 00CE _ BA, 00000007
        lea     rsi, [rel pre5]                         ; 00D3 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 00DA _ BF, 00000001
        mov     eax, 1
        syscall 
        mov     edx, dword [rbp-4H]                     ; 00E4 _ 8B. 55, FC
        lea     rax, [rbp-40H]                          ; 00E7 _ 48: 8D. 45, C0
        mov     rsi, rax                                ; 00EB _ 48: 89. C6
        mov     edi, 1                                  ; 00EE _ BF, 00000001
        mov     eax, 1
        syscall                                    
        mov     rax, 60        
        mov     rdi, 0        
        syscall      
; main End of function


SECTION .data   align=16                                ; section number 2, data

a1:                                                     ; dword
        dd 00000001H                                    ; 0000 _ 1 

a2:     dd 00000002H, 00000000H                         ; 0004 _ 2 0 
        dd 00000000H                                    ; 000C _ 0 

pre1:                                                   ; byte
        db 70H, 69H, 6CH, 69H, 68H, 20H, 74H, 69H       ; 0010 _ pilih ti
        db 6EH, 67H, 6BH, 61H, 74H, 20H, 6BH, 65H       ; 0018 _ ngkat ke
        db 73H, 75H, 6CH, 69H, 74H, 61H, 6EH, 3AH       ; 0020 _ sulitan:
        db 0AH, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0028 _ ........

pre2:                                                   ; oword
        db 31H, 2EH, 20H, 45H, 61H, 73H, 79H, 20H       ; 0030 _ 1. Easy 
        db 28H, 33H, 20H, 6EH, 75H, 6DH, 29H, 0AH       ; 0038 _ (3 num).

pre3:                                                   ; byte
        db 32H, 2EH, 20H, 4EH, 6FH, 72H, 6DH, 61H       ; 0040 _ 2. Norma
        db 6CH, 20H, 28H, 35H, 20H, 6EH, 75H, 6DH       ; 0048 _ l (5 num
        db 29H, 0AH, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ).......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

pre4:                                                   ; oword
        db 33H, 2EH, 20H, 48H, 61H, 72H, 64H, 20H       ; 0060 _ 3. Hard 
        db 28H, 37H, 20H, 6EH, 75H, 6DH, 29H, 0AH       ; 0068 _ (7 num).

pre5:                                                   ; byte
        db 70H, 69H, 6CH, 69H, 68H, 3AH, 20H            ; 0070 _ pilih: 


SECTION .bss    align=4                                 ; section number 3, bss

correct:                                                ; dword
        resd    1                                       ; 0000


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
        dd 000000D5H, 100E4100H                         ; 0064 _ 213 269369600 
        dd 0D430286H, 0CD00206H                         ; 006C _ 222495366 214958598 
        dd 00000807H                                    ; 0074 _ 2055 



; Disassembly of file: game.o
; Sun Jun 28 13:05:53 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 80386, x64

default rel

global a3
global fun
global fun2
global main
global a1
global a2
global pre0
global pre1
global pre2
global pre3
global pre4
global pre5
global judge1
global judge2
global judge3
global correct
global finish


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
        mov     dword [rbp-4H], 5                       ; 006F _ C7. 45, FC, 00000005
        jmp     ?_004                                   ; 0076 _ E9, 00000084

?_001:  lea     rax, [rbp-40H]                          ; 007B _ 48: 8D. 45, C0
        mov     edx, 1                                  ; 007F _ BA, 00000001
        mov     rsi, rax                                ; 0084 _ 48: 89. C6
        mov     edi, 0                                  ; 0087 _ BF, 00000000
        mov     eax, 0
        syscall 
        movzx   eax, byte [rbp-40H]                     ; 0091 _ 0F B6. 45, C0
        movsx   eax, al                                 ; 0095 _ 0F BE. C0
        sub     eax, 47                                 ; 0098 _ 83. E8, 2F
        cmp     dword [rbp-4H], eax                     ; 009B _ 39. 45, FC
        jl      ?_002                                   ; 009E _ 7C, 18
        mov     edx, 15                                 ; 00A0 _ BA, 0000000F
        lea     rsi, [rel judge3]                       ; 00A5 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 00AC _ BF, 00000001
        mov     eax, 1
        syscall 
        jmp     ?_004                                   ; 00B6 _ EB, 47

?_002:  movzx   eax, byte [rbp-40H]                     ; 00B8 _ 0F B6. 45, C0
        movsx   eax, al                                 ; 00BC _ 0F BE. C0
        sub     eax, 48                                 ; 00BF _ 83. E8, 30
        cmp     dword [rbp-4H], eax                     ; 00C2 _ 39. 45, FC
        jge     ?_003                                   ; 00C5 _ 7D, 18
        mov     edx, 15                                 ; 00C7 _ BA, 0000000F
        lea     rsi, [rel judge2]                       ; 00CC _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 00D3 _ BF, 00000001
        mov     eax, 1
        syscall 
        jmp     ?_004                                   ; 00DD _ EB, 20

?_003:  mov     edx, 6                                  ; 00DF _ BA, 00000006
        lea     rsi, [rel judge1]                       ; 00E4 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 00EB _ BF, 00000001
        mov     eax, 1
        syscall 
        mov     dword [rel finish], 1                   ; 00F5 _ C7. 05, 00000000(rel), 00000001
?_004:  mov     eax, dword [rel finish]                 ; 00FF _ 8B. 05, 00000000(rel)
        test    eax, eax                                ; 0105 _ 85. C0
        je      ?_001                                   ; 0107 _ 0F 84, FFFFFF6E
        mov     eax, 0                                  ; 010D _ B8, 00000000
        mov     rax, 60        
        mov     rdi, 0        
        syscall
; main End of function


SECTION .data   align=16                                ; section number 2, data

a1:                                                     ; dword
        dd 00000001H                                    ; 0000 _ 1 

a2:     dd 00000002H, 00000000H                         ; 0004 _ 2 0 
        dd 00000000H                                    ; 000C _ 0 

pre0:                                                   ; byte
        db 43H, 68H, 61H, 72H, 20H, 47H, 75H, 65H       ; 0010 _ Char Gue
        db 73H, 73H, 69H, 6EH, 67H, 20H, 47H, 61H       ; 0018 _ ssing Ga
        db 6DH, 65H, 0AH, 00H, 00H, 00H, 00H, 00H       ; 0020 _ me......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0028 _ ........

pre1:                                                   ; byte
        db 70H, 69H, 6CH, 69H, 68H, 20H, 74H, 69H       ; 0030 _ pilih ti
        db 6EH, 67H, 6BH, 61H, 74H, 20H, 6BH, 65H       ; 0038 _ ngkat ke
        db 73H, 75H, 6CH, 69H, 74H, 61H, 6EH, 3AH       ; 0040 _ sulitan:
        db 0AH, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0048 _ ........

pre2:                                                   ; oword
        db 31H, 2EH, 20H, 45H, 61H, 73H, 79H, 20H       ; 0050 _ 1. Easy 
        db 28H, 33H, 20H, 6EH, 75H, 6DH, 29H, 0AH       ; 0058 _ (3 num).

pre3:                                                   ; byte
        db 32H, 2EH, 20H, 4EH, 6FH, 72H, 6DH, 61H       ; 0060 _ 2. Norma
        db 6CH, 20H, 28H, 35H, 20H, 6EH, 75H, 6DH       ; 0068 _ l (5 num
        db 29H, 0AH, 00H, 00H, 00H, 00H, 00H, 00H       ; 0070 _ ).......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0078 _ ........

pre4:                                                   ; oword
        db 33H, 2EH, 20H, 48H, 61H, 72H, 64H, 20H       ; 0080 _ 3. Hard 
        db 28H, 37H, 20H, 6EH, 75H, 6DH, 29H, 0AH       ; 0088 _ (7 num).

pre5:                                                   ; byte
        db 70H, 69H, 6CH, 69H, 68H, 3AH, 20H            ; 0090 _ pilih: 

judge1:                                                 ; fword
        db 62H, 65H, 6EH, 61H, 72H, 0AH, 00H, 00H       ; 0097 _ benar...
        db 00H                                          ; 009F _ .

judge2:                                                 ; byte
        db 74H, 65H, 72H, 6CH, 61H, 6CH, 75H, 20H       ; 00A0 _ terlalu 
        db 74H, 69H, 6EH, 67H, 67H, 69H, 0AH, 00H       ; 00A8 _ tinggi..

judge3:                                                 ; byte
        db 74H, 65H, 72H, 6CH, 61H, 6CH, 75H, 20H       ; 00B0 _ terlalu 
        db 72H, 65H, 6EH, 64H, 61H, 68H, 0AH            ; 00B8 _ rendah.


SECTION .bss    align=4                                 ; section number 3, bss

correct:                                                ; dword
        resd    1                                       ; 0000

finish: resd    1                                       ; 0004


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
        dd 000000EAH, 100E4100H                         ; 0064 _ 234 269369600 
        dd 0D430286H, 0CE50206H                         ; 006C _ 222495366 216334854 
        dd 00000807H                                    ; 0074 _ 2055 


; Disassembly of file: game.o
; Sun Jun 28 20:15:05 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 80386, x64

default rel

global fun
global fun2
global time
global writeSpace
global generateNum
global generateQuestion
global parseNum
global clearbuf
global main
global buf
global guess
global number


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

time:   ; Function begin
        push    rbp                                     ; 002A _ 55
        mov     rbp, rsp                                ; 002B _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 002E _ 48: 89. 7D, F8
        mov     eax, 0                                  ; 0032 _ B8, 00000000
        pop     rbp                                     ; 0037 _ 5D
        ret                                             ; 0038 _ C3
; time End of function

writeSpace:; Function begin
        push    rbp                                     ; 0039 _ 55
        mov     rbp, rsp                                ; 003A _ 48: 89. E5
        mov     edx, 1                                  ; 003D _ BA, 00000001
        lea     rsi, [rel ?_009]                        ; 0042 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0049 _ BF, 00000001
        call    fun                                     ; 004E _ E8, 00000000(PLT r)
        nop                                             ; 0053 _ 90
        pop     rbp                                     ; 0054 _ 5D
        ret                                             ; 0055 _ C3
; writeSpace End of function

generateNum:; Function begin
        push    rbp                                     ; 0056 _ 55
        mov     rbp, rsp                                ; 0057 _ 48: 89. E5
        mov     dword [rbp-4H], edi                     ; 005A _ 89. 7D, FC
        mov     eax, 5                                  ; 005D _ B8, 00000005
        pop     rbp                                     ; 0062 _ 5D
        ret                                             ; 0063 _ C3
; generateNum End of function

generateQuestion:; Function begin
        push    rbp                                     ; 0064 _ 55
        mov     rbp, rsp                                ; 0065 _ 48: 89. E5
        sub     rsp, 24                                 ; 0068 _ 48: 83. EC, 18
        mov     dword [rbp-14H], edi                    ; 006C _ 89. 7D, EC
        mov     dword [rbp-8H], 5                       ; 006F _ C7. 45, F8, 00000005
        mov     dword [rbp-4H], 1                       ; 0076 _ C7. 45, FC, 00000001
        mov     eax, dword [rbp-8H]                     ; 007D _ 8B. 45, F8
        mov     edi, eax                                ; 0080 _ 89. C7
        call    generateNum                             ; 0082 _ E8, 00000000(PLT r)
        mov     dword [rel number], eax                 ; 0087 _ 89. 05, 00000000(rel)
        jmp     ?_002                                   ; 008D _ EB, 3D

?_001:  mov     eax, dword [rbp-4H]                     ; 008F _ 8B. 45, FC
        sub     eax, 1                                  ; 0092 _ 83. E8, 01
        cdqe                                            ; 0095 _ 48: 98
        lea     rdx, [rax*4]                            ; 0097 _ 48: 8D. 14 85, 00000000
        lea     rax, [rel number]                       ; 009F _ 48: 8D. 05, 00000000(rel)
        mov     eax, dword [rdx+rax]                    ; 00A6 _ 8B. 04 02
        mov     edi, eax                                ; 00A9 _ 89. C7
        call    generateNum                             ; 00AB _ E8, 00000000(PLT r)
        mov     edx, dword [rbp-4H]                     ; 00B0 _ 8B. 55, FC
        movsxd  rdx, edx                                ; 00B3 _ 48: 63. D2
        lea     rcx, [rdx*4]                            ; 00B6 _ 48: 8D. 0C 95, 00000000
        lea     rdx, [rel number]                       ; 00BE _ 48: 8D. 15, 00000000(rel)
        mov     dword [rcx+rdx], eax                    ; 00C5 _ 89. 04 11
        add     dword [rbp-4H], 1                       ; 00C8 _ 83. 45, FC, 01
?_002:  mov     eax, dword [rbp-4H]                     ; 00CC _ 8B. 45, FC
        cmp     eax, dword [rbp-14H]                    ; 00CF _ 3B. 45, EC
        jl      ?_001                                   ; 00D2 _ 7C, BB
        mov     eax, 0                                  ; 00D4 _ B8, 00000000
        leave                                           ; 00D9 _ C9
        ret                                             ; 00DA _ C3
; generateQuestion End of function

parseNum:; Function begin
        push    rbp                                     ; 00DB _ 55
        mov     rbp, rsp                                ; 00DC _ 48: 89. E5
        mov     dword [rbp-14H], edi                    ; 00DF _ 89. 7D, EC
        mov     dword [rbp-4H], 0                       ; 00E2 _ C7. 45, FC, 00000000
        mov     dword [rbp-8H], 0                       ; 00E9 _ C7. 45, F8, 00000000
        jmp     ?_006                                   ; 00F0 _ EB, 66

?_003:  mov     dword [rbp-0CH], 0                      ; 00F2 _ C7. 45, F4, 00000000
?_004:  mov     eax, dword [rbp-4H]                     ; 00F9 _ 8B. 45, FC
        cdqe                                            ; 00FC _ 48: 98
        lea     rdx, [rel buf]                          ; 00FE _ 48: 8D. 15, 00000000(rel)
        movzx   eax, byte [rax+rdx]                     ; 0105 _ 0F B6. 04 10
        movsx   eax, al                                 ; 0109 _ 0F BE. C0
        sub     eax, 48                                 ; 010C _ 83. E8, 30
        mov     dword [rbp-10H], eax                    ; 010F _ 89. 45, F0
        add     dword [rbp-4H], 1                       ; 0112 _ 83. 45, FC, 01
        cmp     dword [rbp-10H], 0                      ; 0116 _ 83. 7D, F0, 00
        js      ?_005                                   ; 011A _ 78, 1E
        cmp     dword [rbp-10H], 9                      ; 011C _ 83. 7D, F0, 09
        jg      ?_005                                   ; 0120 _ 7F, 18
        mov     edx, dword [rbp-0CH]                    ; 0122 _ 8B. 55, F4
        mov     eax, edx                                ; 0125 _ 89. D0
        shl     eax, 2                                  ; 0127 _ C1. E0, 02
        add     eax, edx                                ; 012A _ 01. D0
        add     eax, eax                                ; 012C _ 01. C0
        mov     edx, eax                                ; 012E _ 89. C2
        mov     eax, dword [rbp-10H]                    ; 0130 _ 8B. 45, F0
        add     eax, edx                                ; 0133 _ 01. D0
        mov     dword [rbp-0CH], eax                    ; 0135 _ 89. 45, F4
        jmp     ?_004                                   ; 0138 _ EB, BF

?_005:  mov     eax, dword [rbp-8H]                     ; 013A _ 8B. 45, F8
        cdqe                                            ; 013D _ 48: 98
        lea     rcx, [rax*4]                            ; 013F _ 48: 8D. 0C 85, 00000000
        lea     rdx, [rel guess]                        ; 0147 _ 48: 8D. 15, 00000000(rel)
        mov     eax, dword [rbp-0CH]                    ; 014E _ 8B. 45, F4
        mov     dword [rcx+rdx], eax                    ; 0151 _ 89. 04 11
        add     dword [rbp-8H], 1                       ; 0154 _ 83. 45, F8, 01
?_006:  mov     eax, dword [rbp-8H]                     ; 0158 _ 8B. 45, F8
        cmp     eax, dword [rbp-14H]                    ; 015B _ 3B. 45, EC
        jl      ?_003                                   ; 015E _ 7C, 92
        mov     eax, 0                                  ; 0160 _ B8, 00000000
        pop     rbp                                     ; 0165 _ 5D
        ret                                             ; 0166 _ C3
; parseNum End of function

clearbuf:; Function begin
        push    rbp                                     ; 0167 _ 55
        mov     rbp, rsp                                ; 0168 _ 48: 89. E5
        mov     dword [rbp-4H], 0                       ; 016B _ C7. 45, FC, 00000000
        jmp     ?_008                                   ; 0172 _ EB, 14

?_007:  mov     eax, dword [rbp-4H]                     ; 0174 _ 8B. 45, FC
        cdqe                                            ; 0177 _ 48: 98
        lea     rdx, [rel buf]                          ; 0179 _ 48: 8D. 15, 00000000(rel)
        mov     byte [rax+rdx], 36                      ; 0180 _ C6. 04 10, 24
        add     dword [rbp-4H], 1                       ; 0184 _ 83. 45, FC, 01
?_008:  cmp     dword [rbp-4H], 49                      ; 0188 _ 83. 7D, FC, 31
        jle     ?_007                                   ; 018C _ 7E, E6
        mov     eax, 0                                  ; 018E _ B8, 00000000
        pop     rbp                                     ; 0193 _ 5D
        ret                                             ; 0194 _ C3
; clearbuf End of function

main:   ; Function begin
        push    rbp                                     ; 0195 _ 55
        mov     rbp, rsp                                ; 0196 _ 48: 89. E5
        sub     rsp, 16                                 ; 0199 _ 48: 83. EC, 10
        mov     qword [rbp-8H], 0                       ; 019D _ 48: C7. 45, F8, 00000000
        lea     rax, [rbp-8H]                           ; 01A5 _ 48: 8D. 45, F8
        mov     rdi, rax                                ; 01A9 _ 48: 89. C7
        mov     eax, 201                                  ; 028F _ B8, 00000000
        syscall
        mov     rcx, qword [rbp-8H]                     ; 01B1 _ 48: 8B. 4D, F8
        mov     rdx, qword 0A3D70A3D70A3D70BH           ; 01B5 _ 48: BA, A3D70A3D70A3D70B
        mov     rax, rcx                                ; 01BF _ 48: 89. C8
        imul    rdx                                     ; 01C2 _ 48: F7. EA
        lea     rax, [rdx+rcx]                          ; 01C5 _ 48: 8D. 04 0A
        sar     rax, 6                                  ; 01C9 _ 48: C1. F8, 06
        mov     rdx, rax                                ; 01CD _ 48: 89. C2
        mov     rax, rcx                                ; 01D0 _ 48: 89. C8
        sar     rax, 63                                 ; 01D3 _ 48: C1. F8, 3F
        sub     rdx, rax                                ; 01D7 _ 48: 29. C2
        mov     rax, rdx                                ; 01DA _ 48: 89. D0
        shl     rax, 2                                  ; 01DD _ 48: C1. E0, 02
        add     rax, rdx                                ; 01E1 _ 48: 01. D0
        lea     rdx, [rax*4]                            ; 01E4 _ 48: 8D. 14 85, 00000000
        add     rax, rdx                                ; 01EC _ 48: 01. D0
        shl     rax, 2                                  ; 01EF _ 48: C1. E0, 02
        sub     rcx, rax                                ; 01F3 _ 48: 29. C1
        mov     rdx, rcx                                ; 01F6 _ 48: 89. CA
        mov     eax, edx                                ; 01F9 _ 89. D0
        cdqe                                            ; 01FB _ 48: 98
        mov     qword [rbp-8H], rax                     ; 01FD _ 48: 89. 45, F8
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [rbp-0AH], 12336                   ; 0201 _ 66: C7. 45, F6, 3030
        mov     rcx, qword [rbp-8H]                     ; 0207 _ 48: 8B. 4D, F8
        mov     rdx, qword 6666666666666667H            ; 020B _ 48: BA, 6666666666666667
        mov     rax, rcx                                ; 0215 _ 48: 89. C8
        imul    rdx                                     ; 0218 _ 48: F7. EA
        sar     rdx, 2                                  ; 021B _ 48: C1. FA, 02
        mov     rax, rcx                                ; 021F _ 48: 89. C8
        sar     rax, 63                                 ; 0222 _ 48: C1. F8, 3F
        sub     rdx, rax                                ; 0226 _ 48: 29. C2
        mov     rax, rdx                                ; 0229 _ 48: 89. D0
        add     eax, 48                                 ; 022C _ 83. C0, 30
        mov     byte [rbp-0AH], al                      ; 022F _ 88. 45, F6
        mov     rcx, qword [rbp-8H]                     ; 0232 _ 48: 8B. 4D, F8
        mov     rdx, qword 6666666666666667H            ; 0236 _ 48: BA, 6666666666666667
        mov     rax, rcx                                ; 0240 _ 48: 89. C8
        imul    rdx                                     ; 0243 _ 48: F7. EA
        sar     rdx, 2                                  ; 0246 _ 48: C1. FA, 02
        mov     rax, rcx                                ; 024A _ 48: 89. C8
        sar     rax, 63                                 ; 024D _ 48: C1. F8, 3F
        sub     rdx, rax                                ; 0251 _ 48: 29. C2
        mov     rax, rdx                                ; 0254 _ 48: 89. D0
        shl     rax, 2                                  ; 0257 _ 48: C1. E0, 02
        add     rax, rdx                                ; 025B _ 48: 01. D0
        add     rax, rax                                ; 025E _ 48: 01. C0
        sub     rcx, rax                                ; 0261 _ 48: 29. C1
        mov     rdx, rcx                                ; 0264 _ 48: 89. CA
        mov     eax, edx                                ; 0267 _ 89. D0
        add     eax, 48                                 ; 0269 _ 83. C0, 30
        mov     byte [rbp-9H], al                       ; 026C _ 88. 45, F7
        lea     rax, [rbp-0AH]                          ; 026F _ 48: 8D. 45, F6
        mov     edx, 2                                  ; 0273 _ BA, 00000002
        mov     rsi, rax                                ; 0278 _ 48: 89. C6
        mov     edi, 1                                  ; 027B _ BF, 00000001
        mov     eax, 1                                  ; 028F _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 0285 _ B8, 00000000
        call    writeSpace                              ; 028A _ E8, 00000000(PLT r)
        mov     eax, 60                                  ; 028F _ B8, 00000000
        syscall
; main End of function


SECTION .data   align=32                                ; section number 2, data

buf:                                                    ; byte
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0000 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0008 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0010 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0018 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0020 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0028 _ $$$$$$$$
        db 24H, 24H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0030 _ $$......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0038 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0060 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0068 _ ........

guess:                                                  ; byte
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH; 0070 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH; 0078 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH; 0080 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 00H, 00H, 00H, 00H   ; 0088 _ ........

number:                                                 ; byte
        dd 0FFFFFFFFH, 0FFFFFFFFH                       ; 0090 _ -1 -1 
        dd 0FFFFFFFFH, 0FFFFFFFFH                       ; 0098 _ -1 -1 
        dd 0FFFFFFFFH, 0FFFFFFFFH                       ; 00A0 _ -1 -1 
        dd 0FFFFFFFFH                                   ; 00A8 _ -1 


SECTION .bss    align=1                                 ; section number 3, bss


SECTION .rodata align=1                                 ; section number 4, const

?_009:                                                  ; byte
        db 0AH, 00H                                     ; 0000 _ ..


SECTION .eh_frame align=8                               ; section number 5, const

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
        dd 0000000FH, 100E4100H                         ; 0064 _ 15 269369600 
        dd 0D430286H, 070C4A06H                         ; 006C _ 222495366 118245894 
        dd 00000008H, 0000001CH                         ; 0074 _ 8 28 
        dd 0000007CH                                    ; 007C _ 124 
        dd fun-$-47H                                    ; 0080 _ 00000000 (rel)
        dd 0000001DH, 100E4100H                         ; 0084 _ 29 269369600 
        dd 0D430286H, 070C5806H                         ; 008C _ 222495366 118249478 
        dd 00000008H, 0000001CH                         ; 0094 _ 8 28 
        dd 0000009CH                                    ; 009C _ 156 
        dd fun-$-4AH                                    ; 00A0 _ 00000000 (rel)
        dd 0000000EH, 100E4100H                         ; 00A4 _ 14 269369600 
        dd 0D430286H, 070C4906H                         ; 00AC _ 222495366 118245638 
        dd 00000008H, 0000001CH                         ; 00B4 _ 8 28 
        dd 000000BCH                                    ; 00BC _ 188 
        dd fun-$-5CH                                    ; 00C0 _ 00000000 (rel)
        dd 00000077H, 100E4100H                         ; 00C4 _ 119 269369600 
        dd 0D430286H, 0C720206H                         ; 00CC _ 222495366 208798214 
        dd 00000807H, 0000001CH                         ; 00D4 _ 2055 28 
        dd 000000DCH                                    ; 00DC _ 220 
        dd fun-$-5H                                     ; 00E0 _ 00000000 (rel)
        dd 0000008CH, 100E4100H                         ; 00E4 _ 140 269369600 
        dd 0D430286H, 0C870206H                         ; 00EC _ 222495366 210174470 
        dd 00000807H, 0000001CH                         ; 00F4 _ 2055 28 
        dd 000000FCH                                    ; 00FC _ 252 
        dd fun-$+67H                                    ; 0100 _ 00000000 (rel)
        dd 0000002EH, 100E4100H                         ; 0104 _ 46 269369600 
        dd 0D430286H, 070C6906H                         ; 010C _ 222495366 118253830 
        dd 00000008H, 0000001CH                         ; 0114 _ 8 28 
        dd 0000011CH                                    ; 011C _ 284 
        dd fun-$+75H                                    ; 0120 _ 00000000 (rel)
        dd 00000101H, 100E4100H                         ; 0124 _ 257 269369600 
        dd 0D430286H, 0CFC0206H                         ; 012C _ 222495366 217842182 
        dd 00000807H                                    ; 0134 _ 2055 



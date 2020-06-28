; Disassembly of file: game.o
; Sun Jun 28 18:48:26 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 80386, x64

default rel

global fun
global fun2
global writeStr
global writeSpace
global generateNum
global generateQuestion
global parseNum
global clearbuf
global main
global pre0
global pre
global pre1
global pre2
global pre3
global pre4
global pre5
global judge1
global judge2
global judge3
global state1
global state2
global state3
global state4
global state5
global buf
global guess
global number
global correct
global finish
global target
global num


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

writeStr:; Function begin
        push    rbp                                     ; 002A _ 55
        mov     rbp, rsp                                ; 002B _ 48: 89. E5
        sub     rsp, 24                                 ; 002E _ 48: 83. EC, 18
        mov     qword [rbp-18H], rdi                    ; 0032 _ 48: 89. 7D, E8
        mov     dword [rbp-4H], 0                       ; 0036 _ C7. 45, FC, 00000000
        jmp     ?_002                                   ; 003D _ EB, 23

?_001:  mov     eax, dword [rbp-4H]                     ; 003F _ 8B. 45, FC
        movsxd  rdx, eax                                ; 0042 _ 48: 63. D0
        mov     rax, qword [rbp-18H]                    ; 0045 _ 48: 8B. 45, E8
        add     rax, rdx                                ; 0049 _ 48: 01. D0
        mov     edx, 1                                  ; 004C _ BA, 00000001
        mov     rsi, rax                                ; 0051 _ 48: 89. C6
        mov     edi, 1                                  ; 0054 _ BF, 00000001
        call    fun                                     ; 0059 _ E8, 00000000(PLT r)
        add     dword [rbp-4H], 1                       ; 005E _ 83. 45, FC, 01
?_002:  mov     eax, dword [rbp-4H]                     ; 0062 _ 8B. 45, FC
        movsxd  rdx, eax                                ; 0065 _ 48: 63. D0
        mov     rax, qword [rbp-18H]                    ; 0068 _ 48: 8B. 45, E8
        add     rax, rdx                                ; 006C _ 48: 01. D0
        movzx   eax, byte [rax]                         ; 006F _ 0F B6. 00
        cmp     al, 10                                  ; 0072 _ 3C, 0A
        jnz     ?_001                                   ; 0074 _ 75, C9
        mov     eax, 0                                  ; 0076 _ B8, 00000000
        leave                                           ; 007B _ C9
        ret                                             ; 007C _ C3
; writeStr End of function

writeSpace:; Function begin
        push    rbp                                     ; 007D _ 55
        mov     rbp, rsp                                ; 007E _ 48: 89. E5
        mov     edx, 1                                  ; 0081 _ BA, 00000001
        lea     rsi, [rel ?_021]                        ; 0086 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 008D _ BF, 00000001
        call    fun                                     ; 0092 _ E8, 00000000(PLT r)
        nop                                             ; 0097 _ 90
        pop     rbp                                     ; 0098 _ 5D
        ret                                             ; 0099 _ C3
; writeSpace End of function

generateNum:; Function begin
        push    rbp                                     ; 009A _ 55
        mov     rbp, rsp                                ; 009B _ 48: 89. E5
        mov     dword [rbp-4H], edi                     ; 009E _ 89. 7D, FC
        mov     eax, 5                                  ; 00A1 _ B8, 00000005
        pop     rbp                                     ; 00A6 _ 5D
        ret                                             ; 00A7 _ C3
; generateNum End of function

generateQuestion:; Function begin
        push    rbp                                     ; 00A8 _ 55
        mov     rbp, rsp                                ; 00A9 _ 48: 89. E5
        sub     rsp, 24                                 ; 00AC _ 48: 83. EC, 18
        mov     dword [rbp-14H], edi                    ; 00B0 _ 89. 7D, EC
        mov     dword [rbp-8H], 5                       ; 00B3 _ C7. 45, F8, 00000005
        mov     dword [rbp-4H], 1                       ; 00BA _ C7. 45, FC, 00000001
        mov     eax, dword [rbp-8H]                     ; 00C1 _ 8B. 45, F8
        mov     edi, eax                                ; 00C4 _ 89. C7
        call    generateNum                             ; 00C6 _ E8, 00000000(PLT r)
        mov     dword [rel number], eax                 ; 00CB _ 89. 05, 00000000(rel)
        jmp     ?_004                                   ; 00D1 _ EB, 3D

?_003:  mov     eax, dword [rbp-4H]                     ; 00D3 _ 8B. 45, FC
        sub     eax, 1                                  ; 00D6 _ 83. E8, 01
        cdqe                                            ; 00D9 _ 48: 98
        lea     rdx, [rax*4]                            ; 00DB _ 48: 8D. 14 85, 00000000
        lea     rax, [rel number]                       ; 00E3 _ 48: 8D. 05, 00000000(rel)
        mov     eax, dword [rdx+rax]                    ; 00EA _ 8B. 04 02
        mov     edi, eax                                ; 00ED _ 89. C7
        call    generateNum                             ; 00EF _ E8, 00000000(PLT r)
        mov     edx, dword [rbp-4H]                     ; 00F4 _ 8B. 55, FC
        movsxd  rdx, edx                                ; 00F7 _ 48: 63. D2
        lea     rcx, [rdx*4]                            ; 00FA _ 48: 8D. 0C 95, 00000000
        lea     rdx, [rel number]                       ; 0102 _ 48: 8D. 15, 00000000(rel)
        mov     dword [rcx+rdx], eax                    ; 0109 _ 89. 04 11
        add     dword [rbp-4H], 1                       ; 010C _ 83. 45, FC, 01
?_004:  mov     eax, dword [rbp-4H]                     ; 0110 _ 8B. 45, FC
        cmp     eax, dword [rbp-14H]                    ; 0113 _ 3B. 45, EC
        jl      ?_003                                   ; 0116 _ 7C, BB
        mov     eax, 0                                  ; 0118 _ B8, 00000000
        leave                                           ; 011D _ C9
        ret                                             ; 011E _ C3
; generateQuestion End of function

parseNum:; Function begin
        push    rbp                                     ; 011F _ 55
        mov     rbp, rsp                                ; 0120 _ 48: 89. E5
        mov     dword [rbp-14H], edi                    ; 0123 _ 89. 7D, EC
        mov     dword [rbp-4H], 0                       ; 0126 _ C7. 45, FC, 00000000
        mov     dword [rbp-8H], 0                       ; 012D _ C7. 45, F8, 00000000
        jmp     ?_008                                   ; 0134 _ EB, 66

?_005:  mov     dword [rbp-0CH], 0                      ; 0136 _ C7. 45, F4, 00000000
?_006:  mov     eax, dword [rbp-4H]                     ; 013D _ 8B. 45, FC
        cdqe                                            ; 0140 _ 48: 98
        lea     rdx, [rel buf]                          ; 0142 _ 48: 8D. 15, 00000000(rel)
        movzx   eax, byte [rax+rdx]                     ; 0149 _ 0F B6. 04 10
        movsx   eax, al                                 ; 014D _ 0F BE. C0
        sub     eax, 48                                 ; 0150 _ 83. E8, 30
        mov     dword [rbp-10H], eax                    ; 0153 _ 89. 45, F0
        add     dword [rbp-4H], 1                       ; 0156 _ 83. 45, FC, 01
        cmp     dword [rbp-10H], 0                      ; 015A _ 83. 7D, F0, 00
        js      ?_007                                   ; 015E _ 78, 1E
        cmp     dword [rbp-10H], 9                      ; 0160 _ 83. 7D, F0, 09
        jg      ?_007                                   ; 0164 _ 7F, 18
        mov     edx, dword [rbp-0CH]                    ; 0166 _ 8B. 55, F4
        mov     eax, edx                                ; 0169 _ 89. D0
        shl     eax, 2                                  ; 016B _ C1. E0, 02
        add     eax, edx                                ; 016E _ 01. D0
        add     eax, eax                                ; 0170 _ 01. C0
        mov     edx, eax                                ; 0172 _ 89. C2
        mov     eax, dword [rbp-10H]                    ; 0174 _ 8B. 45, F0
        add     eax, edx                                ; 0177 _ 01. D0
        mov     dword [rbp-0CH], eax                    ; 0179 _ 89. 45, F4
        jmp     ?_006                                   ; 017C _ EB, BF

?_007:  mov     eax, dword [rbp-8H]                     ; 017E _ 8B. 45, F8
        cdqe                                            ; 0181 _ 48: 98
        lea     rcx, [rax*4]                            ; 0183 _ 48: 8D. 0C 85, 00000000
        lea     rdx, [rel guess]                        ; 018B _ 48: 8D. 15, 00000000(rel)
        mov     eax, dword [rbp-0CH]                    ; 0192 _ 8B. 45, F4
        mov     dword [rcx+rdx], eax                    ; 0195 _ 89. 04 11
        add     dword [rbp-8H], 1                       ; 0198 _ 83. 45, F8, 01
?_008:  mov     eax, dword [rbp-8H]                     ; 019C _ 8B. 45, F8
        cmp     eax, dword [rbp-14H]                    ; 019F _ 3B. 45, EC
        jl      ?_005                                   ; 01A2 _ 7C, 92
        mov     eax, 0                                  ; 01A4 _ B8, 00000000
        pop     rbp                                     ; 01A9 _ 5D
        ret                                             ; 01AA _ C3
; parseNum End of function

clearbuf:; Function begin
        push    rbp                                     ; 01AB _ 55
        mov     rbp, rsp                                ; 01AC _ 48: 89. E5
        mov     dword [rbp-4H], 0                       ; 01AF _ C7. 45, FC, 00000000
        jmp     ?_010                                   ; 01B6 _ EB, 14

?_009:  mov     eax, dword [rbp-4H]                     ; 01B8 _ 8B. 45, FC
        cdqe                                            ; 01BB _ 48: 98
        lea     rdx, [rel buf]                          ; 01BD _ 48: 8D. 15, 00000000(rel)
        mov     byte [rax+rdx], 36                      ; 01C4 _ C6. 04 10, 24
        add     dword [rbp-4H], 1                       ; 01C8 _ 83. 45, FC, 01
?_010:  cmp     dword [rbp-4H], 49                      ; 01CC _ 83. 7D, FC, 31
        jle     ?_009                                   ; 01D0 _ 7E, E6
        mov     eax, 0                                  ; 01D2 _ B8, 00000000
        pop     rbp                                     ; 01D7 _ 5D
        ret                                             ; 01D8 _ C3
; clearbuf End of function

main:   ; Function begin
        push    rbp                                     ; 01D9 _ 55
        mov     rbp, rsp                                ; 01DA _ 48: 89. E5
        sub     rsp, 16                                 ; 01DD _ 48: 83. EC, 10
        mov     edx, 7                                  ; 01E1 _ BA, 00000007
        lea     rsi, [rel pre5]                         ; 01E6 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 01ED _ BF, 00000001
        call    fun                                     ; 01F2 _ E8, 00000000(PLT r)
        mov     edx, 5                                  ; 01F7 _ BA, 00000005
        lea     rsi, [rel buf]                          ; 01FC _ 48: 8D. 35, 00000000(rel)
        mov     edi, 0                                  ; 0203 _ BF, 00000000
        call    fun2                                    ; 0208 _ E8, 00000000(PLT r)
        movzx   eax, byte [rel buf]                     ; 020D _ 0F B6. 05, 00000000(rel)
        cmp     al, 49                                  ; 0214 _ 3C, 31
        jnz     ?_011                                   ; 0216 _ 75, 0C
        mov     dword [rel target], 3                   ; 0218 _ C7. 05, 00000000(rel), 00000003
        jmp     ?_013                                   ; 0222 _ EB, 2C

?_011:  movzx   eax, byte [rel buf]                     ; 0224 _ 0F B6. 05, 00000000(rel)
        cmp     al, 50                                  ; 022B _ 3C, 32
        jnz     ?_012                                   ; 022D _ 75, 0C
        mov     dword [rel target], 5                   ; 022F _ C7. 05, 00000000(rel), 00000005
        jmp     ?_013                                   ; 0239 _ EB, 15

?_012:  movzx   eax, byte [rel buf]                     ; 023B _ 0F B6. 05, 00000000(rel)
        cmp     al, 51                                  ; 0242 _ 3C, 33
        jnz     ?_013                                   ; 0244 _ 75, 0A
        mov     dword [rel target], 7                   ; 0246 _ C7. 05, 00000000(rel), 00000007
?_013:  mov     eax, 0                                  ; 0250 _ B8, 00000000
        call    clearbuf                                ; 0255 _ E8, 00000000(PLT r)
        mov     eax, dword [rel target]                 ; 025A _ 8B. 05, 00000000(rel)
        mov     edi, eax                                ; 0260 _ 89. C7
        call    generateQuestion                        ; 0262 _ E8, 00000000(PLT r)
        mov     dword [rbp-4H], 0                       ; 0267 _ C7. 45, FC, 00000000
        jmp     ?_020                                   ; 026E _ E9, 000001A5

?_014:  mov     dword [rbp-4H], 0                       ; 0273 _ C7. 45, FC, 00000000
        mov     edx, 24                                 ; 027A _ BA, 00000018
        lea     rsi, [rel state4]                       ; 027F _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0286 _ BF, 00000001
        call    fun                                     ; 028B _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 0290 _ B8, 00000000
        call    writeSpace                              ; 0295 _ E8, 00000000(PLT r)
        mov     edx, 50                                 ; 029A _ BA, 00000032
        lea     rsi, [rel buf]                          ; 029F _ 48: 8D. 35, 00000000(rel)
        mov     edi, 0                                  ; 02A6 _ BF, 00000000
        call    fun2                                    ; 02AB _ E8, 00000000(PLT r)
        mov     eax, dword [rel target]                 ; 02B0 _ 8B. 05, 00000000(rel)
        mov     edi, eax                                ; 02B6 _ 89. C7
        call    parseNum                                ; 02B8 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 02BD _ B8, 00000000
        call    clearbuf                                ; 02C2 _ E8, 00000000(PLT r)
        mov     dword [rbp-8H], 0                       ; 02C7 _ C7. 45, F8, 00000000
        jmp     ?_019                                   ; 02CE _ E9, 000000F4

?_015:  mov     eax, dword [rbp-8H]                     ; 02D3 _ 8B. 45, F8
        add     eax, 49                                 ; 02D6 _ 83. C0, 31
        mov     byte [rel state2], al                   ; 02D9 _ 88. 05, 00000000(rel)
        mov     edx, 17                                 ; 02DF _ BA, 00000011
        lea     rsi, [rel state5]                       ; 02E4 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 02EB _ BF, 00000001
        call    fun                                     ; 02F0 _ E8, 00000000(PLT r)
        mov     edx, 4                                  ; 02F5 _ BA, 00000004
        lea     rsi, [rel state2]                       ; 02FA _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0301 _ BF, 00000001
        call    fun                                     ; 0306 _ E8, 00000000(PLT r)
        mov     eax, dword [rbp-8H]                     ; 030B _ 8B. 45, F8
        cdqe                                            ; 030E _ 48: 98
        lea     rdx, [rax*4]                            ; 0310 _ 48: 8D. 14 85, 00000000
        lea     rax, [rel guess]                        ; 0318 _ 48: 8D. 05, 00000000(rel)
        mov     edx, dword [rdx+rax]                    ; 031F _ 8B. 14 02
        mov     eax, dword [rbp-8H]                     ; 0322 _ 8B. 45, F8
        cdqe                                            ; 0325 _ 48: 98
        lea     rcx, [rax*4]                            ; 0327 _ 48: 8D. 0C 85, 00000000
        lea     rax, [rel number]                       ; 032F _ 48: 8D. 05, 00000000(rel)
        mov     eax, dword [rcx+rax]                    ; 0336 _ 8B. 04 01
        cmp     edx, eax                                ; 0339 _ 39. C2
        jge     ?_016                                   ; 033B _ 7D, 18
        mov     edx, 14                                 ; 033D _ BA, 0000000E
        lea     rsi, [rel judge3]                       ; 0342 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0349 _ BF, 00000001
        call    fun                                     ; 034E _ E8, 00000000(PLT r)
        jmp     ?_018                                   ; 0353 _ EB, 64

?_016:  mov     eax, dword [rbp-8H]                     ; 0355 _ 8B. 45, F8
        cdqe                                            ; 0358 _ 48: 98
        lea     rdx, [rax*4]                            ; 035A _ 48: 8D. 14 85, 00000000
        lea     rax, [rel guess]                        ; 0362 _ 48: 8D. 05, 00000000(rel)
        mov     edx, dword [rdx+rax]                    ; 0369 _ 8B. 14 02
        mov     eax, dword [rbp-8H]                     ; 036C _ 8B. 45, F8
        cdqe                                            ; 036F _ 48: 98
        lea     rcx, [rax*4]                            ; 0371 _ 48: 8D. 0C 85, 00000000
        lea     rax, [rel number]                       ; 0379 _ 48: 8D. 05, 00000000(rel)
        mov     eax, dword [rcx+rax]                    ; 0380 _ 8B. 04 01
        cmp     edx, eax                                ; 0383 _ 39. C2
        jle     ?_017                                   ; 0385 _ 7E, 18
        mov     edx, 14                                 ; 0387 _ BA, 0000000E
        lea     rsi, [rel judge2]                       ; 038C _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0393 _ BF, 00000001
        call    fun                                     ; 0398 _ E8, 00000000(PLT r)
        jmp     ?_018                                   ; 039D _ EB, 1A

?_017:  mov     edx, 5                                  ; 039F _ BA, 00000005
        lea     rsi, [rel judge1]                       ; 03A4 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 03AB _ BF, 00000001
        call    fun                                     ; 03B0 _ E8, 00000000(PLT r)
        add     dword [rbp-4H], 1                       ; 03B5 _ 83. 45, FC, 01
?_018:  mov     eax, 0                                  ; 03B9 _ B8, 00000000
        call    writeSpace                              ; 03BE _ E8, 00000000(PLT r)
        add     dword [rbp-8H], 1                       ; 03C3 _ 83. 45, F8, 01
?_019:  mov     eax, dword [rel target]                 ; 03C7 _ 8B. 05, 00000000(rel)
        cmp     dword [rbp-8H], eax                     ; 03CD _ 39. 45, F8
        jl      ?_015                                   ; 03D0 _ 0F 8C, FFFFFEFD
        mov     eax, dword [rbp-4H]                     ; 03D6 _ 8B. 45, FC
        add     eax, 48                                 ; 03D9 _ 83. C0, 30
        mov     byte [rel state2], al                   ; 03DC _ 88. 05, 00000000(rel)
        mov     edx, 23                                 ; 03E2 _ BA, 00000017
        lea     rsi, [rel state1]                       ; 03E7 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 03EE _ BF, 00000001
        call    fun                                     ; 03F3 _ E8, 00000000(PLT r)
        mov     edx, 1                                  ; 03F8 _ BA, 00000001
        lea     rsi, [rel state2]                       ; 03FD _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0404 _ BF, 00000001
        call    fun                                     ; 0409 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 040E _ B8, 00000000
        call    writeSpace                              ; 0413 _ E8, 00000000(PLT r)
?_020:  mov     eax, dword [rel target]                 ; 0418 _ 8B. 05, 00000000(rel)
        cmp     dword [rbp-4H], eax                     ; 041E _ 39. 45, FC
        jl      ?_014                                   ; 0421 _ 0F 8C, FFFFFE4C
        mov     eax, 0                                  ; 0427 _ B8, 00000000
        leave                                           ; 042C _ C9
        ret                                             ; 042D _ C3
; main End of function


SECTION .data   align=32                                ; section number 2, data

pre0:                                                   ; byte
        db 43H, 68H, 61H, 72H, 20H, 47H, 75H, 65H       ; 0000 _ Char Gue
        db 73H, 73H, 69H, 6EH, 67H, 20H, 47H, 61H       ; 0008 _ ssing Ga
        db 6DH, 65H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ me......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

pre:                                                    ; byte
        db 54H, 65H, 62H, 61H, 6BH, 20H, 61H, 6EH       ; 0020 _ Tebak an
        db 67H, 6BH, 61H, 20H, 64H, 61H, 72H, 69H       ; 0028 _ gka dari
        db 20H, 31H, 2DH, 32H, 35H, 35H, 00H, 00H       ; 0030 _  1-255..
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0038 _ ........

pre1:                                                   ; byte
        db 70H, 69H, 6CH, 69H, 68H, 20H, 74H, 69H       ; 0040 _ pilih ti
        db 6EH, 67H, 6BH, 61H, 74H, 20H, 6BH, 65H       ; 0048 _ ngkat ke
        db 73H, 75H, 6CH, 69H, 74H, 61H, 6EH, 3AH       ; 0050 _ sulitan:

pre2:                                                   ; byte
        db 31H, 2EH, 20H, 45H, 61H, 73H, 79H, 20H       ; 0058 _ 1. Easy 
        db 28H, 33H, 20H, 6EH, 75H, 6DH, 29H, 00H       ; 0060 _ (3 num).
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0068 _ ........

pre3:                                                   ; byte
        db 32H, 2EH, 20H, 4EH, 6FH, 72H, 6DH, 61H       ; 0070 _ 2. Norma
        db 6CH, 20H, 28H, 35H, 20H, 6EH, 75H, 6DH       ; 0078 _ l (5 num
        db 29H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0080 _ ).......

pre4:                                                   ; byte
        db 33H, 2EH, 20H, 48H, 61H, 72H, 64H, 20H       ; 0088 _ 3. Hard 
        db 28H, 37H, 20H, 6EH, 75H, 6DH, 29H            ; 0090 _ (7 num)

pre5:                                                   ; byte
        db 70H, 69H, 6CH, 69H, 68H, 3AH, 20H            ; 0097 _ pilih: 

judge1:                                                 ; byte
        db 62H, 65H, 6EH, 61H, 72H, 00H, 00H, 00H       ; 009E _ benar...
        db 00H, 00H                                     ; 00A6 _ ..

judge2:                                                 ; byte
        db 74H, 65H, 72H, 6CH, 61H, 6CH, 75H, 20H       ; 00A8 _ terlalu 
        db 74H, 69H, 6EH, 67H, 67H, 69H, 00H, 00H       ; 00B0 _ tinggi..

judge3:                                                 ; byte
        db 74H, 65H, 72H, 6CH, 61H, 6CH, 75H, 20H       ; 00B8 _ terlalu 
        db 72H, 65H, 6EH, 64H, 61H, 68H, 00H, 00H       ; 00C0 _ rendah..
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C8 _ ........

state1:                                                 ; byte
        db 6AH, 75H, 6DH, 6CH, 61H, 68H, 20H, 74H       ; 00D0 _ jumlah t
        db 65H, 62H, 61H, 6BH, 61H, 6EH, 20H, 62H       ; 00D8 _ ebakan b
        db 65H, 6EH, 61H, 72H, 20H, 3AH, 20H            ; 00E0 _ enar : 

state2: dd 203A2030H, 00000000H                         ; 00E7 _ 540680240 0 
        dd 00000000H, 00000000H                         ; 00EF _ 0 0 
        dd 00000000H, 00000000H                         ; 00F7 _ 0 0 
        db 00H                                          ; 00FF _ .

state3:                                                 ; byte
        db 53H, 65H, 6CH, 61H, 6DH, 61H, 74H, 20H       ; 0100 _ Selamat 
        db 61H, 6EH, 64H, 61H, 20H, 6DH, 65H, 6DH       ; 0108 _ anda mem
        db 65H, 6EH, 61H, 6EH, 67H, 6BH, 61H, 6EH       ; 0110 _ enangkan
        db 20H, 70H, 65H, 72H, 6DH, 61H, 69H, 6EH       ; 0118 _  permain
        db 61H, 6EH, 21H, 00H, 00H, 00H, 00H, 00H       ; 0120 _ an!.....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0128 _ ........

state4:                                                 ; byte
        db 6DH, 61H, 73H, 75H, 6BH, 6BH, 61H, 6EH       ; 0130 _ masukkan
        db 20H, 61H, 6EH, 67H, 6BH, 61H, 20H, 74H       ; 0138 _  angka t
        db 65H, 62H, 61H, 6BH, 61H, 6EH, 20H, 3AH       ; 0140 _ ebakan :
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0148 _ ........

state5:                                                 ; byte
        db 74H, 65H, 62H, 61H, 6BH, 61H, 6EH, 20H       ; 0150 _ tebakan 
        db 61H, 6EH, 67H, 6BH, 61H, 20H, 6BH, 65H       ; 0158 _ angka ke
        db 2DH, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0160 _ -.......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

buf:                                                    ; byte
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0180 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0188 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0190 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0198 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 01A0 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 01A8 _ $$$$$$$$
        db 24H, 24H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01B0 _ $$......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01B8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01C0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01C8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01D0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01E0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01E8 _ ........

guess:                                                  ; byte
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH; 01F0 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH; 01F8 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH; 0200 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 00H, 00H, 00H, 00H   ; 0208 _ ........

number:                                                 ; byte
        dd 0FFFFFFFFH, 0FFFFFFFFH                       ; 0210 _ -1 -1 
        dd 0FFFFFFFFH, 0FFFFFFFFH                       ; 0218 _ -1 -1 
        dd 0FFFFFFFFH, 0FFFFFFFFH                       ; 0220 _ -1 -1 
        dd 0FFFFFFFFH                                   ; 0228 _ -1 


SECTION .bss    align=4                                 ; section number 3, bss

correct:                                                ; dword
        resd    1                                       ; 0000

finish: resd    1                                       ; 0004

target: resd    1                                       ; 0008

num:    resd    1                                       ; 000C


SECTION .rodata align=1                                 ; section number 4, const

?_021:                                                  ; byte
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
        dd 00000053H, 100E4100H                         ; 0064 _ 83 269369600 
        dd 0D430286H, 0C4E0206H                         ; 006C _ 222495366 206438918 
        dd 00000807H, 0000001CH                         ; 0074 _ 2055 28 
        dd 0000007CH                                    ; 007C _ 124 
        dd fun-$-3H                                     ; 0080 _ 00000000 (rel)
        dd 0000001DH, 100E4100H                         ; 0084 _ 29 269369600 
        dd 0D430286H, 070C5806H                         ; 008C _ 222495366 118249478 
        dd 00000008H, 0000001CH                         ; 0094 _ 8 28 
        dd 0000009CH                                    ; 009C _ 156 
        dd fun-$-6H                                     ; 00A0 _ 00000000 (rel)
        dd 0000000EH, 100E4100H                         ; 00A4 _ 14 269369600 
        dd 0D430286H, 070C4906H                         ; 00AC _ 222495366 118245638 
        dd 00000008H, 0000001CH                         ; 00B4 _ 8 28 
        dd 000000BCH                                    ; 00BC _ 188 
        dd fun-$-18H                                    ; 00C0 _ 00000000 (rel)
        dd 00000077H, 100E4100H                         ; 00C4 _ 119 269369600 
        dd 0D430286H, 0C720206H                         ; 00CC _ 222495366 208798214 
        dd 00000807H, 0000001CH                         ; 00D4 _ 2055 28 
        dd 000000DCH                                    ; 00DC _ 220 
        dd ?_001-$+0E0H                                 ; 00E0 _ 00000000 (rel)
        dd 0000008CH, 100E4100H                         ; 00E4 _ 140 269369600 
        dd 0D430286H, 0C870206H                         ; 00EC _ 222495366 210174470 
        dd 00000807H, 0000001CH                         ; 00F4 _ 2055 28 
        dd 000000FCH                                    ; 00FC _ 252 
        dd fun-$+0ABH                                   ; 0100 _ 00000000 (rel)
        dd 0000002EH, 100E4100H                         ; 0104 _ 46 269369600 
        dd 0D430286H, 070C6906H                         ; 010C _ 222495366 118253830 
        dd 00000008H, 0000001CH                         ; 0114 _ 8 28 
        dd 0000011CH                                    ; 011C _ 284 
        dd fun-$+0B9H                                   ; 0120 _ 00000000 (rel)
        dd 00000255H, 100E4100H                         ; 0124 _ 597 269369600 
        dd 0D430286H, 02500306H                         ; 012C _ 222495366 38798086 
        dd 0008070CH                                    ; 0134 _ 526092 



; Disassembly of file: game.o
; Sun Jun 28 20:29:44 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 80386, x64

default rel

global fun
global fun2
global time
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
global target
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

time:   ; Function begin
        push    rbp                                     ; 002A _ 55
        mov     rbp, rsp                                ; 002B _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 002E _ 48: 89. 7D, F8
        mov     eax, 0                                  ; 0032 _ B8, 00000000
        pop     rbp                                     ; 0037 _ 5D
        ret                                             ; 0038 _ C3
; time End of function

writeStr:; Function begin
        push    rbp                                     ; 0039 _ 55
        mov     rbp, rsp                                ; 003A _ 48: 89. E5
        sub     rsp, 24                                 ; 003D _ 48: 83. EC, 18
        mov     qword [rbp-18H], rdi                    ; 0041 _ 48: 89. 7D, E8
        mov     dword [rbp-4H], 0                       ; 0045 _ C7. 45, FC, 00000000
        jmp     ?_002                                   ; 004C _ EB, 23

?_001:  mov     eax, dword [rbp-4H]                     ; 004E _ 8B. 45, FC
        movsxd  rdx, eax                                ; 0051 _ 48: 63. D0
        mov     rax, qword [rbp-18H]                    ; 0054 _ 48: 8B. 45, E8
        add     rax, rdx                                ; 0058 _ 48: 01. D0
        mov     edx, 1                                  ; 005B _ BA, 00000001
        mov     rsi, rax                                ; 0060 _ 48: 89. C6
        mov     edi, 1                                  ; 0063 _ BF, 00000001
        mov     eax, 1
        syscall                                       
        add     dword [rbp-4H], 1                       ; 006D _ 83. 45, FC, 01
?_002:  mov     eax, dword [rbp-4H]                     ; 0071 _ 8B. 45, FC
        movsxd  rdx, eax                                ; 0074 _ 48: 63. D0
        mov     rax, qword [rbp-18H]                    ; 0077 _ 48: 8B. 45, E8
        add     rax, rdx                                ; 007B _ 48: 01. D0
        movzx   eax, byte [rax]                         ; 007E _ 0F B6. 00
        cmp     al, 10                                  ; 0081 _ 3C, 0A
        jnz     ?_001                                   ; 0083 _ 75, C9
        mov     eax, 0                                  ; 0085 _ B8, 00000000
        leave                                           ; 008A _ C9
        ret                                             ; 008B _ C3
; writeStr End of function

writeSpace:; Function begin
        push    rbp                                     ; 008C _ 55
        mov     rbp, rsp                                ; 008D _ 48: 89. E5
        mov     edx, 1                                  ; 0090 _ BA, 00000001
        lea     rsi, [rel ?_021]                        ; 0095 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 009C _ BF, 00000001
        mov     eax, 1
        syscall                                       
        nop                                             ; 00A6 _ 90
        pop     rbp                                     ; 00A7 _ 5D
        ret                                             ; 00A8 _ C3
; writeSpace End of function

generateNum:; Function begin
        push    rbp                                     ; 00A9 _ 55
        mov     rbp, rsp                                ; 00AA _ 48: 89. E5
        mov     dword [rbp-4H], edi                     ; 00AD _ 89. 7D, FC
        mov     eax, dword [rbp-4H]                     ; 00B0 _ 8B. 45, FC
        imul    eax, eax, 307                           ; 00B3 _ 69. C0, 00000133
        lea     edx, [rax+25FH]                         ; 00B9 _ 8D. 90, 0000025F
        movsxd  rax, edx                                ; 00BF _ 48: 63. C2
        imul    rax, rax, -2139062143                   ; 00C2 _ 48: 69. C0, 80808081
        shr     rax, 32                                 ; 00C9 _ 48: C1. E8, 20
        add     eax, edx                                ; 00CD _ 01. D0
        sar     eax, 7                                  ; 00CF _ C1. F8, 07
        mov     ecx, eax                                ; 00D2 _ 89. C1
        mov     eax, edx                                ; 00D4 _ 89. D0
        sar     eax, 31                                 ; 00D6 _ C1. F8, 1F
        sub     ecx, eax                                ; 00D9 _ 29. C1
        mov     eax, ecx                                ; 00DB _ 89. C8
        mov     ecx, eax                                ; 00DD _ 89. C1
        shl     ecx, 8                                  ; 00DF _ C1. E1, 08
        sub     ecx, eax                                ; 00E2 _ 29. C1
        mov     eax, edx                                ; 00E4 _ 89. D0
        sub     eax, ecx                                ; 00E6 _ 29. C8
        add     eax, 1                                  ; 00E8 _ 83. C0, 01
        pop     rbp                                     ; 00EB _ 5D
        ret                                             ; 00EC _ C3
; generateNum End of function

generateQuestion:; Function begin
        push    rbp                                     ; 00ED _ 55
        mov     rbp, rsp                                ; 00EE _ 48: 89. E5
        sub     rsp, 24                                 ; 00F1 _ 48: 83. EC, 18
        mov     dword [rbp-14H], edi                    ; 00F5 _ 89. 7D, EC
        mov     dword [rbp-4H], 0                       ; 00F8 _ C7. 45, FC, 00000000
        jmp     ?_004                                   ; 00FF _ EB, 33

?_003:  lea     rax, [rbp-10H]                          ; 0101 _ 48: 8D. 45, F0
        mov     rdi, rax                                ; 0105 _ 48: 89. C7
        mov     eax, 201
        syscall                                       
        mov     rax, qword [rbp-10H]                    ; 010D _ 48: 8B. 45, F0
        mov     edi, eax                                ; 0111 _ 89. C7
        call    generateNum                             ; 0113 _ E8, 00000000(PLT r)
        mov     edx, dword [rbp-4H]                     ; 0118 _ 8B. 55, FC
        movsxd  rdx, edx                                ; 011B _ 48: 63. D2
        lea     rcx, [rdx*4]                            ; 011E _ 48: 8D. 0C 95, 00000000
        lea     rdx, [rel number]                       ; 0126 _ 48: 8D. 15, 00000000(rel)
        mov     dword [rcx+rdx], eax                    ; 012D _ 89. 04 11
        add     dword [rbp-4H], 1                       ; 0130 _ 83. 45, FC, 01
?_004:  mov     eax, dword [rbp-4H]                     ; 0134 _ 8B. 45, FC
        cmp     eax, dword [rbp-14H]                    ; 0137 _ 3B. 45, EC
        jl      ?_003                                   ; 013A _ 7C, C5
        mov     eax, 0                                  ; 013C _ B8, 00000000
        leave                                           ; 0141 _ C9
        ret                                             ; 0142 _ C3
; generateQuestion End of function

parseNum:; Function begin
        push    rbp                                     ; 0143 _ 55
        mov     rbp, rsp                                ; 0144 _ 48: 89. E5
        mov     dword [rbp-14H], edi                    ; 0147 _ 89. 7D, EC
        mov     dword [rbp-4H], 0                       ; 014A _ C7. 45, FC, 00000000
        mov     dword [rbp-8H], 0                       ; 0151 _ C7. 45, F8, 00000000
        jmp     ?_008                                   ; 0158 _ EB, 66

?_005:  mov     dword [rbp-0CH], 0                      ; 015A _ C7. 45, F4, 00000000
?_006:  mov     eax, dword [rbp-4H]                     ; 0161 _ 8B. 45, FC
        cdqe                                            ; 0164 _ 48: 98
        lea     rdx, [rel buf]                          ; 0166 _ 48: 8D. 15, 00000000(rel)
        movzx   eax, byte [rax+rdx]                     ; 016D _ 0F B6. 04 10
        movsx   eax, al                                 ; 0171 _ 0F BE. C0
        sub     eax, 48                                 ; 0174 _ 83. E8, 30
        mov     dword [rbp-10H], eax                    ; 0177 _ 89. 45, F0
        add     dword [rbp-4H], 1                       ; 017A _ 83. 45, FC, 01
        cmp     dword [rbp-10H], 0                      ; 017E _ 83. 7D, F0, 00
        js      ?_007                                   ; 0182 _ 78, 1E
        cmp     dword [rbp-10H], 9                      ; 0184 _ 83. 7D, F0, 09
        jg      ?_007                                   ; 0188 _ 7F, 18
        mov     edx, dword [rbp-0CH]                    ; 018A _ 8B. 55, F4
        mov     eax, edx                                ; 018D _ 89. D0
        shl     eax, 2                                  ; 018F _ C1. E0, 02
        add     eax, edx                                ; 0192 _ 01. D0
        add     eax, eax                                ; 0194 _ 01. C0
        mov     edx, eax                                ; 0196 _ 89. C2
        mov     eax, dword [rbp-10H]                    ; 0198 _ 8B. 45, F0
        add     eax, edx                                ; 019B _ 01. D0
        mov     dword [rbp-0CH], eax                    ; 019D _ 89. 45, F4
        jmp     ?_006                                   ; 01A0 _ EB, BF

?_007:  mov     eax, dword [rbp-8H]                     ; 01A2 _ 8B. 45, F8
        cdqe                                            ; 01A5 _ 48: 98
        lea     rcx, [rax*4]                            ; 01A7 _ 48: 8D. 0C 85, 00000000
        lea     rdx, [rel guess]                        ; 01AF _ 48: 8D. 15, 00000000(rel)
        mov     eax, dword [rbp-0CH]                    ; 01B6 _ 8B. 45, F4
        mov     dword [rcx+rdx], eax                    ; 01B9 _ 89. 04 11
        add     dword [rbp-8H], 1                       ; 01BC _ 83. 45, F8, 01
?_008:  mov     eax, dword [rbp-8H]                     ; 01C0 _ 8B. 45, F8
        cmp     eax, dword [rbp-14H]                    ; 01C3 _ 3B. 45, EC
        jl      ?_005                                   ; 01C6 _ 7C, 92
        mov     eax, 0                                  ; 01C8 _ B8, 00000000
        pop     rbp                                     ; 01CD _ 5D
        ret                                             ; 01CE _ C3
; parseNum End of function

clearbuf:; Function begin
        push    rbp                                     ; 01CF _ 55
        mov     rbp, rsp                                ; 01D0 _ 48: 89. E5
        mov     dword [rbp-4H], 0                       ; 01D3 _ C7. 45, FC, 00000000
        jmp     ?_010                                   ; 01DA _ EB, 14

?_009:  mov     eax, dword [rbp-4H]                     ; 01DC _ 8B. 45, FC
        cdqe                                            ; 01DF _ 48: 98
        lea     rdx, [rel buf]                          ; 01E1 _ 48: 8D. 15, 00000000(rel)
        mov     byte [rax+rdx], 36                      ; 01E8 _ C6. 04 10, 24
        add     dword [rbp-4H], 1                       ; 01EC _ 83. 45, FC, 01
?_010:  cmp     dword [rbp-4H], 49                      ; 01F0 _ 83. 7D, FC, 31
        jle     ?_009                                   ; 01F4 _ 7E, E6
        mov     eax, 0                                  ; 01F6 _ B8, 00000000
        pop     rbp                                     ; 01FB _ 5D
        ret                                             ; 01FC _ C3
; clearbuf End of function

main:   ; Function begin
        push    rbp                                     ; 01FD _ 55
        mov     rbp, rsp                                ; 01FE _ 48: 89. E5
        sub     rsp, 16                                 ; 0201 _ 48: 83. EC, 10
        mov     edx, 7                                  ; 0205 _ BA, 00000007
        lea     rsi, [rel pre5]                         ; 020A _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0211 _ BF, 00000001
        mov     eax, 1
        syscall                                       
        mov     edx, 5                                  ; 021B _ BA, 00000005
        lea     rsi, [rel buf]                          ; 0220 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 0                                  ; 0227 _ BF, 00000000
        mov     eax, 0
        syscall                                       
        movzx   eax, byte [rel buf]                     ; 0231 _ 0F B6. 05, 00000000(rel)
        cmp     al, 49                                  ; 0238 _ 3C, 31
        jnz     ?_011                                   ; 023A _ 75, 0C
        mov     dword [rel target], 3                   ; 023C _ C7. 05, 00000000(rel), 00000003
        jmp     ?_013                                   ; 0246 _ EB, 2C

?_011:  movzx   eax, byte [rel buf]                     ; 0248 _ 0F B6. 05, 00000000(rel)
        cmp     al, 50                                  ; 024F _ 3C, 32
        jnz     ?_012                                   ; 0251 _ 75, 0C
        mov     dword [rel target], 5                   ; 0253 _ C7. 05, 00000000(rel), 00000005
        jmp     ?_013                                   ; 025D _ EB, 15

?_012:  movzx   eax, byte [rel buf]                     ; 025F _ 0F B6. 05, 00000000(rel)
        cmp     al, 51                                  ; 0266 _ 3C, 33
        jnz     ?_013                                   ; 0268 _ 75, 0A
        mov     dword [rel target], 7                   ; 026A _ C7. 05, 00000000(rel), 00000007
?_013:  mov     eax, 0                                  ; 0274 _ B8, 00000000
        call    clearbuf                                ; 0279 _ E8, 00000000(PLT r)
        jmp     ?_020                                   ; 027E _ E9, 000001B6

?_014:  mov     dword [rel correct], 0                  ; 0283 _ C7. 05, 00000000(rel), 00000000
        mov     edx, 24                                 ; 028D _ BA, 00000018
        lea     rsi, [rel state4]                       ; 0292 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0299 _ BF, 00000001
        mov     eax, 1
        syscall                                       
        mov     eax, 0                                  ; 02A3 _ B8, 00000000
        call    writeSpace                              ; 02A8 _ E8, 00000000(PLT r)
        mov     edx, 50                                 ; 02AD _ BA, 00000032
        lea     rsi, [rel buf]                          ; 02B2 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 0                                  ; 02B9 _ BF, 00000000
        mov     eax, 0
        syscall                                       
        mov     eax, dword [rel target]                 ; 02C3 _ 8B. 05, 00000000(rel)
        mov     edi, eax                                ; 02C9 _ 89. C7
        call    parseNum                                ; 02CB _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 02D0 _ B8, 00000000
        call    clearbuf                                ; 02D5 _ E8, 00000000(PLT r)
        mov     dword [rbp-4H], 0                       ; 02DA _ C7. 45, FC, 00000000
        jmp     ?_019                                   ; 02E1 _ E9, 000000FF

?_015:  mov     eax, dword [rbp-4H]                     ; 02E6 _ 8B. 45, FC
        add     eax, 49                                 ; 02E9 _ 83. C0, 31
        mov     byte [rel state2], al                   ; 02EC _ 88. 05, 00000000(rel)
        mov     edx, 17                                 ; 02F2 _ BA, 00000011
        lea     rsi, [rel state5]                       ; 02F7 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 02FE _ BF, 00000001
        mov     eax, 1
        syscall                                       
        mov     edx, 4                                  ; 0308 _ BA, 00000004
        lea     rsi, [rel state2]                       ; 030D _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0314 _ BF, 00000001
        mov     eax, 1
        syscall                                       
        mov     eax, dword [rbp-4H]                     ; 031E _ 8B. 45, FC
        cdqe                                            ; 0321 _ 48: 98
        lea     rdx, [rax*4]                            ; 0323 _ 48: 8D. 14 85, 00000000
        lea     rax, [rel guess]                        ; 032B _ 48: 8D. 05, 00000000(rel)
        mov     edx, dword [rdx+rax]                    ; 0332 _ 8B. 14 02
        mov     eax, dword [rbp-4H]                     ; 0335 _ 8B. 45, FC
        cdqe                                            ; 0338 _ 48: 98
        lea     rcx, [rax*4]                            ; 033A _ 48: 8D. 0C 85, 00000000
        lea     rax, [rel number]                       ; 0342 _ 48: 8D. 05, 00000000(rel)
        mov     eax, dword [rcx+rax]                    ; 0349 _ 8B. 04 01
        cmp     edx, eax                                ; 034C _ 39. C2
        jge     ?_016                                   ; 034E _ 7D, 18
        mov     edx, 14                                 ; 0350 _ BA, 0000000E
        lea     rsi, [rel judge3]                       ; 0355 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 035C _ BF, 00000001
        mov     eax, 1
        syscall                                       
        jmp     ?_018                                   ; 0366 _ EB, 6F

?_016:  mov     eax, dword [rbp-4H]                     ; 0368 _ 8B. 45, FC
        cdqe                                            ; 036B _ 48: 98
        lea     rdx, [rax*4]                            ; 036D _ 48: 8D. 14 85, 00000000
        lea     rax, [rel guess]                        ; 0375 _ 48: 8D. 05, 00000000(rel)
        mov     edx, dword [rdx+rax]                    ; 037C _ 8B. 14 02
        mov     eax, dword [rbp-4H]                     ; 037F _ 8B. 45, FC
        cdqe                                            ; 0382 _ 48: 98
        lea     rcx, [rax*4]                            ; 0384 _ 48: 8D. 0C 85, 00000000
        lea     rax, [rel number]                       ; 038C _ 48: 8D. 05, 00000000(rel)
        mov     eax, dword [rcx+rax]                    ; 0393 _ 8B. 04 01
        cmp     edx, eax                                ; 0396 _ 39. C2
        jle     ?_017                                   ; 0398 _ 7E, 18
        mov     edx, 14                                 ; 039A _ BA, 0000000E
        lea     rsi, [rel judge2]                       ; 039F _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 03A6 _ BF, 00000001
        mov     eax, 1
        syscall                                       
        jmp     ?_018                                   ; 03B0 _ EB, 25

?_017:  mov     edx, 5                                  ; 03B2 _ BA, 00000005
        lea     rsi, [rel judge1]                       ; 03B7 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 03BE _ BF, 00000001
        mov     eax, 1
        syscall                                       
        mov     eax, dword [rel correct]                ; 03C8 _ 8B. 05, 00000000(rel)
        add     eax, 1                                  ; 03CE _ 83. C0, 01
        mov     dword [rel correct], eax                ; 03D1 _ 89. 05, 00000000(rel)
?_018:  mov     eax, 0                                  ; 03D7 _ B8, 00000000
        call    writeSpace                              ; 03DC _ E8, 00000000(PLT r)
        add     dword [rbp-4H], 1                       ; 03E1 _ 83. 45, FC, 01
?_019:  mov     eax, dword [rel target]                 ; 03E5 _ 8B. 05, 00000000(rel)
        cmp     dword [rbp-4H], eax                     ; 03EB _ 39. 45, FC
        jl      ?_015                                   ; 03EE _ 0F 8C, FFFFFEF2
        mov     eax, dword [rel correct]                ; 03F4 _ 8B. 05, 00000000(rel)
        add     eax, 48                                 ; 03FA _ 83. C0, 30
        mov     byte [rel state2], al                   ; 03FD _ 88. 05, 00000000(rel)
        mov     edx, 23                                 ; 0403 _ BA, 00000017
        lea     rsi, [rel state1]                       ; 0408 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 040F _ BF, 00000001
        mov     eax, 1
        syscall                                       
        mov     edx, 1                                  ; 0419 _ BA, 00000001
        lea     rsi, [rel state2]                       ; 041E _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0425 _ BF, 00000001
        mov     eax, 1
        syscall                                       
        mov     eax, 0                                  ; 042F _ B8, 00000000
        call    writeSpace                              ; 0434 _ E8, 00000000(PLT r)
?_020:  mov     edx, dword [rel correct]                ; 0439 _ 8B. 15, 00000000(rel)
        mov     eax, dword [rel target]                 ; 043F _ 8B. 05, 00000000(rel)
        cmp     edx, eax                                ; 0445 _ 39. C2
        jl      ?_014                                   ; 0447 _ 0F 8C, FFFFFE36
        mov     eax, 60
        syscall                                       
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
        db 05H, 00H, 00H, 00H, 05H, 00H, 00H, 00H       ; 0210 _ ........
        db 05H, 00H, 00H, 00H, 05H, 00H, 00H, 00H       ; 0218 _ ........
        db 05H, 00H, 00H, 00H, 05H, 00H, 00H, 00H       ; 0220 _ ........
        db 05H, 00H, 00H, 00H                           ; 0228 _ ....


SECTION .bss    align=4                                 ; section number 3, bss

target:                                                 ; dword
        resd    1                                       ; 0000

correct: resd   1                                       ; 0004


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
        dd 0000000FH, 100E4100H                         ; 0064 _ 15 269369600 
        dd 0D430286H, 070C4A06H                         ; 006C _ 222495366 118245894 
        dd 00000008H, 0000001CH                         ; 0074 _ 8 28 
        dd 0000007CH                                    ; 007C _ 124 
        dd fun-$-47H                                    ; 0080 _ 00000000 (rel)
        dd 00000053H, 100E4100H                         ; 0084 _ 83 269369600 
        dd 0D430286H, 0C4E0206H                         ; 008C _ 222495366 206438918 
        dd 00000807H, 0000001CH                         ; 0094 _ 2055 28 
        dd 0000009CH                                    ; 009C _ 156 
        dd fun-$-14H                                    ; 00A0 _ 00000000 (rel)
        dd 0000001DH, 100E4100H                         ; 00A4 _ 29 269369600 
        dd 0D430286H, 070C5806H                         ; 00AC _ 222495366 118249478 
        dd 00000008H, 0000001CH                         ; 00B4 _ 8 28 
        dd 000000BCH                                    ; 00BC _ 188 
        dd fun-$-17H                                    ; 00C0 _ 00000000 (rel)
        dd 00000044H, 100E4100H                         ; 00C4 _ 68 269369600 
        dd 0D430286H, 070C7F06H                         ; 00CC _ 222495366 118259462 
        dd 00000008H, 0000001CH                         ; 00D4 _ 8 28 
        dd 000000DCH                                    ; 00DC _ 220 
        dd fun-$+0DH                                    ; 00E0 _ 00000000 (rel)
        dd 00000056H, 100E4100H                         ; 00E4 _ 86 269369600 
        dd 0D430286H, 0C510206H                         ; 00EC _ 222495366 206635526 
        dd 00000807H, 0000001CH                         ; 00F4 _ 2055 28 
        dd 000000FCH                                    ; 00FC _ 252 
        dd fun-$+43H                                    ; 0100 _ 00000000 (rel)
        dd 0000008CH, 100E4100H                         ; 0104 _ 140 269369600 
        dd 0D430286H, 0C870206H                         ; 010C _ 222495366 210174470 
        dd 00000807H, 0000001CH                         ; 0114 _ 2055 28 
        dd 0000011CH                                    ; 011C _ 284 
        dd fun-$+0AFH                                   ; 0120 _ 00000000 (rel)
        dd 0000002EH, 100E4100H                         ; 0124 _ 46 269369600 
        dd 0D430286H, 070C6906H                         ; 012C _ 222495366 118253830 
        dd 00000008H, 0000001CH                         ; 0134 _ 8 28 
        dd 0000013CH                                    ; 013C _ 316 
        dd fun-$+0BDH                                   ; 0140 _ 00000000 (rel)
        dd 00000257H, 100E4100H                         ; 0144 _ 599 269369600 
        dd 0D430286H, 02520306H                         ; 014C _ 222495366 38929158 
        dd 0008070CH                                    ; 0154 _ 526092 



; Sun Jul  5 15:34:21 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 80386, x64

default rel

global fun
global fun2
global time
global writeStr
global writeNewline
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
global state6
global buf
global guess
global number
global target
global correct
global curRound


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
        mov     eax, 1                                  ; 06BD _ B8, 00000000
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

writeNewline:; Function begin
        push    rbp                                     ; 008C _ 55
        mov     rbp, rsp                                ; 008D _ 48: 89. E5
        mov     edx, 1                                  ; 0090 _ BA, 00000001
        lea     rsi, [rel ?_023]                        ; 0095 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 009C _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        nop                                             ; 00A6 _ 90
        pop     rbp                                     ; 00A7 _ 5D
        ret                                             ; 00A8 _ C3
; writeNewline End of function

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
        mov     dword [rbp-4H], eax                     ; 00EB _ 89. 45, FC
        cmp     dword [rbp-4H], 0                       ; 00EE _ 83. 7D, FC, 00
        jns     ?_003                                   ; 00F2 _ 79, 0A
        mov     eax, dword [rbp-4H]                     ; 00F4 _ 8B. 45, FC
        add     eax, 255                                ; 00F7 _ 05, 000000FF
        jmp     ?_004                                   ; 00FC _ EB, 03

?_003:  mov     eax, dword [rbp-4H]                     ; 00FE _ 8B. 45, FC
?_004:  pop     rbp                                     ; 0101 _ 5D
        ret                                             ; 0102 _ C3
; generateNum End of function

generateQuestion:; Function begin
        push    rbp                                     ; 0103 _ 55
        mov     rbp, rsp                                ; 0104 _ 48: 89. E5
        sub     rsp, 24                                 ; 0107 _ 48: 83. EC, 18
        mov     dword [rbp-14H], edi                    ; 010B _ 89. 7D, EC
        lea     rax, [rbp-10H]                          ; 010E _ 48: 8D. 45, F0
        mov     rdi, rax                                ; 0112 _ 48: 89. C7
        mov     eax, 201                                  ; 06BD _ B8, 00000000
        syscall
        mov     rax, qword [rbp-10H]                    ; 011A _ 48: 8B. 45, F0
        mov     edi, eax                                ; 011E _ 89. C7
        call    generateNum                             ; 0120 _ E8, 00000000(PLT r)
        mov     dword [rel number], eax                 ; 0125 _ 89. 05, 00000000(rel)
        mov     dword [rbp-4H], 1                       ; 012B _ C7. 45, FC, 00000001
        jmp     ?_006                                   ; 0132 _ EB, 3D

?_005:  mov     eax, dword [rbp-4H]                     ; 0134 _ 8B. 45, FC
        sub     eax, 1                                  ; 0137 _ 83. E8, 01
        cdqe                                            ; 013A _ 48: 98
        lea     rdx, [rax*4]                            ; 013C _ 48: 8D. 14 85, 00000000
        lea     rax, [rel number]                       ; 0144 _ 48: 8D. 05, 00000000(rel)
        mov     eax, dword [rdx+rax]                    ; 014B _ 8B. 04 02
        mov     edi, eax                                ; 014E _ 89. C7
        call    generateNum                             ; 0150 _ E8, 00000000(PLT r)
        mov     edx, dword [rbp-4H]                     ; 0155 _ 8B. 55, FC
        movsxd  rdx, edx                                ; 0158 _ 48: 63. D2
        lea     rcx, [rdx*4]                            ; 015B _ 48: 8D. 0C 95, 00000000
        lea     rdx, [rel number]                       ; 0163 _ 48: 8D. 15, 00000000(rel)
        mov     dword [rcx+rdx], eax                    ; 016A _ 89. 04 11
        add     dword [rbp-4H], 1                       ; 016D _ 83. 45, FC, 01
?_006:  mov     eax, dword [rbp-4H]                     ; 0171 _ 8B. 45, FC
        cmp     eax, dword [rbp-14H]                    ; 0174 _ 3B. 45, EC
        jl      ?_005                                   ; 0177 _ 7C, BB
        mov     eax, 0                                  ; 0179 _ B8, 00000000
        leave                                           ; 017E _ C9
        ret                                             ; 017F _ C3
; generateQuestion End of function

parseNum:; Function begin
        push    rbp                                     ; 0180 _ 55
        mov     rbp, rsp                                ; 0181 _ 48: 89. E5
        mov     dword [rbp-14H], edi                    ; 0184 _ 89. 7D, EC
        mov     dword [rbp-4H], 0                       ; 0187 _ C7. 45, FC, 00000000
        mov     dword [rbp-8H], 0                       ; 018E _ C7. 45, F8, 00000000
        jmp     ?_010                                   ; 0195 _ EB, 66

?_007:  mov     dword [rbp-0CH], 0                      ; 0197 _ C7. 45, F4, 00000000
?_008:  mov     eax, dword [rbp-4H]                     ; 019E _ 8B. 45, FC
        cdqe                                            ; 01A1 _ 48: 98
        lea     rdx, [rel buf]                          ; 01A3 _ 48: 8D. 15, 00000000(rel)
        movzx   eax, byte [rax+rdx]                     ; 01AA _ 0F B6. 04 10
        movsx   eax, al                                 ; 01AE _ 0F BE. C0
        sub     eax, 48                                 ; 01B1 _ 83. E8, 30
        mov     dword [rbp-10H], eax                    ; 01B4 _ 89. 45, F0
        add     dword [rbp-4H], 1                       ; 01B7 _ 83. 45, FC, 01
        cmp     dword [rbp-10H], 0                      ; 01BB _ 83. 7D, F0, 00
        js      ?_009                                   ; 01BF _ 78, 1E
        cmp     dword [rbp-10H], 9                      ; 01C1 _ 83. 7D, F0, 09
        jg      ?_009                                   ; 01C5 _ 7F, 18
        mov     edx, dword [rbp-0CH]                    ; 01C7 _ 8B. 55, F4
        mov     eax, edx                                ; 01CA _ 89. D0
        shl     eax, 2                                  ; 01CC _ C1. E0, 02
        add     eax, edx                                ; 01CF _ 01. D0
        add     eax, eax                                ; 01D1 _ 01. C0
        mov     edx, eax                                ; 01D3 _ 89. C2
        mov     eax, dword [rbp-10H]                    ; 01D5 _ 8B. 45, F0
        add     eax, edx                                ; 01D8 _ 01. D0
        mov     dword [rbp-0CH], eax                    ; 01DA _ 89. 45, F4
        jmp     ?_008                                   ; 01DD _ EB, BF

?_009:  mov     eax, dword [rbp-8H]                     ; 01DF _ 8B. 45, F8
        cdqe                                            ; 01E2 _ 48: 98
        lea     rcx, [rax*4]                            ; 01E4 _ 48: 8D. 0C 85, 00000000
        lea     rdx, [rel guess]                        ; 01EC _ 48: 8D. 15, 00000000(rel)
        mov     eax, dword [rbp-0CH]                    ; 01F3 _ 8B. 45, F4
        mov     dword [rcx+rdx], eax                    ; 01F6 _ 89. 04 11
        add     dword [rbp-8H], 1                       ; 01F9 _ 83. 45, F8, 01
?_010:  mov     eax, dword [rbp-8H]                     ; 01FD _ 8B. 45, F8
        cmp     eax, dword [rbp-14H]                    ; 0200 _ 3B. 45, EC
        jl      ?_007                                   ; 0203 _ 7C, 92
        mov     eax, 0                                  ; 0205 _ B8, 00000000
        pop     rbp                                     ; 020A _ 5D
        ret                                             ; 020B _ C3
; parseNum End of function

clearbuf:; Function begin
        push    rbp                                     ; 020C _ 55
        mov     rbp, rsp                                ; 020D _ 48: 89. E5
        mov     dword [rbp-4H], 0                       ; 0210 _ C7. 45, FC, 00000000
        jmp     ?_012                                   ; 0217 _ EB, 14

?_011:  mov     eax, dword [rbp-4H]                     ; 0219 _ 8B. 45, FC
        cdqe                                            ; 021C _ 48: 98
        lea     rdx, [rel buf]                          ; 021E _ 48: 8D. 15, 00000000(rel)
        mov     byte [rax+rdx], 36                      ; 0225 _ C6. 04 10, 24
        add     dword [rbp-4H], 1                       ; 0229 _ 83. 45, FC, 01
?_012:  cmp     dword [rbp-4H], 49                      ; 022D _ 83. 7D, FC, 31
        jle     ?_011                                   ; 0231 _ 7E, E6
        mov     eax, 0                                  ; 0233 _ B8, 00000000
        pop     rbp                                     ; 0238 _ 5D
        ret                                             ; 0239 _ C3
; clearbuf End of function

main:   ; Function begin
        push    rbp                                     ; 023A _ 55
        mov     rbp, rsp                                ; 023B _ 48: 89. E5
        sub     rsp, 16                                 ; 023E _ 48: 83. EC, 10
        mov     edx, 18                                 ; 0242 _ BA, 00000012
        lea     rsi, [rel pre0]                         ; 0247 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 024E _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 0258 _ B8, 00000000
        call    writeNewline                            ; 025D _ E8, 00000000(PLT r)
        mov     edx, 24                                 ; 0262 _ BA, 00000018
        lea     rsi, [rel pre]                          ; 0267 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 026E _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 0278 _ B8, 00000000
        call    writeNewline                            ; 027D _ E8, 00000000(PLT r)
        mov     edx, 24                                 ; 0282 _ BA, 00000018
        lea     rsi, [rel pre1]                         ; 0287 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 028E _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 0298 _ B8, 00000000
        call    writeNewline                            ; 029D _ E8, 00000000(PLT r)
        mov     edx, 15                                 ; 02A2 _ BA, 0000000F
        lea     rsi, [rel pre2]                         ; 02A7 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 02AE _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 02B8 _ B8, 00000000
        call    writeNewline                            ; 02BD _ E8, 00000000(PLT r)
        mov     edx, 17                                 ; 02C2 _ BA, 00000011
        lea     rsi, [rel pre3]                         ; 02C7 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 02CE _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 02D8 _ B8, 00000000
        call    writeNewline                            ; 02DD _ E8, 00000000(PLT r)
        mov     edx, 15                                 ; 02E2 _ BA, 0000000F
        lea     rsi, [rel pre4]                         ; 02E7 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 02EE _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 02F8 _ B8, 00000000
        call    writeNewline                            ; 02FD _ E8, 00000000(PLT r)
        mov     edx, 7                                  ; 0302 _ BA, 00000007
        lea     rsi, [rel pre5]                         ; 0307 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 030E _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     edx, 5                                  ; 0318 _ BA, 00000005
        lea     rsi, [rel buf]                          ; 031D _ 48: 8D. 35, 00000000(rel)
        mov     edi, 0                                  ; 0324 _ BF, 00000000
        mov     eax, 0                                  ; 06BD _ B8, 00000000
        syscall
        movzx   eax, byte [rel buf]                     ; 032E _ 0F B6. 05, 00000000(rel)
        cmp     al, 49                                  ; 0335 _ 3C, 31
        jnz     ?_013                                   ; 0337 _ 75, 0C
        mov     dword [rel target], 3                   ; 0339 _ C7. 05, 00000000(rel), 00000003
        jmp     ?_015                                   ; 0343 _ EB, 2C

?_013:  movzx   eax, byte [rel buf]                     ; 0345 _ 0F B6. 05, 00000000(rel)
        cmp     al, 50                                  ; 034C _ 3C, 32
        jnz     ?_014                                   ; 034E _ 75, 0C
        mov     dword [rel target], 5                   ; 0350 _ C7. 05, 00000000(rel), 00000005
        jmp     ?_015                                   ; 035A _ EB, 15

?_014:  movzx   eax, byte [rel buf]                     ; 035C _ 0F B6. 05, 00000000(rel)
        cmp     al, 51                                  ; 0363 _ 3C, 33
        jnz     ?_015                                   ; 0365 _ 75, 0A
        mov     dword [rel target], 7                   ; 0367 _ C7. 05, 00000000(rel), 00000007
?_015:  mov     eax, 0                                  ; 0371 _ B8, 00000000
        call    clearbuf                                ; 0376 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 037B _ B8, 00000000
        call    writeNewline                            ; 0380 _ E8, 00000000(PLT r)
        mov     eax, dword [rel target]                 ; 0385 _ 8B. 05, 00000000(rel)
        mov     edi, eax                                ; 038B _ 89. C7
        call    generateQuestion                        ; 038D _ E8, 00000000(PLT r)
        jmp     ?_022                                   ; 0392 _ E9, 000001D9

?_016:  mov     dword [rel correct], 0                  ; 0397 _ C7. 05, 00000000(rel), 00000000
        mov     eax, dword [rel curRound]               ; 03A1 _ 8B. 05, 00000000(rel)
        add     eax, 1                                  ; 03A7 _ 83. C0, 01
        mov     dword [rel curRound], eax               ; 03AA _ 89. 05, 00000000(rel)
        mov     edx, 24                                 ; 03B0 _ BA, 00000018
        lea     rsi, [rel state4]                       ; 03B5 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 03BC _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 03C6 _ B8, 00000000
        call    writeNewline                            ; 03CB _ E8, 00000000(PLT r)
        mov     edx, 50                                 ; 03D0 _ BA, 00000032
        lea     rsi, [rel buf]                          ; 03D5 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 0                                  ; 03DC _ BF, 00000000
        mov     eax, 0                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, dword [rel target]                 ; 03E6 _ 8B. 05, 00000000(rel)
        mov     edi, eax                                ; 03EC _ 89. C7
        call    parseNum                                ; 03EE _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 03F3 _ B8, 00000000
        call    clearbuf                                ; 03F8 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 03FD _ B8, 00000000
        call    writeNewline                            ; 0402 _ E8, 00000000(PLT r)
        mov     dword [rbp-4H], 0                       ; 0407 _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 040E _ E9, 000000FF

?_017:  mov     eax, dword [rbp-4H]                     ; 0413 _ 8B. 45, FC
        add     eax, 49                                 ; 0416 _ 83. C0, 31
        mov     byte [rel state2], al                   ; 0419 _ 88. 05, 00000000(rel)
        mov     edx, 17                                 ; 041F _ BA, 00000011
        lea     rsi, [rel state5]                       ; 0424 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 042B _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     edx, 4                                  ; 0435 _ BA, 00000004
        lea     rsi, [rel state2]                       ; 043A _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0441 _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, dword [rbp-4H]                     ; 044B _ 8B. 45, FC
        cdqe                                            ; 044E _ 48: 98
        lea     rdx, [rax*4]                            ; 0450 _ 48: 8D. 14 85, 00000000
        lea     rax, [rel guess]                        ; 0458 _ 48: 8D. 05, 00000000(rel)
        mov     edx, dword [rdx+rax]                    ; 045F _ 8B. 14 02
        mov     eax, dword [rbp-4H]                     ; 0462 _ 8B. 45, FC
        cdqe                                            ; 0465 _ 48: 98
        lea     rcx, [rax*4]                            ; 0467 _ 48: 8D. 0C 85, 00000000
        lea     rax, [rel number]                       ; 046F _ 48: 8D. 05, 00000000(rel)
        mov     eax, dword [rcx+rax]                    ; 0476 _ 8B. 04 01
        cmp     edx, eax                                ; 0479 _ 39. C2
        jge     ?_018                                   ; 047B _ 7D, 18
        mov     edx, 14                                 ; 047D _ BA, 0000000E
        lea     rsi, [rel judge3]                       ; 0482 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0489 _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        jmp     ?_020                                   ; 0493 _ EB, 6F

?_018:  mov     eax, dword [rbp-4H]                     ; 0495 _ 8B. 45, FC
        cdqe                                            ; 0498 _ 48: 98
        lea     rdx, [rax*4]                            ; 049A _ 48: 8D. 14 85, 00000000
        lea     rax, [rel guess]                        ; 04A2 _ 48: 8D. 05, 00000000(rel)
        mov     edx, dword [rdx+rax]                    ; 04A9 _ 8B. 14 02
        mov     eax, dword [rbp-4H]                     ; 04AC _ 8B. 45, FC
        cdqe                                            ; 04AF _ 48: 98
        lea     rcx, [rax*4]                            ; 04B1 _ 48: 8D. 0C 85, 00000000
        lea     rax, [rel number]                       ; 04B9 _ 48: 8D. 05, 00000000(rel)
        mov     eax, dword [rcx+rax]                    ; 04C0 _ 8B. 04 01
        cmp     edx, eax                                ; 04C3 _ 39. C2
        jle     ?_019                                   ; 04C5 _ 7E, 18
        mov     edx, 14                                 ; 04C7 _ BA, 0000000E
        lea     rsi, [rel judge2]                       ; 04CC _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 04D3 _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        jmp     ?_020                                   ; 04DD _ EB, 25

?_019:  mov     edx, 5                                  ; 04DF _ BA, 00000005
        lea     rsi, [rel judge1]                       ; 04E4 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 04EB _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, dword [rel correct]                ; 04F5 _ 8B. 05, 00000000(rel)
        add     eax, 1                                  ; 04FB _ 83. C0, 01
        mov     dword [rel correct], eax                ; 04FE _ 89. 05, 00000000(rel)
?_020:  mov     eax, 0                                  ; 0504 _ B8, 00000000
        call    writeNewline                            ; 0509 _ E8, 00000000(PLT r)
        add     dword [rbp-4H], 1                       ; 050E _ 83. 45, FC, 01
?_021:  mov     eax, dword [rel target]                 ; 0512 _ 8B. 05, 00000000(rel)
        cmp     dword [rbp-4H], eax                     ; 0518 _ 39. 45, FC
        jl      ?_017                                   ; 051B _ 0F 8C, FFFFFEF2
        mov     eax, dword [rel correct]                ; 0521 _ 8B. 05, 00000000(rel)
        add     eax, 48                                 ; 0527 _ 83. C0, 30
        mov     byte [rel state2], al                   ; 052A _ 88. 05, 00000000(rel)
        mov     eax, 0                                  ; 0530 _ B8, 00000000
        call    writeNewline                            ; 0535 _ E8, 00000000(PLT r)
        mov     edx, 23                                 ; 053A _ BA, 00000017
        lea     rsi, [rel state1]                       ; 053F _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0546 _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     edx, 1                                  ; 0550 _ BA, 00000001
        lea     rsi, [rel state2]                       ; 0555 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 055C _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 0566 _ B8, 00000000
        call    writeNewline                            ; 056B _ E8, 00000000(PLT r)
?_022:  mov     edx, dword [rel correct]                ; 0570 _ 8B. 15, 00000000(rel)
        mov     eax, dword [rel target]                 ; 0576 _ 8B. 05, 00000000(rel)
        cmp     edx, eax                                ; 057C _ 39. C2
        jl      ?_016                                   ; 057E _ 0F 8C, FFFFFE13
        mov     edx, dword [rel curRound]               ; 0584 _ 8B. 15, 00000000(rel)
        movsxd  rax, edx                                ; 058A _ 48: 63. C2
        imul    rax, rax, 274877907                     ; 058D _ 48: 69. C0, 10624DD3
        shr     rax, 32                                 ; 0594 _ 48: C1. E8, 20
        mov     ecx, eax                                ; 0598 _ 89. C1
        sar     ecx, 6                                  ; 059A _ C1. F9, 06
        mov     eax, edx                                ; 059D _ 89. D0
        sar     eax, 31                                 ; 059F _ C1. F8, 1F
        sub     ecx, eax                                ; 05A2 _ 29. C1
        mov     eax, ecx                                ; 05A4 _ 89. C8
        imul    eax, eax, 1000                          ; 05A6 _ 69. C0, 000003E8
        sub     edx, eax                                ; 05AC _ 29. C2
        mov     eax, edx                                ; 05AE _ 89. D0
        movsxd  rdx, eax                                ; 05B0 _ 48: 63. D0
        imul    rdx, rdx, 1374389535                    ; 05B3 _ 48: 69. D2, 51EB851F
        shr     rdx, 32                                 ; 05BA _ 48: C1. EA, 20
        sar     edx, 5                                  ; 05BE _ C1. FA, 05
        sar     eax, 31                                 ; 05C1 _ C1. F8, 1F
        sub     edx, eax                                ; 05C4 _ 29. C2
        mov     eax, edx                                ; 05C6 _ 89. D0
        add     eax, 48                                 ; 05C8 _ 83. C0, 30
        mov     byte [rel state2], al                   ; 05CB _ 88. 05, 00000000(rel)
        mov     edx, dword [rel curRound]               ; 05D1 _ 8B. 15, 00000000(rel)
        movsxd  rax, edx                                ; 05D7 _ 48: 63. C2
        imul    rax, rax, 1374389535                    ; 05DA _ 48: 69. C0, 51EB851F
        shr     rax, 32                                 ; 05E1 _ 48: C1. E8, 20
        mov     ecx, eax                                ; 05E5 _ 89. C1
        sar     ecx, 5                                  ; 05E7 _ C1. F9, 05
        mov     eax, edx                                ; 05EA _ 89. D0
        sar     eax, 31                                 ; 05EC _ C1. F8, 1F
        sub     ecx, eax                                ; 05EF _ 29. C1
        mov     eax, ecx                                ; 05F1 _ 89. C8
        imul    eax, eax, 100                           ; 05F3 _ 6B. C0, 64
        sub     edx, eax                                ; 05F6 _ 29. C2
        mov     eax, edx                                ; 05F8 _ 89. D0
        movsxd  rdx, eax                                ; 05FA _ 48: 63. D0
        imul    rdx, rdx, 1717986919                    ; 05FD _ 48: 69. D2, 66666667
        shr     rdx, 32                                 ; 0604 _ 48: C1. EA, 20
        sar     edx, 2                                  ; 0608 _ C1. FA, 02
        sar     eax, 31                                 ; 060B _ C1. F8, 1F
        sub     edx, eax                                ; 060E _ 29. C2
        mov     eax, edx                                ; 0610 _ 89. D0
        add     eax, 48                                 ; 0612 _ 83. C0, 30
        mov     byte [rel state2+1H], al                ; 0615 _ 88. 05, 00000000(rel)
        mov     ecx, dword [rel curRound]               ; 061B _ 8B. 0D, 00000000(rel)
        movsxd  rax, ecx                                ; 0621 _ 48: 63. C1
        imul    rax, rax, 1717986919                    ; 0624 _ 48: 69. C0, 66666667
        shr     rax, 32                                 ; 062B _ 48: C1. E8, 20
        mov     edx, eax                                ; 062F _ 89. C2
        sar     edx, 2                                  ; 0631 _ C1. FA, 02
        mov     eax, ecx                                ; 0634 _ 89. C8
        sar     eax, 31                                 ; 0636 _ C1. F8, 1F
        sub     edx, eax                                ; 0639 _ 29. C2
        mov     eax, edx                                ; 063B _ 89. D0
        shl     eax, 2                                  ; 063D _ C1. E0, 02
        add     eax, edx                                ; 0640 _ 01. D0
        add     eax, eax                                ; 0642 _ 01. C0
        sub     ecx, eax                                ; 0644 _ 29. C1
        mov     edx, ecx                                ; 0646 _ 89. CA
        mov     eax, edx                                ; 0648 _ 89. D0
        add     eax, 48                                 ; 064A _ 83. C0, 30
        mov     byte [rel state2+2H], al                ; 064D _ 88. 05, 00000000(rel)
        mov     eax, 0                                  ; 0653 _ B8, 00000000
        call    writeNewline                            ; 0658 _ E8, 00000000(PLT r)
        mov     edx, 35                                 ; 065D _ BA, 00000023
        lea     rsi, [rel state3]                       ; 0662 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0669 _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 0673 _ B8, 00000000
        call    writeNewline                            ; 0678 _ E8, 00000000(PLT r)
        mov     edx, 31                                 ; 067D _ BA, 0000001F
        lea     rsi, [rel state6]                       ; 0682 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 0689 _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     edx, 3                                  ; 0693 _ BA, 00000003
        lea     rsi, [rel state2]                       ; 0698 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 069F _ BF, 00000001
        mov     eax, 1                                  ; 06BD _ B8, 00000000
        syscall
        mov     eax, 0                                  ; 06A9 _ B8, 00000000
        call    writeNewline                            ; 06AE _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 06B3 _ B8, 00000000
        call    writeNewline                            ; 06B8 _ E8, 00000000(PLT r)
        mov     eax, 60                                  ; 06BD _ B8, 00000000
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
        db 20H, 30H, 20H, 2DH, 20H, 32H, 35H, 35H       ; 0030 _  0 - 255
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

state6:                                                 ; byte
        db 4AH, 75H, 6DH, 6CH, 61H, 68H, 20H, 72H       ; 0170 _ Jumlah r
        db 6FH, 6EH, 64H, 65H, 20H, 79H, 61H, 6EH       ; 0178 _ onde yan
        db 67H, 20H, 64H, 69H, 70H, 65H, 72H, 6CH       ; 0180 _ g diperl
        db 75H, 6BH, 61H, 6EH, 20H, 3AH, 20H, 00H       ; 0188 _ ukan : .
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0190 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0198 _ ........

buf:                                                    ; byte
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 01A0 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 01A8 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 01B0 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 01B8 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 01C0 _ $$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 01C8 _ $$$$$$$$
        db 24H, 24H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01D0 _ $$......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01E0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01E8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01F0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01F8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0200 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0208 _ ........

guess:                                                  ; byte
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH; 0210 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH; 0218 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH; 0220 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 00H, 00H, 00H, 00H   ; 0228 _ ........

number:                                                 ; byte
        dd 00000005H, 00000005H                         ; 0230 _ 5 5 
        dd 00000005H, 00000005H                         ; 0238 _ 5 5 
        dd 00000005H, 00000005H                         ; 0240 _ 5 5 
        dd 00000005H                                    ; 0248 _ 5 


SECTION .bss    align=4                                 ; section number 3, bss

target:                                                 ; dword
        resd    1                                       ; 0000

correct: resd   1                                       ; 0004

curRound: resd  1                                       ; 0008


SECTION .rodata align=1                                 ; section number 4, const

?_023:                                                  ; byte
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
        dd 0000005AH, 100E4100H                         ; 00C4 _ 90 269369600 
        dd 0D430286H, 0C550206H                         ; 00CC _ 222495366 206897670 
        dd 00000807H, 0000001CH                         ; 00D4 _ 2055 28 
        dd 000000DCH                                    ; 00DC _ 220 
        dd fun-$+23H                                    ; 00E0 _ 00000000 (rel)
        dd 0000007DH, 100E4100H                         ; 00E4 _ 125 269369600 
        dd 0D430286H, 0C780206H                         ; 00EC _ 222495366 209191430 
        dd 00000807H, 0000001CH                         ; 00F4 _ 2055 28 
        dd 000000FCH                                    ; 00FC _ 252 
        dd fun-$+80H                                    ; 0100 _ 00000000 (rel)
        dd 0000008CH, 100E4100H                         ; 0104 _ 140 269369600 
        dd 0D430286H, 0C870206H                         ; 010C _ 222495366 210174470 
        dd 00000807H, 0000001CH                         ; 0114 _ 2055 28 
        dd 0000011CH                                    ; 011C _ 284 
        dd fun-$+0ECH                                   ; 0120 _ 00000000 (rel)
        dd 0000002EH, 100E4100H                         ; 0124 _ 46 269369600 
        dd 0D430286H, 070C6906H                         ; 012C _ 222495366 118253830 
        dd 00000008H, 0000001CH                         ; 0134 _ 8 28 
        dd 0000013CH                                    ; 013C _ 316 
        dd fun-$+0FAH                                   ; 0140 _ 00000000 (rel)
        dd 0000048AH, 100E4100H                         ; 0144 _ 1162 269369600 
        dd 0D430286H, 04850306H                         ; 014C _ 222495366 75825926 
        dd 0008070CH                                    ; 0154 _ 526092 



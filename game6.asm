; Disassembly of file: game.o
; Sun Jun 28 12:30:51 2020
; Type: ELF64
; Syntax: NASM
; Instruction set: 80386, x64

default rel

global a3
global func
global fun
global main
global con
global a1
global a2
global po


SECTION .text   align=1                                 ; section number 1, code

func:   ; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        mov     qword [rbp-18H], rdi                    ; 0004 _ 48: 89. 7D, E8
        mov     dword [rbp-1CH], esi                    ; 0008 _ 89. 75, E4
        mov     dword [rbp-20H], edx                    ; 000B _ 89. 55, E0
        mov     dword [rbp-24H], ecx                    ; 000E _ 89. 4D, DC
        mov     dword [rbp-28H], r8d                    ; 0011 _ 44: 89. 45, D8
        mov     dword [rbp-2CH], r9d                    ; 0015 _ 44: 89. 4D, D4
        mov     rax, qword [rbp-18H]                    ; 0019 _ 48: 8B. 45, E8
        add     rax, 9                                  ; 001D _ 48: 83. C0, 09
        movzx   eax, byte [rax]                         ; 0021 _ 0F B6. 00
        cmp     al, 97                                  ; 0024 _ 3C, 61
        jnz     ?_001                                   ; 0026 _ 75, 04
        add     dword [rbp+18H], 1                      ; 0028 _ 83. 45, 18, 01
?_001:  cmp     dword [rbp-1CH], 3                      ; 002C _ 83. 7D, E4, 03
        jnz     ?_002                                   ; 0030 _ 75, 04
        add     dword [rbp-20H], 1                      ; 0032 _ 83. 45, E0, 01
?_002:  mov     dword [rbp-4H], 1                       ; 0036 _ C7. 45, FC, 00000001
        jmp     ?_004                                   ; 003D _ EB, 14

?_003:  mov     eax, dword [rbp-4H]                     ; 003F _ 8B. 45, FC
        movsxd  rdx, eax                                ; 0042 _ 48: 63. D0
        mov     rax, qword [rbp-18H]                    ; 0045 _ 48: 8B. 45, E8
        add     rax, rdx                                ; 0049 _ 48: 01. D0
        mov     byte [rax], 97                          ; 004C _ C6. 00, 61
        add     dword [rbp-4H], 1                       ; 004F _ 83. 45, FC, 01
?_004:  cmp     dword [rbp-4H], 6                       ; 0053 _ 83. 7D, FC, 06
        jle     ?_003                                   ; 0057 _ 7E, E6
        mov     eax, 4                                  ; 0059 _ B8, 00000004
        pop     rbp                                     ; 005E _ 5D
        ret                                             ; 005F _ C3
; func End of function

fun:    ; Function begin
        push    rbp                                     ; 0060 _ 55
        mov     rbp, rsp                                ; 0061 _ 48: 89. E5
        mov     dword [rbp-4H], edi                     ; 0064 _ 89. 7D, FC
        mov     qword [rbp-10H], rsi                    ; 0067 _ 48: 89. 75, F0
        mov     dword [rbp-8H], edx                     ; 006B _ 89. 55, F8
        mov     eax, 0                                  ; 006E _ B8, 00000000
        pop     rbp                                     ; 0073 _ 5D
        ret                                             ; 0074 _ C3
; fun End of function

main:   ; Function begin
        push    rbp                                     ; 0075 _ 55
        mov     rbp, rsp                                ; 0076 _ 48: 89. E5
        sub     rsp, 32                                 ; 0079 _ 48: 83. EC, 20
        mov     rax, qword 7A7A7A7A7A7A7A7AH            ; 007D _ 48: B8, 7A7A7A7A7A7A7A7A
        mov     qword [rbp-12H], rax                    ; 0087 _ 48: 89. 45, EE
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [rbp-0AH], 31354                   ; 008B _ 66: C7. 45, F6, 7A7A
        mov     dword [rbp-4H], 1                       ; 0091 _ C7. 45, FC, 00000001
        mov     dword [rbp-8H], 10                      ; 0098 _ C7. 45, F8, 0000000A
        mov     edx, dword [rbp-8H]                     ; 009F _ 8B. 55, F8
        lea     rcx, [rbp-12H]                          ; 00A2 _ 48: 8D. 4D, EE
        mov     eax, dword [rbp-4H]                     ; 00A6 _ 8B. 45, FC
        mov     rsi, rcx                                ; 00A9 _ 48: 89. CE
        mov     edi, eax                                ; 00AC _ 89. C7
        mov     eax, 1
        syscall                                         ; 00AE _ E8, 00000000(PLT r)
        mov     rax, 60        
        mov     rdi, 0        
        syscall    
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

a2:     dd 00000002H, 00000000H                         ; 0068 _ 2 0 

po:                                                     ; byte
        db 73H, 64H, 61H, 64H, 00H, 00H, 00H, 00H       ; 0070 _ sdad....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0078 _ ........
        db 00H, 00H, 00H, 00H                           ; 0080 _ ....


SECTION .bss    align=1                                 ; section number 3, bss


SECTION .eh_frame align=8                               ; section number 4, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 78H, 10H, 01H       ; 0008 _ .zR..x..
        db 1BH, 0CH, 07H, 08H, 90H, 01H, 00H, 00H       ; 0010 _ ........
        db 1CH, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ ........
        dd func-$-20H                                   ; 0020 _ 00000000 (rel)
        dd 00000060H, 100E4100H                         ; 0024 _ 96 269369600 
        dd 0D430286H, 0C5B0206H                         ; 002C _ 222495366 207290886 
        dd 00000807H, 0000001CH                         ; 0034 _ 2055 28 
        dd 0000003CH                                    ; 003C _ 60 
        dd func-$+20H                                   ; 0040 _ 00000000 (rel)
        dd 00000015H, 100E4100H                         ; 0044 _ 21 269369600 
        dd 0D430286H, 070C5006H                         ; 004C _ 222495366 118247430 
        dd 00000008H, 0000001CH                         ; 0054 _ 8 28 
        dd 0000005CH                                    ; 005C _ 92 
        dd func-$+15H                                   ; 0060 _ 00000000 (rel)
        dd 00000045H, 100E4100H                         ; 0064 _ 69 269369600 
        dd 0D430286H, 0C400206H                         ; 006C _ 222495366 205521414 
        dd 00000807H                                    ; 0074 _ 2055 



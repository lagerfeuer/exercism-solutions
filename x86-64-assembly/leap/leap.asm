; asmsyntax=nasm

section .text

global leap_year
leap_year:
    ; rdi = year

    ; div 4
    mov rcx, rdi
    and rcx, 0x03  ; rdx % 4 == 0 means two LSB == 0
    xor rax, rax   ; return value = false
    test rcx, rcx  ; if remainder != 0
    jne done       ; return

    ; div 100
    mov rax, rdi
    mov rdx, 0
    mov rcx, 100
    div rcx       ; RDX:RAX DIV 100 => RAX(quotient):RDX(remainder)
    not rax       ; return value = true
    test rdx, rdx ; if remainder == 0
    jne done      ; return

    ; div 400
    mov rax, rdi
    mov rdx, 0
    mov rcx, 400
    div rcx       ; RDX:RAX DIV 400 => RAX(quotient):RDX(remainder)
    xor rax, rax  ; return value = false
    test rdx, rdx ; leap year -> rdx == 0
    jnz done      ; return false if rdx != 0
    not rax       ; return true otherwise

done:
    ret


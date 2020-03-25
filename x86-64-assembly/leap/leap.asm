; asmsyntax=nasm

section .text

global leap_year
leap_year:
    ; rdi = year

    ; div 4
    mov rcx, rdi
    and rcx, 0x03  ; rdx % 4 == 0 means two LSB == 0
    mov rax, 0     ; return value = false
    cmp rcx, 0     ; if remainder != 0
    jne done       ; return

    ; div 100
    mov rax, rdi
    mov rdx, 0
    mov rbx, 100
    div rbx       ; RDX:RAX DIV 100 => RAX(quotient):RDX(remainder)
    mov rax, 1    ; return value = true
    cmp rdx, 0    ; if remainder == 0
    jne done      ; return

    ; div 400
    mov rax, rdi
    mov rdx, 0
    mov rbx, 400
    div rbx       ; RDX:RAX DIV 400 => RAX(quotient):RDX(remainder)
    xor rax, rax
    test rdx, rdx ; leap year -> rdx == 0
    jnz done      ; return false if rdx != 0
    inc rax       ; return true otherwise

done:
    ret


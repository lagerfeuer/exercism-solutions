; asmsyntax=nasm
section .rodata
msg_start: db "One for ", 0
msg_end: db ", one for me.", 0
msg_you: db "you", 0

section .text
global two_fer
  ; ARGS
  ;     char* name   - rdi
  ;     char* output - rsi
two_fer:
  mov r8, rdi  ; name buffer
  mov r9, rsi  ; dst buffer

; START
  mov rdi, msg_start
  mov rsi, r9
  call strcat ; dst = strcat(msg_start, dst)

; NAME
name:
  mov rdi, msg_you ; load 'you' // default
  mov rsi, rax     ; returned from strcat before
  test r8, r8      ; if name == NULL
  jz .cont         ; then .cont
  mov  rdi, r8     ; load *name
.cont:
  call strcat      ; dst = strcat(name, dst)

; END
  mov rdi, msg_end
  mov rsi, rax
  call strcat ; dst = strcat(msg_end, dst)

; RETURN
  mov rax, r9  ; set return value
  ret

; char* strcat(char* src, char* dst)
; returns (dst + strlen(src))
strcat:
  mov rax, rdi
  mov rdx, rsi
.loop:
  mov cl, byte [rax]
  mov byte [rdx], cl
  inc rax
  test cl, cl
  jz .done
  inc rdx
  jmp .loop
.done:
  mov rax, rdx ; return last char of dst
  ret

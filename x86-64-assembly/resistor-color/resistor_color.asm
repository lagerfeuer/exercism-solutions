; asmsyntax=nasm
section .rodata
  ring0: db "black", 0
  ring1: db "brown", 0
  ring2: db "red", 0
  ring3: db "orange", 0
  ring4: db "yellow", 0
  ring5: db "green", 0
  ring6: db "blue", 0
  ring7: db "violet", 0
  ring8: db "grey", 0
  ring9: db "white", 0
  array: dq \
    ring0, ring1, ring2, ring3, ring4, ring5, ring6, ring7, ring8, ring9, 0

section .text
global color_code
color_code:
  ; input string in rdi
  xor rcx, rcx
  lea rdx, [rel array]
.loop:
  cmp rdx, 0
  je .done
  mov rsi, [rdx+rcx]       ; current = array + counter
  call compare             ; strcmp(input, current)
  test rax, rax            ; match?
  jz .done
  add rcx, 8               ; counter++
  jmp .loop
.done:
  mov rax, rcx
  shr rax, 3      ; divide by 8 to get offset
  ret

global colors
colors:
  mov rax, array ; return array
  ret


compare:
  mov r8, rdi
  mov r9, rsi
  xor rax, rax
.loop:
  ; load and compare
  mov r10b, byte [r8]
  mov r11b, byte [r9]
  cmp r10b, r11b
  jne .neq
  ; check for NULL byte
  test r10b, r10b
  jz .done
  test r11b, r11b
  jz .done
  ; inc and repeat
  inc r8
  inc r9
  jmp .loop

.neq: ; not equal
  inc rax
.done:
  ret


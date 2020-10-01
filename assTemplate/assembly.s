global yolo
%use masm
section .text

hello:
  mov eax, 0x4
  mov ebx, 1
  mov ecx, message
  mov edx, message_length
  int 0x80

  mov eax, 0x1
  mov ebx, 0
  int 0x80
  ret

yolo:
  push ebp
  mov ebp, esp
  mov eax, DWORD PTR [ebp+8]
  pop ebp
  ret

section .data
  message: db "God, it actually worked...", 0xa
  message_length equ $-message


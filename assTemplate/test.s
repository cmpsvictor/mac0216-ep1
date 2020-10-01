global isprime
%use masm
section .text

isprime:
  ;Prologo
  push ebp
  mov ebp, esp
  
  ;Salvar registradores
  push ebx
  push ecx
  push edx

  mov ecx, 5
  mov eax, DWORD PTR [ebp+8]
  cdq                         ;expandimos n para edx:eax
  div ecx                     ;realizamos a divisão e colocamos resto em edx
  cmp edx, 0
  je notPrime
  jmp prime

notPrime:
  mov eax, 0
  jmp mainEnd

prime:
  mov eax, 1
  jmp mainEnd

mainEnd:
  pop edx
  pop ecx
  pop ebx
  
  mov esp, ebp
  pop ebp
  ret

section .data
  message: db "God, it actually worked...", 0xa
  message_length equ $-message


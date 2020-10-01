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

  mov eax, DWORD PTR [ebp+8]   ;ebx guarda n
  mov ecx, 2                   ;ecx = 2

  cmp eax, 00
  jl error

  jmp loopInit
  
loopInit:
  mov eax, DWORD PTR [ebp+8]
  cdq                         ;expandimos n para edx:eax
  div ecx                     ;realizamos a divisão e colocamos resto em edx
  cmp edx, 0
  je  notPrime
  
  inc ecx
  mov eax, DWORD PTR [ebp+8]
  cmp ecx, eax
  jl loopInit
  
  jmp prime      ;se chegamos até aqui, é primo

notPrime:
  mov eax, 0x4
  mov ebx, 1
  mov ecx, nehprimo
  mov edx, nehprimo_t
  int 0x80
  jmp mainEnd

prime:
  mov eax, 0x4
  mov ebx, 1
  mov ecx, ehprimo
  mov edx, ehprimo_t
  int 0x80
  jmp mainEnd

error:
  mov eax, 0x4
  mov ebx, 1
  mov ecx, erromsg
  mov edx, erromsg_t
  int 0x80
  jmp mainEnd


mainEnd:  ;restauramos os valores dos registradores e terminamos a função
  pop edx
  pop ecx
  pop ebx
  
  mov esp, ebp
  pop ebp
  ret

section .data
  ehprimo: db "Ah yes, ele é primo.", 0xa
  ehprimo_t equ $-ehprimo
  nehprimo: db "Nop, no es primo.", 0xa
  nehprimo_t equ $-nehprimo
  erromsg: db "HAHA, não crashei.", 0xa
  erromsg_t equ $-erromsg


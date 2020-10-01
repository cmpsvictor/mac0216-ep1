; testando o print/scanf

global print_asm

%use MASM

section .text

print_asm:
    push ebp
    mov ebp, esp
   
   ; guardar registradores
    push eax
    push ebx
    push ecx
    push edx

    ; void print_asm(int length, char *string)

    mov eax, 0x4 ; usar syscall de write
    mov ebx, 0x1; file descriptor usado vai ser stdout
    mov ecx, DWORD PTR[ebp + 12]
    mov edx, DWORD PTR[ebp + 8] ; length de parametro da funcao

    int 0x80 ; vetor de interrupções pra chamar a rotina write

    ; restaurar
    pop edx
    pop ecx
    pop ebx
    pop eax

    pop ebp
    ret
    
    

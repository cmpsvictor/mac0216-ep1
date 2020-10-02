global print_asm

%use MASM

section .text

print_asm:
	push ebp
	mov ebp, esp

   ; guardar regs
	push eax
	push ebx
	push ecx
	push edx

	; usar syscall de write
	mov eax, 0x4
	; file descriptor usado -> stdout
	mov ebx, 0x1
	; string recebido pela funcao
	mov ecx, DWORD PTR[ebp + 12]
	; length da string recebida
	mov edx, DWORD PTR[ebp + 8]

	; vetor de interrupções pra chamar a rotina write
	int 0x80

	; restaurar regs
	pop edx
	pop ecx
	pop ebx
	pop eax

	pop ebp
	ret



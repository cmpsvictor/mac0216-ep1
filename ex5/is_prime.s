global is_prime

%use MASM

section .text

is_prime:

	; Chama da funcao
	push ebp
	mov ebp, esp

	; Guardando os regs
	push ebx
	push edx


	; i = 2
	mov eax, 0x2

FOR:
	; i*i <= n
	push eax
	; imul -> eax = eax * argumento -> i*i
	imul eax
	mov ebx, DWORD PTR[ebp + 4]
	cmp eax, ebx
	ja PRIMO

	; colocar n em eax
	mov eax, ebx
	cdq

	; recuperar i para ebx
	pop ebx

	div ebx

	; comaprar resto com 0
	cmp edx, 0
	je NPRIMO

	inc ebx
	mov eax, ebx
	jmp FOR




NPRIMO:
	mov eax, 0
	jmp FIM
PRIMO:
	mov eax, 1
	jmp FIM
FIM:
	; Restaurar os regs
	pop edx
	pop ebx

	; Saida da funcao
	pop ebp
	ret

section .data


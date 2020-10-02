global is_prime

%use MASM

section .text

is_prime:

	; Chama da funcao
	push ebp
	mov ebp, esp

	; Guardando os regs
	push ebx
	push ecx
	push edx

	; i = 2
	mov ecx, 0x2
	jmp FOR

FOR:
	; colocar i no eax para imul
	mov eax, ecx
	; imul -> eax = eax * argumento -> i*i
	imul eax
	; i*i <= n
	mov ebx, DWORD PTR[ebp + 8]
	cmp eax, ebx
	; jump >
	jg PRIMO

	; colocar n em eax para idiv
	mov eax, ebx

	; n%i para edx
	idiv ecx

	; comaprar resto com 0
	cmp edx, 0
	je NPRIMO

	; i++
	inc ecx
	jmp FOR




NPRIMO:
	; prep return value
	mov eax, 0
	jmp FIM
PRIMO:
	; prep return value
	mov eax, 1
	jmp FIM
FIM:
	; Restaurar os regs
	pop edx
	pop ecx
	pop ebx

	; Saida da funcao
	pop ebp
	ret

section .data


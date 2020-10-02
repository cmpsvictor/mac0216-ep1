global start

extern main

section .text
start:
	push ebp
	mov ebp, esp

	; Preparar ponteiro de argv
	mov eax , ebp
	add eax, 8
	; colocar argv no stack
	push eax
	; colocar argc no stack
	push dword[ebp + 4]

	call main

	jmp exit

exit:
	; Preparar argumentos do exit
	mov ebx, eax
	mov eax, 0x1
	; vetor de interrupção pra executar exit
	int 0x80

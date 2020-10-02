global start

extern main

%use MASM

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
	push DWORD[ebp + 4]

	call main

	jmp exit

exit:
	; Preperar argmentos do exit
	mov ebx, eax
	mov eax, 0x1
	; vator de syscall
	int 0x80

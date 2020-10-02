global start

extern main

%use MASM

section .text
start:
	push ebp
	mov ebp, esp
	mov eax , ebp
	add eax, 8
	push eax
	push DWORD[ebp + 4] ; colocar argc no stack
	call main
	jmp exit

exit:
	mov ebx, eax
	mov eax, 0x1
	int 0x80

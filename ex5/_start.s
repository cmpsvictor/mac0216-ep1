global start

extern main

%use MASM

section .text
start:
	push DWORD PTR[esp + 4]
	push DWORD[esp + 4] ; colocar argc no stack
	call main
	jmp exit

print:
	push ebp
	mov ebp, esp

	push ecx
	push edx

	mov ecx, eax
	mov edx, ebx
	mov eax, 0x4
	mov ebx, 0x1

	int 0x80

	pop edx
	pop ecx

	pop ebp
	ret

exit:
	mov ebx, eax
	mov eax, 0x1
	int 0x80

section .data
	mess db "oi", 0xA
	messLen equ $-mess

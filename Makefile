sieve.o:
	gcc -Wall -ansi -pedantic -o sieve sieve.c

sieve_asm.o:
	gcc -g -m32 -S sieve_asm.c -o sieve_asm.o
	nasm is_prime.s -o is_prime.o
	gcc sieve_asm.o -o sieve_asm

teste:
	nasm -f elf32 file.s -o file.out
	ld -m elf_i386 file.out --entry=main -o file


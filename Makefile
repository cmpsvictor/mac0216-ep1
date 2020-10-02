all:
	make sieve.o
	make sieve_asm.o
	make sieve_nostdlib.o

clean:
	rm sieve sieve_asm sieve_nostdlib

sieve.o:
	gcc -o sieve sieve.c

sieve_asm.o:
	nasm -f elf32 is_prime.s -o is_prime.o
	gcc -m32 is_prime.o sieve_asm.c -o sieve_asm
	rm is_prime.o

sieve_nostdlib.o:
	nasm -f elf32 _start.s -o _start.o
	nasm -f elf32 is_prime.s -o is_prime.o
	nasm -f elf32 print.s -o print.o
	gcc -m32 -nostdlib sieve_nostdlib.c -c
	ld -m elf_i386 -e start _start.o is_prime.o print.o sieve_nostdlib.o -o sieve_nostdlib
	rm _start.o is_prime.o print.o sieve_nostdlib.o

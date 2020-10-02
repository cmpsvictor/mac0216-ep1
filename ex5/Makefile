sieve.o:
	gcc -Wall -ansi -pedantic -o sieve sieve.c

sieve_asm.o:
	nasm -f elf32 is_prime.s -o is_prime.o
	gcc -Wall -ansi -pedantic -m32 is_prime.o sieve_asm.c -o sieve_asm
	rm is_prime.o

start:
	nasm -f elf32 _start.s -o start.o
	nasm -f elf32 is_prime.s -o is_prime.o
	nasm -f elf32 print.s -o print.o
	gcc -m32 -nostdlib sieve_nostdlib.c -c
	ld -m elf_i386 -e start start.o is_prime.o print.o sieve_nostdlib.o -o start
	rm start.o is_prime.o print.o sieve_nostdlib.o
	./start 5



sieve.o:
	gcc -Wall -ansi -pedantic -o sieve sieve.c

sieve_asm.o:
	nasm -f elf32 is_prime.s -o is_prime.o
	gcc -Wall -ansi -pedantic -m32 is_prime.o sieve_asm.c -o sieve_asm
	rm is_prime.o



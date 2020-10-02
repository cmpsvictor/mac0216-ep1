all:
	make sieve.o
	make sieve_asm.o
	make print.o

clean:
	rm sieve sieve_asm print
	make all

sieve.o:
	gcc -o sieve sieve.c

sieve_asm.o:
	nasm -f elf32 is_prime.s -o is_prime.o
	gcc -m32 is_prime.o sieve_asm.c -o sieve_asm
	rm is_prime.o

print.o:
	nasm -f elf32 is_prime.s -o is_prime.o
	nasm -f elf32 print.s -o print.o
	gcc -m32 is_prime.o print.o sieve_nostdlib.c -o print
	rm is_prime.o print.o

sieve_nostdlib.o:
	nasm -f elf32 is_prime.s -o is_prime.o
	nasm -f elf32 print.s -o print.o
	nasm -f elf32 _start.s -o _start.o
	gcc -nostdlib -m32 is_prime.o print.o _start.o sieve_nostdlib.c -o sieve_nostdlib
	rm is_prime.o print.o _start.o

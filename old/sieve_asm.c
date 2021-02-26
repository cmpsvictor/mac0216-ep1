#include <stdio.h>
#include <stdlib.h>

int is_prime(int n);

int main(int argc, char *argv[]) {
	int num;

	/* Validar quantidade de argumentos */
	if( argc != 2 ){
		printf("Formato: ");
		printf("%s", argv[0]);
		printf(" <numero>\n");
		return 1;
	}

	/* Parse para int */
	num = atoi(argv[1]);

	printf("%d\n", is_prime(num));

	return 0;
}

#include <stdlib.h>

int is_prime(int n);

void print_asm(int length, char *string);

int power(int a, int b){
	int temp;
	if( b == 0 ){
		return 1;
	}else if(b % 2 == 0){
		temp = power(a, b/2);
		return temp*temp;
	}else{
		return a*power(a, b-1);
	}
}

int strLen(char *str){
	int i = 0;
	while(str[i] != '\0'){
		i++;
	}
	return i;
}

/* parse strToInt */
int strToInt(char *str){
	int i = 0;
	int log = strLen(str) - 1;
	int num = 0;
	char c = str[i];

	while(c != '\0'){
		num += (c - '0') * power(10, log - i);
		i++;
		c = str[i];
	}
	return num;
}

void printStr(char *str){
	print_asm(strLen(str), str);
}

int main(int argc, char *argv[]){
	int num;
	char *temp;

	/* checagem se o comando  recebeu o numero
	 * correto de argumentos */
	if( argc != 2 ){
		temp = "Formato: ";
		printStr(temp);
		printStr(argv[0]);
		temp = " <numero>\n";
		printStr(temp);
		return 1;
	}

	num = strToInt(argv[1]);

	if (is_prime(num)) {
		temp = "1\n";
	} else {
		temp = "0\n";
	}

	printStr(temp);

	return 0;
}

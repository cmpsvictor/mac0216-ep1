void print_asm(int length, char *string);

int is_prime(int n);

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

void printnum(int x){

	if (x < 0){
		print_asm(1, "-");
		x = -x;
	}

	char temp[1] = "o";
	temp[0] = '0' + x%10;
	print_asm(1, temp);
	while (x >= 10){
		x /= 10;
		temp[0] = '0' + x%10;
		print_asm(1, temp);
	}
}

int main(int argc, char *argv[]) {
	int num;
	char *temp;

	printnum(argc);
	print_asm(1, "\n");

	if( argc != 2 ){
		temp = "Formato: <comando> <numero>\n";
		print_asm(strLen(temp), temp);
		return 1;
	}

	temp = argv[0];
	print_asm(strLen(temp), temp);


	if (is_prime(num)) {
		temp = "1\n";
	} else {
		temp = "0\n";
	}

	print_asm(strLen(temp), temp);

	return 0;
}

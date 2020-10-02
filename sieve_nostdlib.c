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
	i--;
	return i;
}

int strToInt(char *str){
	int i = 0;
	int len = strLen(str);
	int num = 0;
	char c = str[i];
	while(c != '\0'){
		num += (c - '0') * power(10, len - i);
		i++;
		c = str[i];
	}
	return num;
}

int main(int argc, char *argv[]) {
	int num;

	num = strToInt(argv[1]);

	if (is_prime(num)) {
		print_asm(2, "1\n");
	} else {
		print_asm(2, "0\n");
	}

	return 0;
}

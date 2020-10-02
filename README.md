# EP1 de MAC0216
## mac0216-ep1

Um conjunto de programas que checam a primalidade do numero dado

## Utilizacao

O conjunto de programas pode ser compilado com `make all`, porem cada comando pode ser compilado isoladamente com o comando apresentado no inicio de sua respctiva secao
Todos os programas do conjunto sao utilizados com o comando:

`<nome do comando> <numero>`

E imprime:

`1` -> Se numero e primo
`0` -> Se numero nao e primo

## Implementacoes

### sieve

`make sieve.o`

Consiste de um programa escrito completamente em C para checar se o numero dado e primo

### sieve_asm

`make sieve_asm.o`

Um programa onde o I/O e feito por meio da linguagem C, porem a vericacao da primalidade e feito em assembly

### sieve_nostdlib

`make sieve_nostdlib.o`

Um programa em que as funcoes feitas em C nao contem nenhuma dependencia dinamica, sendo todas estas substituidas por funcoes escritas em assembly

## Participantes

* Joao Renner Nusp: XXXXXXXX
* Maximilian Cabrajac Nusp: 11795418
* Victor Campos Nusp: XXXXXXXX

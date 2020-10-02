# EP1 de MAC0216
## MAC0216-EP1

Um conjunto de programas que checam a primalidade do numero dado

## Utilizacao

O conjunto completo pode ser compilado com `make all`, porem cada comando pode ser compilado isoladamente com o comando apresentado no inicio de sua respctiva secao
Todos os programas do conjunto sao utilizados com a forma:

`<nome do comando> <numero>`

E imprimem:

`1` -> Se numero e primo

`0` -> Se numero nao e primo

## Implementacoes

### Sieve

`make sieve.o`

Consiste de um programa escrito completamente em C para checar se o numero dado e primo

### Sieve_asm

`make sieve_asm.o`

Um programa onde o I/O e feito por meio da linguagem C, porem a vericacao da primalidade e feita em assembly

### Sieve_nostdlib

`make sieve_nostdlib.o`

Um programa em que as funcoes feitas em C nao contem nenhuma dependencia dinamica, sendo todas estas substituidas por funcoes escritas em assembly

## Participantes

* Joao Renner NUSP: 11276221
* Maximilian Cabrajac NUSP: 11795418
* Victor Campos NUSP: 11796913

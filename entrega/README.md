# EP1 de MAC0216
## MAC0216-EP1

Um conjunto de programas que checam a primalidade do numero dado.

## Utilização

O conjunto completo pode ser compilado com `make all`, porém cada comando pode ser compilado isoladamente com o comando apresentado no inicio de sua respectiva seção.
Todos os programas do conjunto são utilizados com a forma:

`<nome do comando> <número>`

E imprimem:

`1` -> Se numero é primo

`0` -> Se numero não é primo

## Implementações

### Sieve

`make sieve.o`

Consiste de um programa escrito completamente em C para checar se o numero dado é primo

### Sieve_asm

`make sieve_asm.o`

Um programa onde o I/O é feito por meio da linguagem C, porem a verificação da primalidade é feita em assembly x86 de 32-bits.

### Sieve_nostdlib

`make sieve_nostdlib.o`

Um programa em que as funções, escritas em C, não contém quaisquer dependências dinâmicas, tendo todas estas substituídas por funções escritas em assembly.

## Participantes

* João Renner Rudge NUSP: 11276221
* Maximilian Cabrajac Görtz NUSP: 11795418
* Victor Aristóteles Rocha Campos NUSP: 11796913

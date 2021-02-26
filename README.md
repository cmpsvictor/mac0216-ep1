# EP1 de MAC0216
## MAC0216-EP1

Um conjunto de programas que checam a primalidade do número dado.

## Utilização

O conjunto completo pode ser compilado com `make all`, porém cada executável pode ser compilado isoladamente com o comando 
apresentado no início de sua respectiva seção de __Implementações__ abaixo.

Todos os programas do conjunto são executados com a forma:

`<nome do comando> <número>`

Cujos imprimem:

`1` -> Se o número dado é primo

`0` -> Se o número dado não é primo

## Implementações

### Sieve

`make sieve.o`

Consiste de um programa escrito completamente em C para checar se o numero dado é primo.

### Sieve_asm

`make sieve_asm.o`

Um programa onde o I/O é feito por meio da linguagem C, porem a verificação da primalidade é feita em assembly x86 de 32-bits.

### Sieve_nostdlib

`make sieve_nostdlib.o`

Um programa em que as funções, escritas em C, não contém quaisquer dependências dinâmicas, tendo todas estas substituídas por funções escritas em assembly.
Para verificar a ausência de dependências, obtenha o arquivo executável por meio do `make` anteriormente mencionado, e rode o comando `ldd -v sieve_nostdlib`
no executável resultante.

## Participantes

Projeto Exercício-Programa 1 da disciplina _Técnicas de Programação 1_.

* João Renner Rudge 
* Maximilian Cabrajac Görtz 
* Victor Aristóteles Rocha Campos 

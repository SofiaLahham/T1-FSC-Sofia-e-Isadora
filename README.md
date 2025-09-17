# T1-FSC-Sofia-e-Isadora
Trabalho 1 da disciplina Fundamentos de Sistemas Computacionais (PUCRS) - Programação em Assembly no processador TRM. Dupla: Sofia Lahham e Isadora.

Este repositório é referente as soluções do T1 de FSC (Fundamentos de Sistemas Computacionais), que desenvolvemos em dupla (Sofia e Isadora).

O objetivo do trabalho é praticar a programação em Assembly usando o processador TRM (Tiny RISC Machine). Para cada problema, escrevemos o código em Assembly, executamos no simulador e registramos o resultado em um print.

Aqui iremos mostrar:

Os códigos de cada problema em arquivos separados.

Este README, onde explicamos de forma simples como cada programa funciona e mostramos o print do simulador depois da execução.

A seguir estão os problemas resolvidos, cada um com sua explicação e a evidência da execução.


PROBLEMA 1: esse código escreve na memória os primeiros números ímpares, de acordo com a quantidade que o usuário informar (testamos N = 10 para fazer o print). Primeiro ele lê o valor de N da entrada, começa a guardar os números a partir do endereço 0x20 e inicia com o número 1. A cada volta do loop, ele grava o ímpar atual, soma 2 para descobrir o próximo e avança o endereço da memória em 2 posições.

<img width="1262" height="953" alt="image" src="https://github.com/user-attachments/assets/00a95152-9e11-4922-ac5a-3b2ce94651fd" />
.

PROBLEMA 2: este programa gera os N primeiros números da sequência de Fibonacci e grava cada um na memória a partir do endereço 0x30. Primeiro ele lê N digitado pelo usuário (testamos N= 18 para fazer o print), em seguida começa com os dois primeiros valores da sequência (1 e 1) e, a cada volta, salva o valor atual na memória, soma os dois últimos para descobrir o próximo e anda para o próximo espaço de memória. O processo se repete até completar a quantidade pedida, entãono o programa encerra.

<img width="1262" height="950" alt="image" src="https://github.com/user-attachments/assets/9b7cbdff-0d50-43fc-988a-796402ff4f31" />

.

PROBLEMA 3: esse código tem a função de percorrer a memória entre os endereços 0x40 e 0x80, verificando cada valor salvo nesse intervalo. A cada leitura ele ignora números negativos ou zero e compara apenas os positivos com o maior valor já encontrado até então. No final o maior número positivo é gravado no endereço 0x90, encerrando a execução.

Observação: para gerarmos o print e validarmos o funcionamento no simulador, adicionamos um pequeno bloco de preenchimento inicial com alguns valores de teste (12, -7, 45, 0, 88, 13, -25).

<img width="1269" height="954" alt="image" src="https://github.com/user-attachments/assets/34d83a33-a18c-44cf-91ed-5a698b8d32b3" />

.

PROBLEMA 4: pegamoa os valores que estavam na memória entre 0x40 e 0x80 e copiamos para outro lugar, começando no endereço 0x90.
A diferença é que todos os números tinham que ficar ímpares. Por isso sempre que o programa encontrava um número par, somava +1 antes de gravar.
No fim, conseguimos deixar os 64 valores copiados a partir de 0x90 todos ímpares.

<img width="1268" height="955" alt="image" src="https://github.com/user-attachments/assets/2d27fdc3-8d0b-4fca-9383-3d8678fcca36" />

.

PROBLEMA 5: Nesse problema a gente precisava procurar, entre os endereços 0x60 e 0x70, dois números cuja soma fosse igual a 10. Se encontrássemos esses dois números, deveríamos gravar as posições (endereços) deles em 0x80 e 0x90. No nosso teste, colocamos os valores 4, 6, 7 e 2 na memória a partir de 0x60. O programa rodou e achou que 4 + 6 = 10. Com isso, ele gravou o endereço do 4 (0x60) em 0x80 e o endereço do 6 (0x62) em 0x90.

<img width="1264" height="955" alt="image" src="https://github.com/user-attachments/assets/f70fd9a4-f853-4bb0-935f-4da6d091798c" />

.

PROBLEMA 6: Nesse problema nós invertermos a ordem dos valores que estavam entre os endereços 0x40 e 0x60. Para isso usamos dois ponteiros: um começava do lado esquerdo (0x40) e o outro do lado direito (0x60). Em cada passo o programa lia o valor da esquerda e o da direita, trocava os dois de lugar e depois andava um passo para dentro. Esse processo se repetia até os ponteiros se encontrarem no meio. No final todos os valores da área ficaram “de trás pra frente”, sem precisar usar nada fora do intervalo pedido.

<img width="1266" height="952" alt="image" src="https://github.com/user-attachments/assets/0d2a6674-a14e-40af-aac9-9b9cd32c0607" />

.

PROBLEMA 8: escrevemos nossos nomes na saída do simulador. O programa lê a string armazenada em memória, percorre cada caractere até encontrar o final e manda para a saída, mostrando na tela “SOFIA E ISADORA”.

<img width="1266" height="949" alt="image" src="https://github.com/user-attachments/assets/bba1b13f-914b-4af8-808b-6597dc2952b1" />

.

PROBLEMA 9: o código verifica se uma palavra é um palíndromo (ou seja, se dá pra ler igual de frente pra trás). Primeiro o código lê em 0x60 o tamanho da palavra e depois pega os caracteres a partir de 0x70. Ele compara a letra da esquerda com a da direita, avançando até o meio. Se todas baterem, o simulador mostra a letra S (sim), se alguma for diferente mostra a letra N (não).

<img width="1261" height="949" alt="image" src="https://github.com/user-attachments/assets/22c45301-4814-4136-8c6b-7daf3103b98e" />

.

PROBLEMA 10: o programa lê N caracteres de um texto armazenado na memória (a partir do endereço 0x60) e conta quantas vogais existem nele, considerando tanto maiúsculas quanto minúsculas. Cada vez que encontra um ‘A’, ‘E’, ‘I’, ‘O’ ou ‘U’, soma +1 no contador correspondente. Ao final, os resultados são gravados em posições fixas da memória: 0x40 para a quantidade de A/a, 0x44 para E/e, 0x48 para I/i, 0x50 para O/o e 0x52 para U/u. No teste realizado com a palavra “aEiOuU” e N = 6, a memória mostrou corretamente os valores 1, 1, 1, 1 e 2, representando a quantidade de cada vogal encontrada.
<img width="1266" height="955" alt="image" src="https://github.com/user-attachments/assets/8c32357d-95ca-428e-8c14-aee713820bc2" />

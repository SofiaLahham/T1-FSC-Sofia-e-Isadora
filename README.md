# T1-FSC-Sofia-e-Isadora
Trabalho 1 da disciplina Fundamentos de Sistemas Computacionais (PUCRS) - Programação em Assembly no processador TRM. Dupla: Sofia Lahham e Isadora
Este repositório é referente as soluções do T1 de FSC (Fundamentos de Sistemas Computacionais), que desenvolvemos em dupla (Sofia e Isadora).

O objetivo do trabalho é praticar a programação em Assembly usando o processador TRM (Tiny RISC Machine). Para cada problema, escrevemos o código em Assembly, executamos no simulador e registramos o resultado em um print.

Aqui iremos mostrar:

Os códigos de cada problema em arquivos separados.

Este README, onde explicamos de forma simples como cada programa funciona e mostramos o print do simulador depois da execução.

A seguir, estão os problemas resolvidos, cada um com sua explicação e a evidência da execução.


PROBLEMA 1: foi feito para guardar na memória os primeiros números ímpares, começando a partir do endereço 0x20. Ele lê o valor N (quantos números devem ser gravados), inicia no 1 e vai somando de 2 em 2 para gerar apenas ímpares. Cada novo número é colocado em um espaço de memória ao lado do anterior (de 2 em 2, porque cada número ocupa uma “palavra”). O processo continua até que todos os N números sejam gravados. No exemplo do teste com N = 7, a memória mostra certinho os valores 1, 3, 5, 7, 9, 11 e 13 na sequência.

<img width="1261" height="951" alt="image" src="https://github.com/user-attachments/assets/da9571d1-3d17-43e8-8ed2-7fa9247aa587" />

.

PROBLEMA 2: nós geramos os primeiros números da sequência de Fibonacci e gravamos na memória a partir do endereço 0x30. O valor N define quantos números devem ser criados. O código começa com os dois primeiros termos da sequência (1 e 1) e, a cada volta, calcula o próximo número somando os dois anteriores. Cada resultado foi colocado em sequência na memória, um do lado do outro (pulando de 2 em 2, pois cada número ocupa uma palavra). No exemplo de teste que criamos com N = 9, a memória mostra corretamente os valores 1, 1, 2, 3, 5, 8, 13, 21 e 34.

<img width="1271" height="952" alt="image" src="https://github.com/user-attachments/assets/a3be3dab-907c-44ac-869f-4499b3886c8e" />

.

PROBLEMA 3: percorremos os valores guardados na memória entre os endereços 0x40 e 0x80 para descobrir qual é o maior número positivo. A cada passo, o código lê o número atual, ignora se ele não for positivo e compara com o maior que já tínhamos encontrado. Se for maior, o valor é atualizado.

No final, o número mais alto encontrado é gravado no endereço 0x90, onde podemos ver o resultado claramente no simulador. Assim, conseguimos identificar de forma simples qual era o maior valor positivo daquela faixa de memória.

<img width="1267" height="950" alt="image" src="https://github.com/user-attachments/assets/f434f1d0-3ab9-4343-a8e4-676818e5bc79" />

.

PROBLEMA 4: pegamoa os valores que estavam na memória entre 0x40 e 0x80 e copiamos para outro lugar, começando no endereço 0x90.
A diferença é que todos os números tinham que ficar ímpares. Por isso sempre que o programa encontrava um número par, somava +1 antes de gravar.
No fim, conseguimos deixar os 64 valores copiados a partir de 0x90 todos ímpares.

<img width="1268" height="955" alt="image" src="https://github.com/user-attachments/assets/2d27fdc3-8d0b-4fca-9383-3d8678fcca36" />

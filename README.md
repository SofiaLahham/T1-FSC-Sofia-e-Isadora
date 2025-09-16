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

PROBLEMA 2:

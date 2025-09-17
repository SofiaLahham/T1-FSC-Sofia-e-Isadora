; usuário precisa digitar um valor inteiro para M e N

main
    ldw v0,zr,0xf010    ; lê M
    stw v0,zr,0x0040    ; guarda M em 0x40
    ldw v1,zr,0xf010    ; lê N
    stw v1,zr,0x0042    ; guarda N em 0x42

    add a0,zr,0x0044    ; endereço início matriz
    add a1,zr,1         ; valor inicial
    sub a2,a2           ; linha = 0

row
    beq a2,v0,filledok  ; terminou linhas
    sub a3,a3           ; coluna = 0
col
    beq a3,v1,nextrow   ; terminou colunas
    stw a1,a0           ; salva valor
    add a0,a0,2         ; próximo endereço
    add a1,a1,1         ; próximo valor
    add a3,a3,1         ; coluna++
    beq zr,zr,col       ; repete colunas
nextrow
    add a2,a2,1         ; linha++
    beq zr,zr,row       ; repete linhas
filledok

    ldw v0,zr,0x0040    ; M
    ldw v1,zr,0x0042    ; N
    add v2,zr,0x0100    ; início saída (0x100)
    add v3,zr,0x0044    ; início matriz

    sub v4,v4           ; zera v4
    add v4,v0           ; v4 = M
    sub v6,v6
    add v6,v1           ; v6 = N
    tlt v6,v0           ; se N < M
    beq v6,zr,keepm     ; se não, mantém
    sub v4,v4
    add v4,v1           ; v4 = N (menor)
keepm

    sub v7,v7
    add v7,v1
    add v7,v7,1
    lsl v7,v7,1         ; salto p/ próxima linha

diag
    beq v4,zr,done      ; terminou diagonal
    ldw v5,v3           ; lê elemento
    stw v5,v2           ; guarda em 0x100+
    add v3,v7           ; vai p/ próxi

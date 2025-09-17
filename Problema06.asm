main
    add v2,zr,0x0040    ; começo (0x40)
    add v3,zr,0x0061    ; fim+1 (0x61)
    add v4,zr,1         ; valor inicial

fill
    stb v4,v2           ; salva
    add v2,v2,1         ; próximo endereço
    add v4,v4,1         ; próximo valor
    bne v2,v3,fill      ; repete

    add a0,zr,0x0040    ; ponteiro início
    add a1,zr,0x0060    ; ponteiro fim

loop
    bge a0,a1,end       ; para se cruzarem
    lbu v0,a0           ; lê início
    lbu v1,a1           ; lê fim
    stb v1,a0           ; fim → início
    stb v0,a1           ; início → fim
    add a0,a0,1         ; avança início
    sub a1,a1,1         ; recua fim
    beq zr,zr,loop      ; repete

end
    hlt                 ; fim

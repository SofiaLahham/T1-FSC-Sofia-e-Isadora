; Digite um número inteiro N quando o simulador pedir [(int)?]
main
    ldw v0,zr,0xf010    ; lê N digitado
    add v1,zr,0x0030    ; começa no endereço 0x30
    add v2,zr,1         ; primeiro número (a = 1)
    add v3,zr,1         ; segundo número (b = 1)

loop
    stw v2,v1           ; salva número na memória
    add v1,v1,2         ; próximo endereço
    sub v0,v0,1         ; N--

    sub v4,v4           ; zera v4
    add v4,v2           ; v4 = a
    add v4,v3           ; v4 = a+b
    sub v2,v2           ; zera v2
    add v2,v3           ; a = b
    sub v3,v3           ; zera v3
    add v3,v4           ; b = v4 (novo valor)

    bne v0,zr,loop      ; repete enquanto N não for 0

end
    hlt                 ; fim do programa

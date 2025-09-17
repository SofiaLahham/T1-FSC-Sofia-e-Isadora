main
    ; ---- TESTE: preenche 0x40..0x54 com 7 valores ----
    add v6,zr,0x0040     ; ptr = 0x40
    add v7,zr,12         ; 12
    stw v7,v6            ; MEM[0x40] = 12
    add v6,v6,2          ; avança

    add v7,zr,0          ; -7
    sub v7,v7,7
    stw v7,v6            ; MEM[0x42] = -7
    add v6,v6,2

    add v7,zr,45         ; 45
    stw v7,v6            ; MEM[0x44] = 45
    add v6,v6,2

    add v7,zr,0          ; 0
    stw v7,v6            ; MEM[0x46] = 0
    add v6,v6,2

    add v7,zr,88         ; 88
    stw v7,v6            ; MEM[0x48] = 88
    add v6,v6,2

    add v7,zr,13         ; 13
    stw v7,v6            ; MEM[0x4A] = 13
    add v6,v6,2

    add v7,zr,0          ; -25
    sub v7,v7,25
    stw v7,v6            ; MEM[0x4C] = -25

    sub v0,v0            ; maior = 0
    add v1,zr,0x0040     ; começa em 0x40
    add v3,zr,0x0082     ; fim exclusivo (0x82)

loop
    ldw v2,v1            ; v2 = valor atual
    sub v4,v4            ; v4 = 0
    tlt v4,v2            ; v4 = 1 se v2 > 0
    beq v4,zr,advance    ; se não positivo, pula

    sub v5,v5            ; v5 = 0
    add v5,v0            ; v5 = maior
    tlt v5,v2            ; v5 = 1 se maior < v2
    beq v5,zr,advance    ; se não maior, pula

    sub v0,v0            ; maior = v2
    add v0,v2

advance
    add v1,v1,2          ; próximo endereço
    bne v1,v3,loop       ; repete até 0x80

end
    stw v0,zr,0x0090     ; grava maior em 0x90
    hlt                  ; fim

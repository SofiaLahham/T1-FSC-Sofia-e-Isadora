; OBS: digite 3 números quando pedir (int?)

main
    add v0,zr,0x0060     ; onde guardar
    add v2,zr,3          ; contador 3

input_loop
    ldw v3,zr,0xf010     ; lê número
    stw v3,v0            ; salva
    add v0,v0,2          ; próximo
    sub v2,v2,1
    bne v2,zr,input_loop

    add v0,zr,0x0060     ; i começa
    add v2,zr,0x0072     ; fim
    add v7,zr,10         ; alvo = 10

for_i
    beq v0,v2,end

    sub v1,v1
    add v1,v0
    add v1,v1,2          ; j = i+2

for_j
    beq v1,v2,next_i

    ldw v3,v0            ; val i
    ldw v4,v1            ; val j

    sub v5,v5
    add v5,v3
    add v5,v4            ; soma

    beq v5,v7,found

    add v1,v1,2
    beq zr,zr,for_j

next_i
    add v0,v0,2
    beq zr,zr,for_i

found
    stw v0,zr,0x0080     ; pos i
    stw v1,zr,0x0090     ; pos j
    hlt

end
    hlt

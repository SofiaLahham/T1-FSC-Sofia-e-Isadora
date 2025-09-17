main
    ldw v0,zr,0x60      ; pega N
    beq v0,zr,ok        ; se N=0, é
    add a0,zr,0x70      ; i início
    add a1,zr,0x70      ; j início
    sub v3,v0,1         ; N-1

adv
    beq v3,zr,cmp       ; já chegou
    add a1,a1,1         ; j++
    sub v3,v3,1         ; N-1--
    beq zr,zr,adv       ; repete

cmp
    bge a0,a1,ok        ; cruzou, é
    ldb v1,a0           ; letra esq
    ldb v2,a1           ; letra dir
    bne v1,v2,no        ; se dif, não
    add a0,a0,1         ; i++
    sub a1,a1,1         ; j--
    beq zr,zr,cmp       ; repete

ok
    add v0,zr,83        ; 'S'
    stw v0,zr,0xF006    ; mostra
    hlt                 ; fim

no
    add v0,zr,78        ; 'N'
    stw v0,zr,0xF006    ; mostra
    hlt                 ; fim

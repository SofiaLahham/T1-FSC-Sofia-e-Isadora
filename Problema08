main
    add v0,zr,nome     ; v0 aponta p/ nome

loop
    ldb v1,v0          ; pega letra atual
    beq v1,zr,fim      ; se for 0, para
    stw v1,zr,0xf006   ; mostra letra
    add v0,v0,1        ; vai p/ próxima letra
    beq zr,zr,loop     ; volta p/ repetir

fim
    hlt                ; fim

nome
    "SOFIA E ISADORA"

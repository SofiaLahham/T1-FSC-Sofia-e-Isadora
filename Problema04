; OBS: digite 5 números quando pedir (int?)

main
    add v0,zr,0x0040     ; onde guardar
    add v2,zr,0x004a     ; fim

input_loop
    ldw v3,zr,0xf010     ; lê número
    stw v3,v0            ; salva
    add v0,v0,2          ; próximo
    bne v0,v2,input_loop ; até 5

    add v0,zr,0x0040     ; origem
    add v1,zr,0x0090     ; destino
    add v2,zr,0x004a     ; fim

loop
    ldw v3,v0            ; pega
    and v4,v3,1          ; testa ímpar
    bne v4,zr,ok         ; se sim, pula
    add v3,v3,1          ; se par +1
ok
    stw v3,v1            ; guarda
    add v0,v0,2          ; src++
    add v1,v1,2          ; dst++
    bne v0,v2,loop       ; até 5

end
    hlt                  ; fim

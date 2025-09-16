main
    ldw a2,zr,0x58      ; N
    add a0,zr,0x60      ; ptr
    add v0,zr,0         ; A
    add v1,zr,0         ; E
    add v2,zr,0         ; I
    add v3,zr,0         ; O
    add v4,zr,0         ; U

loop
    beq a2,zr,done
    ldb a1,a0
    add a0,a0,1
    sub a2,a2,1

    add r8,zr,65        ; 'A'
    bne a1,r8,a_low
    add v0,v0,1
    beq zr,zr,loop
a_low
    add r8,zr,97        ; 'a'
    bne a1,r8,e_up
    add v0,v0,1
    beq zr,zr,loop

e_up
    add r8,zr,69        ; 'E'
    bne a1,r8,e_low
    add v1,v1,1
    beq zr,zr,loop
e_low
    add r8,zr,101       ; 'e'
    bne a1,r8,i_up
    add v1,v1,1
    beq zr,zr,loop

i_up
    add r8,zr,73        ; 'I'
    bne a1,r8,i_low
    add v2,v2,1
    beq zr,zr,loop
i_low
    add r8,zr,105       ; 'i'
    bne a1,r8,o_up
    add v2,v2,1
    beq zr,zr,loop

o_up
    add r8,zr,79        ; 'O'
    bne a1,r8,o_low
    add v3,v3,1
    beq zr,zr,loop
o_low
    add r8,zr,111       ; 'o'
    bne a1,r8,u_up
    add v3,v3,1
    beq zr,zr,loop

u_up
    add r8,zr,85        ; 'U'
    bne a1,r8,u_low
    add v4,v4,1
    beq zr,zr,loop
u_low
    add r8,zr,117       ; 'u'
    bne a1,r8,loop
    add v4,v4,1
    beq zr,zr,loop

done
    stw v0,zr,0x40
    stw v1,zr,0x44
    stw v2,zr,0x48
    stw v3,zr,0x50
    stw v4,zr,0x52
    hlt

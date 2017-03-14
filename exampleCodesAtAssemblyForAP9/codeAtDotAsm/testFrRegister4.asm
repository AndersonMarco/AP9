    loadn r0,#1000              ;FR=0000000000000000
    loadn r1,#20000
    shiftl0 r1,#5               ;FR=0000000000000000
    shiftr0 r0,#14              ;FR=0000000000000000
    loadn r0,#100               
    loadn r1,#20000
    shiftr1 r0,#15
main:    
    jmp main

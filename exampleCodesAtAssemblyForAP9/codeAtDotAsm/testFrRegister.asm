    loadn r0,#1000              ;FR=0000000000000000
    loadn r1,#20000
    mul r2,r1,r0                ;FR=0000010000000000
    loadn r4, #1000
    loadn r5, #0
    loadn r6, #0
    sub r2,r4,r0                ;FR=0001010000000000 
    add r2,r1,r0                ;FR=0000010000000000
    loadn r0,#32766
    loadn r1,#6 
    add r2,r1,r0                ;FR=0000010000000000
    loadn r0,#2
    loadn r1,#6
    sub r2,r0,r1                ;FR=0000010001000000
    loadn r0,#65534 
    loadn r1,#6
    add r2,r0,r1                ;FR=0000110001000000
    sub r2,r1,r0                ;FR=0000110001000000, r2=0
    loadn r0,#45
    loadn r1,#60
    addc r2,r0,r1               ;FR=0000010001000000
    loadn r0,#65534 
    loadn r1,#6
    add r2,r0,r1                ;FR=0000110001000000, r2=5
    loadn r0,#45
    loadn r1,#60
    mul r2,r1,r0                ;FR=0000100001000000
    add r2,r5,r6                ;FR=0001000001000000
    div r2,r1,r0                ;FR=0000000001000000
    loadn r0,#32766
    loadn r1,#6
    mul r2,r1,r0                ;FR=0000010001000000
    loadn r0,#95                
    loadn r1,#60
    div r2,r1,r0                ;FR=0000010001000000
    div r2,r1,r6                ;FR=0001011001000000, r2=0
    add r2,r1,r0                ;FR=0000011001000000
    and r2,r5,r6                ;FR=0001011001000000
    loadn r0,#65534     
    loadn r1,#6
    add r2,r0,r1                ;FR=0000111001000000
    and r2,r5,r6                ;FR=0001111001000000
    loadn r1,#65535
    not r2,r1                   ;FR=0000111001000000
    loadn r1,#0
    not r2,r1                   ;FR=0000111001000000
    loadn r0,#0     
    loadn r1,#0
    add r2,r0,r1                ;FR=0001011001000000
    loadn r1,#65535
    loadn r0,#0    
    not r2,r1                   ;FR=0000011001000000
    cmp r1,r0                   ;FR=1000011001000000
    loadn r1,#0
    loadn r0,#0
    cmp r1,r0                   ;FR=0010011001000000
    loadn r0,#0
    loadn r1,#1
    cmp r0,r1                   ;FR=0100011001000000     
main:    
    jmp main
    
    
    
    



    

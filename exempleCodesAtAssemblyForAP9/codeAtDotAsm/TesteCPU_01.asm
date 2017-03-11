    loadn r0, #43520
    loadn r1, #30464
    mov  r4,r1
    outchar r4,r0
laco:
    jmp laco
    

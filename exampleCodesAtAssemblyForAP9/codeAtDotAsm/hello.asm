loadn r0, #'o'
loadn r1, #257
outchar r0,r1
call __print_l__    
breakp
__print_l__:
    loadn r0, #'l'
    loadn r1, #258
    outchar r0,r1
    rts
    

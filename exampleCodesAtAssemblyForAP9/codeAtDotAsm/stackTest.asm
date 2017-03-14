    jmp main
fun1:
    pop r1
    rts
    
main:
    loadn r0,#10
    push r0
    loadn r0,#20
    push r0
    call fun1
end:
    jmp end

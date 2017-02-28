;---------- BEGIN - PRE PROCESSAMENTO ----------
; variavel: cor_branca alocada em 28000 com 1 bytes

; endereco temporario(27999) recebe o conteudo: 0
loadn r0, #0
store 27999, r0

load r0, 27999
store 28000, r0
; variavel: cor_amarela alocada em 27999 com 1 bytes

; endereco temporario(27998) recebe o conteudo: 2816
loadn r0, #2816
store 27998, r0

load r0, 27998
store 27999, r0
; variavel: cor_azul alocada em 27998 com 1 bytes

; endereco temporario(27997) recebe o conteudo: 3072
loadn r0, #3072
store 27997, r0

load r0, 27997
store 27998, r0
; variavel: caracterPacmanEsqAberto alocada em 27997 com 1 bytes

; endereco temporario(27996) recebe o conteudo: 1
loadn r0, #1
store 27996, r0

load r0, 27996
store 27997, r0
; variavel: caracterPacmanEsqFechado alocada em 27996 com 1 bytes

; endereco temporario(27995) recebe o conteudo: 2
loadn r0, #2
store 27995, r0

load r0, 27995
store 27996, r0
; variavel: caracterPacmanDirAberto alocada em 27995 com 1 bytes

; endereco temporario(27994) recebe o conteudo: 3
loadn r0, #3
store 27994, r0

load r0, 27994
store 27995, r0
; variavel: caracterPacmanDirFechado alocada em 27994 com 1 bytes

; endereco temporario(27993) recebe o conteudo: 4
loadn r0, #4
store 27993, r0

load r0, 27993
store 27994, r0
; variavel: caracterPacmanCimaAberto alocada em 27993 com 1 bytes

; endereco temporario(27992) recebe o conteudo: 5
loadn r0, #5
store 27992, r0

load r0, 27992
store 27993, r0
; variavel: caracterPacmanCimaFechado alocada em 27992 com 1 bytes

; endereco temporario(27991) recebe o conteudo: 6
loadn r0, #6
store 27991, r0

load r0, 27991
store 27992, r0
; variavel: caracterPacmanBaixoAberto alocada em 27991 com 1 bytes

; endereco temporario(27990) recebe o conteudo: 7
loadn r0, #7
store 27990, r0

load r0, 27990
store 27991, r0
; variavel: caracterPacmanBaixoFechado alocada em 27990 com 1 bytes

; endereco temporario(27989) recebe o conteudo: 8
loadn r0, #8
store 27989, r0

load r0, 27989
store 27990, r0
; variavel: caracterComida alocada em 27989 com 1 bytes

; endereco temporario(27988) recebe o conteudo: 0
loadn r0, #0
store 27988, r0

load r0, 27988
store 27989, r0
; variavel: c alocada em 27988 com 1 bytes

; endereco temporario(27987) recebe o conteudo da variavel: caracterPacmanDirAberto(27995)
load r0, 27995
store 27987, r0

load r0, 27987
store 27988, r0
; variavel: direcao alocada em 27987 com 1 bytes

; endereco temporario(27986) recebe o conteudo: 1
loadn r0, #1
store 27986, r0

load r0, 27986
store 27987, r0
; variavel: estado alocada em 27986 com 1 bytes

; endereco temporario(27985) recebe o conteudo: 0
loadn r0, #0
store 27985, r0

load r0, 27985
store 27986, r0
; variavel: pos_x alocada em 27985 com 1 bytes

; endereco temporario(27984) recebe o conteudo: 1
loadn r0, #1
store 27984, r0

load r0, 27984
store 27985, r0
; variavel: pos_y alocada em 27984 com 1 bytes

; endereco temporario(27983) recebe o conteudo: 1
loadn r0, #1
store 27983, r0

load r0, 27983
store 27984, r0
; @(152) INSTRUCAO - while
;---------- END PRE PROCESSAMENTO ----------
;---------- BEGIN ----------
; variavel: cor_branca alocada em 28000

; variavel: cor_amarela alocada em 27999

; variavel: cor_azul alocada em 27998

; variavel: caracterPacmanEsqAberto alocada em 27997

; variavel: caracterPacmanEsqFechado alocada em 27996

; variavel: caracterPacmanDirAberto alocada em 27995

; variavel: caracterPacmanDirFechado alocada em 27994

; variavel: caracterPacmanCimaAberto alocada em 27993

; variavel: caracterPacmanCimaFechado alocada em 27992

; variavel: caracterPacmanBaixoAberto alocada em 27991

; variavel: caracterPacmanBaixoFechado alocada em 27990

; variavel: caracterComida alocada em 27989

; variavel: c alocada em 27988

; variavel: direcao alocada em 27987

; variavel: estado alocada em 27986

; variavel: pos_x alocada em 27985

; variavel: pos_y alocada em 27984

jmp __function_label_main__
__printf__:
loadn r6, #0
__printf_loop__:
loadn r4, #'%'
loadi r1, r2
cmp r1, r4
jeq __side_printf__
cmp r1, r6
jeq __printf_fim__
outchar r1, r0
inc r0
dec r2
jmp __printf_loop__
__printf_fim__:
rts
__side_printf__:
dec r2
loadi r5, r2
loadn r4, #'d'
cmp r5, r4
jeq __printf_d__
loadn r4, #'s'
cmp r5, r4
jeq __printf_s__
loadn r4, #'S'
cmp r5, r4
jeq __printf_S__
loadn r4, #'c'
cmp r5, r4
jeq __printf_c__
outchar r1, r0
inc r0
outchar r5, r0
inc r0
jmp __printf_loop__
__printf_d__:
push r1
loadn r1, #0
dec r2
loadi r5, r2
loadi r5, r5
dec r2
loadn r7, #10
__printf_d_loop__:
div r4, r5, r7
mul r3, r4, r7
sub r3, r5, r3
push r3
inc r1
cmp r4, r6
jeq __printf_d_imprime__
mov r5, r4
jmp __printf_d_loop__
__printf_d_imprime__:
loadn r7, #'0'
pop r4
add r4, r4, r7
outchar r4, r0
inc r0
dec r1
cmp r1, r6
jne __printf_d_imprime__
pop r1
jmp __printf_loop__
__printf_s__:
dec r2
loadi r4, r2
loadi r4, r4
dec r2
__side_printf_volta__:
loadi r5, r4
cmp r5, r6
jeq __printf_loop__
outchar r5, r0
dec r4
inc r0
jmp __side_printf_volta__
__printf_S__:
dec r2
loadi r4, r2
dec r2
__side_printf2_volta__:
loadi r5, r4
cmp r5, r6
jeq __printf_loop__
outchar r5, r0
dec r4
inc r0
jmp __side_printf2_volta__
__printf_c__:
dec r2
loadi r5, r2
loadi r5, r5
outchar r5, r0
dec r2
inc r0
jmp __printf_loop__
__and_routine__:
and r0, r1, r0
loadn r1, #0
cmp r0, r1
jne __true__
jmp __false__
__or_routine__:
or r0, r1, r0
loadn r1, #0
cmp r0, r1
jne __true__
jmp __false__
__equal_routine__:
cmp r0, r1
jne __false__
jmp __true__
__not_equal_routine__:
cmp r0, r1
jne __true__
jmp __false__
__less_routine__:
cmp r0, r1
jle __true__
jmp __false__
__more_routine__:
cmp r0, r1
jgr __true__
jmp __false__
__equal_less_routine__:
cmp r0, r1
jel __true__
jmp __false__
__equal_more_routine__:
cmp r0, r1
jeg __true__
jmp __false__
__true__:
loadn r0, #1
storei r2, r0
rts
__false__:
loadn r0, #0
storei r2, r0
rts
; @(58) INSTRUCAO - ; declarando funcao: resolve_direcao
__function_label_resolve_direcao__:

; endereco temporario(27983) recebe o conteudo da variavel: direcao(27987)
load r0, 27987
store 27983, r0

; endereco temporario(27982) recebe o conteudo: 0
loadn r0, #0
store 27982, r0

; @(60) INSTRUCAO - relacao_binaria
load r0, 27983
load r1, 27982
loadn r2, #27983
call __equal_routine__
load r0, 27983
loadn r1, #0
cmp r0, r1
jeq __exit_if_label1__
jmp __if_label1__
__if_label1__:
; endereco temporario(27983) recebe o conteudo da variavel: c(27988)
load r0, 27988
store 27983, r0

; endereco temporario(27982) recebe o conteudo da variavel: caracterPacmanEsqAberto(27997)
load r0, 27997
store 27982, r0

; assignment salvando no endereco apontado por: endereco temporario(27983) o conteudo de endereco temporario(27982)
load r0, 27982
; valor da stack: 27981
store 27988, r0 ; variavel c recebe o conteudo de r0

jmp __exit_else_label1__
__exit_if_label1__:
; endereco temporario(27983) recebe o conteudo da variavel: direcao(27987)
load r0, 27987
store 27983, r0

; endereco temporario(27982) recebe o conteudo: 1
loadn r0, #1
store 27982, r0

; @(61) INSTRUCAO - relacao_binaria
load r0, 27983
load r1, 27982
loadn r2, #27983
call __equal_routine__
load r0, 27983
loadn r1, #0
cmp r0, r1
jeq __exit_if_label2__
jmp __if_label2__
__if_label2__:
; endereco temporario(27983) recebe o conteudo da variavel: c(27988)
load r0, 27988
store 27983, r0

; endereco temporario(27982) recebe o conteudo da variavel: caracterPacmanDirAberto(27995)
load r0, 27995
store 27982, r0

; assignment salvando no endereco apontado por: endereco temporario(27983) o conteudo de endereco temporario(27982)
load r0, 27982
; valor da stack: 27981
store 27988, r0 ; variavel c recebe o conteudo de r0

jmp __exit_else_label2__
__exit_if_label2__:
; endereco temporario(27983) recebe o conteudo da variavel: direcao(27987)
load r0, 27987
store 27983, r0

; endereco temporario(27982) recebe o conteudo: 2
loadn r0, #2
store 27982, r0

; @(62) INSTRUCAO - relacao_binaria
load r0, 27983
load r1, 27982
loadn r2, #27983
call __equal_routine__
load r0, 27983
loadn r1, #0
cmp r0, r1
jeq __exit_if_label3__
jmp __if_label3__
__if_label3__:
; endereco temporario(27983) recebe o conteudo da variavel: c(27988)
load r0, 27988
store 27983, r0

; endereco temporario(27982) recebe o conteudo da variavel: caracterPacmanCimaAberto(27993)
load r0, 27993
store 27982, r0

; assignment salvando no endereco apontado por: endereco temporario(27983) o conteudo de endereco temporario(27982)
load r0, 27982
; valor da stack: 27981
store 27988, r0 ; variavel c recebe o conteudo de r0

jmp __exit_else_label3__
__exit_if_label3__:
; endereco temporario(27983) recebe o conteudo da variavel: direcao(27987)
load r0, 27987
store 27983, r0

; endereco temporario(27982) recebe o conteudo: 3
loadn r0, #3
store 27982, r0

; @(63) INSTRUCAO - relacao_binaria
load r0, 27983
load r1, 27982
loadn r2, #27983
call __equal_routine__
load r0, 27983
loadn r1, #0
cmp r0, r1
jeq __exit_if_label4__
jmp __if_label4__
__if_label4__:
; endereco temporario(27983) recebe o conteudo da variavel: c(27988)
load r0, 27988
store 27983, r0

; endereco temporario(27982) recebe o conteudo da variavel: caracterPacmanBaixoAberto(27991)
load r0, 27991
store 27982, r0

; assignment salvando no endereco apontado por: endereco temporario(27983) o conteudo de endereco temporario(27982)
load r0, 27982
; valor da stack: 27981
store 27988, r0 ; variavel c recebe o conteudo de r0

__exit_if_label4__:
__exit_else_label3__:
__exit_else_label2__:
__exit_else_label1__:
; endereco temporario(27983) recebe o conteudo da variavel: c(27988)
load r0, 27988
store 27983, r0

; endereco temporario(27982) recebe o conteudo da variavel: estado(27986)
load r0, 27986
store 27982, r0

; assignment salvando no endereco apontado por: endereco temporario(27983) o conteudo de endereco temporario(27982)
load r0, 27982
load r1, 27983
add r0, r1, r0
; valor da stack: 27981
store 27988, r0 ; variavel c recebe o conteudo de r0

; endereco temporario(27983) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 27983, r0

; endereco temporario(27982) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 27982, r0

; endereco temporario(27981) recebe o conteudo da variavel: c(27988)
load r0, 27988
store 27981, r0

; endereco temporario(27980) recebe o conteudo da variavel: cor_amarela(27999)
load r0, 27999
store 27980, r0

; expressao_binaria: 27981 + 27980
load r0, 27981
load r1, 27980
add r2, r0, r1
store 27981, r2

; @(65) INSTRUCAO - ; printf(%c);
loadn r0, #'%'
store 27980, r0
loadn r0, #'c'
store 27979, r0
loadn r0, #27981
store 27978, r0
loadn r0, #0
store 27977, r0
load r0, 27983
load r1, 27982
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #27980
call __printf__
; endereco temporario(27976) recebe o conteudo da variavel: estado(27986)
load r0, 27986
store 27976, r0

; endereco temporario(27975) recebe o conteudo: 1
loadn r0, #1
store 27975, r0

; endereco temporario(27974) recebe o conteudo da variavel: estado(27986)
load r0, 27986
store 27974, r0

; expressao_binaria: 27975 - 27974
load r0, 27975
load r1, 27974
sub r2, r0, r1
store 27975, r2

; assignment salvando no endereco apontado por: endereco temporario(27976) o conteudo de endereco temporario(27975)
load r0, 27975
; valor da stack: 27974
store 27986, r0 ; variavel estado recebe o conteudo de r0

rts
; @(70) INSTRUCAO - ; declarando funcao: main
__function_label_main__:

; variavel: i alocada em 27983 com 1 bytes

; variavel: j alocada em 27982 com 1 bytes

; variavel: mapa alocada em 27981 com 901 bytes

; @(76) INSTRUCAO - acerta o ponteiro da matriz/vetor
loadn r0, #27980
store 27981, r0
loadn r0, #27980
loadn r1, #27950
storei r0, r1
dec r0
loadn r1, #27921
storei r0, r1
dec r0
loadn r1, #27892
storei r0, r1
dec r0
loadn r1, #27863
storei r0, r1
dec r0
loadn r1, #27834
storei r0, r1
dec r0
loadn r1, #27805
storei r0, r1
dec r0
loadn r1, #27776
storei r0, r1
dec r0
loadn r1, #27747
storei r0, r1
dec r0
loadn r1, #27718
storei r0, r1
dec r0
loadn r1, #27689
storei r0, r1
dec r0
loadn r1, #27660
storei r0, r1
dec r0
loadn r1, #27631
storei r0, r1
dec r0
loadn r1, #27602
storei r0, r1
dec r0
loadn r1, #27573
storei r0, r1
dec r0
loadn r1, #27544
storei r0, r1
dec r0
loadn r1, #27515
storei r0, r1
dec r0
loadn r1, #27486
storei r0, r1
dec r0
loadn r1, #27457
storei r0, r1
dec r0
loadn r1, #27428
storei r0, r1
dec r0
loadn r1, #27399
storei r0, r1
dec r0
loadn r1, #27370
storei r0, r1
dec r0
loadn r1, #27341
storei r0, r1
dec r0
loadn r1, #27312
storei r0, r1
dec r0
loadn r1, #27283
storei r0, r1
dec r0
loadn r1, #27254
storei r0, r1
dec r0
loadn r1, #27225
storei r0, r1
dec r0
loadn r1, #27196
storei r0, r1
dec r0
loadn r1, #27167
storei r0, r1
dec r0
loadn r1, #27138
storei r0, r1
dec r0
loadn r1, #27109
storei r0, r1
dec r0

; endereco temporario(27950) recebe o conteudo: #
loadn r0, #'#'
store 27950, r0

; endereco temporario(27949) recebe o conteudo: #
loadn r0, #'#'
store 27949, r0

; endereco temporario(27948) recebe o conteudo: #
loadn r0, #'#'
store 27948, r0

; endereco temporario(27947) recebe o conteudo: #
loadn r0, #'#'
store 27947, r0

; endereco temporario(27946) recebe o conteudo: #
loadn r0, #'#'
store 27946, r0

; endereco temporario(27945) recebe o conteudo: #
loadn r0, #'#'
store 27945, r0

; endereco temporario(27944) recebe o conteudo: #
loadn r0, #'#'
store 27944, r0

; endereco temporario(27943) recebe o conteudo: #
loadn r0, #'#'
store 27943, r0

; endereco temporario(27942) recebe o conteudo: #
loadn r0, #'#'
store 27942, r0

; endereco temporario(27941) recebe o conteudo: #
loadn r0, #'#'
store 27941, r0

; endereco temporario(27940) recebe o conteudo: #
loadn r0, #'#'
store 27940, r0

; endereco temporario(27939) recebe o conteudo: #
loadn r0, #'#'
store 27939, r0

; endereco temporario(27938) recebe o conteudo: #
loadn r0, #'#'
store 27938, r0

; endereco temporario(27937) recebe o conteudo: #
loadn r0, #'#'
store 27937, r0

; endereco temporario(27936) recebe o conteudo: #
loadn r0, #'#'
store 27936, r0

; endereco temporario(27935) recebe o conteudo: #
loadn r0, #'#'
store 27935, r0

; endereco temporario(27934) recebe o conteudo: #
loadn r0, #'#'
store 27934, r0

; endereco temporario(27933) recebe o conteudo: #
loadn r0, #'#'
store 27933, r0

; endereco temporario(27932) recebe o conteudo: #
loadn r0, #'#'
store 27932, r0

; endereco temporario(27931) recebe o conteudo: #
loadn r0, #'#'
store 27931, r0

; endereco temporario(27930) recebe o conteudo: #
loadn r0, #'#'
store 27930, r0

; endereco temporario(27929) recebe o conteudo: #
loadn r0, #'#'
store 27929, r0

; endereco temporario(27928) recebe o conteudo: #
loadn r0, #'#'
store 27928, r0

; endereco temporario(27927) recebe o conteudo: #
loadn r0, #'#'
store 27927, r0

; endereco temporario(27926) recebe o conteudo: #
loadn r0, #'#'
store 27926, r0

; endereco temporario(27925) recebe o conteudo: #
loadn r0, #'#'
store 27925, r0

; endereco temporario(27924) recebe o conteudo: #
loadn r0, #'#'
store 27924, r0

; endereco temporario(27923) recebe o conteudo: #
loadn r0, #'#'
store 27923, r0

; endereco temporario(27922) recebe o conteudo: 0
loadn r0, #0
store 27922, r0

; endereco temporario(27921) recebe o conteudo: #
loadn r0, #'#'
store 27921, r0

; endereco temporario(27920) recebe o conteudo: .
loadn r0, #'.'
store 27920, r0

; endereco temporario(27919) recebe o conteudo: .
loadn r0, #'.'
store 27919, r0

; endereco temporario(27918) recebe o conteudo: .
loadn r0, #'.'
store 27918, r0

; endereco temporario(27917) recebe o conteudo: .
loadn r0, #'.'
store 27917, r0

; endereco temporario(27916) recebe o conteudo: .
loadn r0, #'.'
store 27916, r0

; endereco temporario(27915) recebe o conteudo: .
loadn r0, #'.'
store 27915, r0

; endereco temporario(27914) recebe o conteudo: .
loadn r0, #'.'
store 27914, r0

; endereco temporario(27913) recebe o conteudo: .
loadn r0, #'.'
store 27913, r0

; endereco temporario(27912) recebe o conteudo: .
loadn r0, #'.'
store 27912, r0

; endereco temporario(27911) recebe o conteudo: .
loadn r0, #'.'
store 27911, r0

; endereco temporario(27910) recebe o conteudo: .
loadn r0, #'.'
store 27910, r0

; endereco temporario(27909) recebe o conteudo: .
loadn r0, #'.'
store 27909, r0

; endereco temporario(27908) recebe o conteudo: #
loadn r0, #'#'
store 27908, r0

; endereco temporario(27907) recebe o conteudo: #
loadn r0, #'#'
store 27907, r0

; endereco temporario(27906) recebe o conteudo: .
loadn r0, #'.'
store 27906, r0

; endereco temporario(27905) recebe o conteudo: .
loadn r0, #'.'
store 27905, r0

; endereco temporario(27904) recebe o conteudo: .
loadn r0, #'.'
store 27904, r0

; endereco temporario(27903) recebe o conteudo: .
loadn r0, #'.'
store 27903, r0

; endereco temporario(27902) recebe o conteudo: .
loadn r0, #'.'
store 27902, r0

; endereco temporario(27901) recebe o conteudo: .
loadn r0, #'.'
store 27901, r0

; endereco temporario(27900) recebe o conteudo: .
loadn r0, #'.'
store 27900, r0

; endereco temporario(27899) recebe o conteudo: .
loadn r0, #'.'
store 27899, r0

; endereco temporario(27898) recebe o conteudo: .
loadn r0, #'.'
store 27898, r0

; endereco temporario(27897) recebe o conteudo: .
loadn r0, #'.'
store 27897, r0

; endereco temporario(27896) recebe o conteudo: .
loadn r0, #'.'
store 27896, r0

; endereco temporario(27895) recebe o conteudo: .
loadn r0, #'.'
store 27895, r0

; endereco temporario(27894) recebe o conteudo: #
loadn r0, #'#'
store 27894, r0

; endereco temporario(27893) recebe o conteudo: 0
loadn r0, #0
store 27893, r0

; endereco temporario(27892) recebe o conteudo: #
loadn r0, #'#'
store 27892, r0

; endereco temporario(27891) recebe o conteudo: .
loadn r0, #'.'
store 27891, r0

; endereco temporario(27890) recebe o conteudo: #
loadn r0, #'#'
store 27890, r0

; endereco temporario(27889) recebe o conteudo: #
loadn r0, #'#'
store 27889, r0

; endereco temporario(27888) recebe o conteudo: #
loadn r0, #'#'
store 27888, r0

; endereco temporario(27887) recebe o conteudo: #
loadn r0, #'#'
store 27887, r0

; endereco temporario(27886) recebe o conteudo: .
loadn r0, #'.'
store 27886, r0

; endereco temporario(27885) recebe o conteudo: #
loadn r0, #'#'
store 27885, r0

; endereco temporario(27884) recebe o conteudo: #
loadn r0, #'#'
store 27884, r0

; endereco temporario(27883) recebe o conteudo: #
loadn r0, #'#'
store 27883, r0

; endereco temporario(27882) recebe o conteudo: #
loadn r0, #'#'
store 27882, r0

; endereco temporario(27881) recebe o conteudo: #
loadn r0, #'#'
store 27881, r0

; endereco temporario(27880) recebe o conteudo: .
loadn r0, #'.'
store 27880, r0

; endereco temporario(27879) recebe o conteudo: #
loadn r0, #'#'
store 27879, r0

; endereco temporario(27878) recebe o conteudo: #
loadn r0, #'#'
store 27878, r0

; endereco temporario(27877) recebe o conteudo: .
loadn r0, #'.'
store 27877, r0

; endereco temporario(27876) recebe o conteudo: #
loadn r0, #'#'
store 27876, r0

; endereco temporario(27875) recebe o conteudo: #
loadn r0, #'#'
store 27875, r0

; endereco temporario(27874) recebe o conteudo: #
loadn r0, #'#'
store 27874, r0

; endereco temporario(27873) recebe o conteudo: #
loadn r0, #'#'
store 27873, r0

; endereco temporario(27872) recebe o conteudo: #
loadn r0, #'#'
store 27872, r0

; endereco temporario(27871) recebe o conteudo: .
loadn r0, #'.'
store 27871, r0

; endereco temporario(27870) recebe o conteudo: #
loadn r0, #'#'
store 27870, r0

; endereco temporario(27869) recebe o conteudo: #
loadn r0, #'#'
store 27869, r0

; endereco temporario(27868) recebe o conteudo: #
loadn r0, #'#'
store 27868, r0

; endereco temporario(27867) recebe o conteudo: #
loadn r0, #'#'
store 27867, r0

; endereco temporario(27866) recebe o conteudo: .
loadn r0, #'.'
store 27866, r0

; endereco temporario(27865) recebe o conteudo: #
loadn r0, #'#'
store 27865, r0

; endereco temporario(27864) recebe o conteudo: 0
loadn r0, #0
store 27864, r0

; endereco temporario(27863) recebe o conteudo: #
loadn r0, #'#'
store 27863, r0

; endereco temporario(27862) recebe o conteudo: .
loadn r0, #'.'
store 27862, r0

; endereco temporario(27861) recebe o conteudo: #
loadn r0, #'#'
store 27861, r0

; endereco temporario(27860) recebe o conteudo: #
loadn r0, #'#'
store 27860, r0

; endereco temporario(27859) recebe o conteudo: #
loadn r0, #'#'
store 27859, r0

; endereco temporario(27858) recebe o conteudo: #
loadn r0, #'#'
store 27858, r0

; endereco temporario(27857) recebe o conteudo: .
loadn r0, #'.'
store 27857, r0

; endereco temporario(27856) recebe o conteudo: #
loadn r0, #'#'
store 27856, r0

; endereco temporario(27855) recebe o conteudo: #
loadn r0, #'#'
store 27855, r0

; endereco temporario(27854) recebe o conteudo: #
loadn r0, #'#'
store 27854, r0

; endereco temporario(27853) recebe o conteudo: #
loadn r0, #'#'
store 27853, r0

; endereco temporario(27852) recebe o conteudo: #
loadn r0, #'#'
store 27852, r0

; endereco temporario(27851) recebe o conteudo: .
loadn r0, #'.'
store 27851, r0

; endereco temporario(27850) recebe o conteudo: #
loadn r0, #'#'
store 27850, r0

; endereco temporario(27849) recebe o conteudo: #
loadn r0, #'#'
store 27849, r0

; endereco temporario(27848) recebe o conteudo: .
loadn r0, #'.'
store 27848, r0

; endereco temporario(27847) recebe o conteudo: #
loadn r0, #'#'
store 27847, r0

; endereco temporario(27846) recebe o conteudo: #
loadn r0, #'#'
store 27846, r0

; endereco temporario(27845) recebe o conteudo: #
loadn r0, #'#'
store 27845, r0

; endereco temporario(27844) recebe o conteudo: #
loadn r0, #'#'
store 27844, r0

; endereco temporario(27843) recebe o conteudo: #
loadn r0, #'#'
store 27843, r0

; endereco temporario(27842) recebe o conteudo: .
loadn r0, #'.'
store 27842, r0

; endereco temporario(27841) recebe o conteudo: #
loadn r0, #'#'
store 27841, r0

; endereco temporario(27840) recebe o conteudo: #
loadn r0, #'#'
store 27840, r0

; endereco temporario(27839) recebe o conteudo: #
loadn r0, #'#'
store 27839, r0

; endereco temporario(27838) recebe o conteudo: #
loadn r0, #'#'
store 27838, r0

; endereco temporario(27837) recebe o conteudo: .
loadn r0, #'.'
store 27837, r0

; endereco temporario(27836) recebe o conteudo: #
loadn r0, #'#'
store 27836, r0

; endereco temporario(27835) recebe o conteudo: 0
loadn r0, #0
store 27835, r0

; endereco temporario(27834) recebe o conteudo: #
loadn r0, #'#'
store 27834, r0

; endereco temporario(27833) recebe o conteudo: .
loadn r0, #'.'
store 27833, r0

; endereco temporario(27832) recebe o conteudo: #
loadn r0, #'#'
store 27832, r0

; endereco temporario(27831) recebe o conteudo: #
loadn r0, #'#'
store 27831, r0

; endereco temporario(27830) recebe o conteudo: #
loadn r0, #'#'
store 27830, r0

; endereco temporario(27829) recebe o conteudo: #
loadn r0, #'#'
store 27829, r0

; endereco temporario(27828) recebe o conteudo: .
loadn r0, #'.'
store 27828, r0

; endereco temporario(27827) recebe o conteudo: #
loadn r0, #'#'
store 27827, r0

; endereco temporario(27826) recebe o conteudo: #
loadn r0, #'#'
store 27826, r0

; endereco temporario(27825) recebe o conteudo: #
loadn r0, #'#'
store 27825, r0

; endereco temporario(27824) recebe o conteudo: #
loadn r0, #'#'
store 27824, r0

; endereco temporario(27823) recebe o conteudo: #
loadn r0, #'#'
store 27823, r0

; endereco temporario(27822) recebe o conteudo: .
loadn r0, #'.'
store 27822, r0

; endereco temporario(27821) recebe o conteudo: #
loadn r0, #'#'
store 27821, r0

; endereco temporario(27820) recebe o conteudo: #
loadn r0, #'#'
store 27820, r0

; endereco temporario(27819) recebe o conteudo: .
loadn r0, #'.'
store 27819, r0

; endereco temporario(27818) recebe o conteudo: #
loadn r0, #'#'
store 27818, r0

; endereco temporario(27817) recebe o conteudo: #
loadn r0, #'#'
store 27817, r0

; endereco temporario(27816) recebe o conteudo: #
loadn r0, #'#'
store 27816, r0

; endereco temporario(27815) recebe o conteudo: #
loadn r0, #'#'
store 27815, r0

; endereco temporario(27814) recebe o conteudo: #
loadn r0, #'#'
store 27814, r0

; endereco temporario(27813) recebe o conteudo: .
loadn r0, #'.'
store 27813, r0

; endereco temporario(27812) recebe o conteudo: #
loadn r0, #'#'
store 27812, r0

; endereco temporario(27811) recebe o conteudo: #
loadn r0, #'#'
store 27811, r0

; endereco temporario(27810) recebe o conteudo: #
loadn r0, #'#'
store 27810, r0

; endereco temporario(27809) recebe o conteudo: #
loadn r0, #'#'
store 27809, r0

; endereco temporario(27808) recebe o conteudo: .
loadn r0, #'.'
store 27808, r0

; endereco temporario(27807) recebe o conteudo: #
loadn r0, #'#'
store 27807, r0

; endereco temporario(27806) recebe o conteudo: 0
loadn r0, #0
store 27806, r0

; endereco temporario(27805) recebe o conteudo: #
loadn r0, #'#'
store 27805, r0

; endereco temporario(27804) recebe o conteudo: .
loadn r0, #'.'
store 27804, r0

; endereco temporario(27803) recebe o conteudo: .
loadn r0, #'.'
store 27803, r0

; endereco temporario(27802) recebe o conteudo: .
loadn r0, #'.'
store 27802, r0

; endereco temporario(27801) recebe o conteudo: .
loadn r0, #'.'
store 27801, r0

; endereco temporario(27800) recebe o conteudo: .
loadn r0, #'.'
store 27800, r0

; endereco temporario(27799) recebe o conteudo: .
loadn r0, #'.'
store 27799, r0

; endereco temporario(27798) recebe o conteudo: .
loadn r0, #'.'
store 27798, r0

; endereco temporario(27797) recebe o conteudo: .
loadn r0, #'.'
store 27797, r0

; endereco temporario(27796) recebe o conteudo: .
loadn r0, #'.'
store 27796, r0

; endereco temporario(27795) recebe o conteudo: .
loadn r0, #'.'
store 27795, r0

; endereco temporario(27794) recebe o conteudo: .
loadn r0, #'.'
store 27794, r0

; endereco temporario(27793) recebe o conteudo: .
loadn r0, #'.'
store 27793, r0

; endereco temporario(27792) recebe o conteudo: .
loadn r0, #'.'
store 27792, r0

; endereco temporario(27791) recebe o conteudo: .
loadn r0, #'.'
store 27791, r0

; endereco temporario(27790) recebe o conteudo: .
loadn r0, #'.'
store 27790, r0

; endereco temporario(27789) recebe o conteudo: .
loadn r0, #'.'
store 27789, r0

; endereco temporario(27788) recebe o conteudo: .
loadn r0, #'.'
store 27788, r0

; endereco temporario(27787) recebe o conteudo: .
loadn r0, #'.'
store 27787, r0

; endereco temporario(27786) recebe o conteudo: .
loadn r0, #'.'
store 27786, r0

; endereco temporario(27785) recebe o conteudo: .
loadn r0, #'.'
store 27785, r0

; endereco temporario(27784) recebe o conteudo: .
loadn r0, #'.'
store 27784, r0

; endereco temporario(27783) recebe o conteudo: .
loadn r0, #'.'
store 27783, r0

; endereco temporario(27782) recebe o conteudo: .
loadn r0, #'.'
store 27782, r0

; endereco temporario(27781) recebe o conteudo: .
loadn r0, #'.'
store 27781, r0

; endereco temporario(27780) recebe o conteudo: .
loadn r0, #'.'
store 27780, r0

; endereco temporario(27779) recebe o conteudo: .
loadn r0, #'.'
store 27779, r0

; endereco temporario(27778) recebe o conteudo: #
loadn r0, #'#'
store 27778, r0

; endereco temporario(27777) recebe o conteudo: 0
loadn r0, #0
store 27777, r0

; endereco temporario(27776) recebe o conteudo: #
loadn r0, #'#'
store 27776, r0

; endereco temporario(27775) recebe o conteudo: .
loadn r0, #'.'
store 27775, r0

; endereco temporario(27774) recebe o conteudo: #
loadn r0, #'#'
store 27774, r0

; endereco temporario(27773) recebe o conteudo: #
loadn r0, #'#'
store 27773, r0

; endereco temporario(27772) recebe o conteudo: #
loadn r0, #'#'
store 27772, r0

; endereco temporario(27771) recebe o conteudo: #
loadn r0, #'#'
store 27771, r0

; endereco temporario(27770) recebe o conteudo: .
loadn r0, #'.'
store 27770, r0

; endereco temporario(27769) recebe o conteudo: #
loadn r0, #'#'
store 27769, r0

; endereco temporario(27768) recebe o conteudo: #
loadn r0, #'#'
store 27768, r0

; endereco temporario(27767) recebe o conteudo: .
loadn r0, #'.'
store 27767, r0

; endereco temporario(27766) recebe o conteudo: #
loadn r0, #'#'
store 27766, r0

; endereco temporario(27765) recebe o conteudo: #
loadn r0, #'#'
store 27765, r0

; endereco temporario(27764) recebe o conteudo: #
loadn r0, #'#'
store 27764, r0

; endereco temporario(27763) recebe o conteudo: #
loadn r0, #'#'
store 27763, r0

; endereco temporario(27762) recebe o conteudo: #
loadn r0, #'#'
store 27762, r0

; endereco temporario(27761) recebe o conteudo: #
loadn r0, #'#'
store 27761, r0

; endereco temporario(27760) recebe o conteudo: #
loadn r0, #'#'
store 27760, r0

; endereco temporario(27759) recebe o conteudo: #
loadn r0, #'#'
store 27759, r0

; endereco temporario(27758) recebe o conteudo: .
loadn r0, #'.'
store 27758, r0

; endereco temporario(27757) recebe o conteudo: #
loadn r0, #'#'
store 27757, r0

; endereco temporario(27756) recebe o conteudo: #
loadn r0, #'#'
store 27756, r0

; endereco temporario(27755) recebe o conteudo: .
loadn r0, #'.'
store 27755, r0

; endereco temporario(27754) recebe o conteudo: #
loadn r0, #'#'
store 27754, r0

; endereco temporario(27753) recebe o conteudo: #
loadn r0, #'#'
store 27753, r0

; endereco temporario(27752) recebe o conteudo: #
loadn r0, #'#'
store 27752, r0

; endereco temporario(27751) recebe o conteudo: #
loadn r0, #'#'
store 27751, r0

; endereco temporario(27750) recebe o conteudo: .
loadn r0, #'.'
store 27750, r0

; endereco temporario(27749) recebe o conteudo: #
loadn r0, #'#'
store 27749, r0

; endereco temporario(27748) recebe o conteudo: 0
loadn r0, #0
store 27748, r0

; endereco temporario(27747) recebe o conteudo: #
loadn r0, #'#'
store 27747, r0

; endereco temporario(27746) recebe o conteudo: .
loadn r0, #'.'
store 27746, r0

; endereco temporario(27745) recebe o conteudo: #
loadn r0, #'#'
store 27745, r0

; endereco temporario(27744) recebe o conteudo: #
loadn r0, #'#'
store 27744, r0

; endereco temporario(27743) recebe o conteudo: #
loadn r0, #'#'
store 27743, r0

; endereco temporario(27742) recebe o conteudo: #
loadn r0, #'#'
store 27742, r0

; endereco temporario(27741) recebe o conteudo: .
loadn r0, #'.'
store 27741, r0

; endereco temporario(27740) recebe o conteudo: #
loadn r0, #'#'
store 27740, r0

; endereco temporario(27739) recebe o conteudo: #
loadn r0, #'#'
store 27739, r0

; endereco temporario(27738) recebe o conteudo: .
loadn r0, #'.'
store 27738, r0

; endereco temporario(27737) recebe o conteudo: #
loadn r0, #'#'
store 27737, r0

; endereco temporario(27736) recebe o conteudo: #
loadn r0, #'#'
store 27736, r0

; endereco temporario(27735) recebe o conteudo: #
loadn r0, #'#'
store 27735, r0

; endereco temporario(27734) recebe o conteudo: #
loadn r0, #'#'
store 27734, r0

; endereco temporario(27733) recebe o conteudo: #
loadn r0, #'#'
store 27733, r0

; endereco temporario(27732) recebe o conteudo: #
loadn r0, #'#'
store 27732, r0

; endereco temporario(27731) recebe o conteudo: #
loadn r0, #'#'
store 27731, r0

; endereco temporario(27730) recebe o conteudo: #
loadn r0, #'#'
store 27730, r0

; endereco temporario(27729) recebe o conteudo: .
loadn r0, #'.'
store 27729, r0

; endereco temporario(27728) recebe o conteudo: #
loadn r0, #'#'
store 27728, r0

; endereco temporario(27727) recebe o conteudo: #
loadn r0, #'#'
store 27727, r0

; endereco temporario(27726) recebe o conteudo: .
loadn r0, #'.'
store 27726, r0

; endereco temporario(27725) recebe o conteudo: #
loadn r0, #'#'
store 27725, r0

; endereco temporario(27724) recebe o conteudo: #
loadn r0, #'#'
store 27724, r0

; endereco temporario(27723) recebe o conteudo: #
loadn r0, #'#'
store 27723, r0

; endereco temporario(27722) recebe o conteudo: #
loadn r0, #'#'
store 27722, r0

; endereco temporario(27721) recebe o conteudo: .
loadn r0, #'.'
store 27721, r0

; endereco temporario(27720) recebe o conteudo: #
loadn r0, #'#'
store 27720, r0

; endereco temporario(27719) recebe o conteudo: 0
loadn r0, #0
store 27719, r0

; endereco temporario(27718) recebe o conteudo: #
loadn r0, #'#'
store 27718, r0

; endereco temporario(27717) recebe o conteudo: .
loadn r0, #'.'
store 27717, r0

; endereco temporario(27716) recebe o conteudo: .
loadn r0, #'.'
store 27716, r0

; endereco temporario(27715) recebe o conteudo: .
loadn r0, #'.'
store 27715, r0

; endereco temporario(27714) recebe o conteudo: .
loadn r0, #'.'
store 27714, r0

; endereco temporario(27713) recebe o conteudo: .
loadn r0, #'.'
store 27713, r0

; endereco temporario(27712) recebe o conteudo: .
loadn r0, #'.'
store 27712, r0

; endereco temporario(27711) recebe o conteudo: #
loadn r0, #'#'
store 27711, r0

; endereco temporario(27710) recebe o conteudo: #
loadn r0, #'#'
store 27710, r0

; endereco temporario(27709) recebe o conteudo: .
loadn r0, #'.'
store 27709, r0

; endereco temporario(27708) recebe o conteudo: .
loadn r0, #'.'
store 27708, r0

; endereco temporario(27707) recebe o conteudo: .
loadn r0, #'.'
store 27707, r0

; endereco temporario(27706) recebe o conteudo: .
loadn r0, #'.'
store 27706, r0

; endereco temporario(27705) recebe o conteudo: #
loadn r0, #'#'
store 27705, r0

; endereco temporario(27704) recebe o conteudo: #
loadn r0, #'#'
store 27704, r0

; endereco temporario(27703) recebe o conteudo: .
loadn r0, #'.'
store 27703, r0

; endereco temporario(27702) recebe o conteudo: .
loadn r0, #'.'
store 27702, r0

; endereco temporario(27701) recebe o conteudo: .
loadn r0, #'.'
store 27701, r0

; endereco temporario(27700) recebe o conteudo: .
loadn r0, #'.'
store 27700, r0

; endereco temporario(27699) recebe o conteudo: #
loadn r0, #'#'
store 27699, r0

; endereco temporario(27698) recebe o conteudo: #
loadn r0, #'#'
store 27698, r0

; endereco temporario(27697) recebe o conteudo: .
loadn r0, #'.'
store 27697, r0

; endereco temporario(27696) recebe o conteudo: .
loadn r0, #'.'
store 27696, r0

; endereco temporario(27695) recebe o conteudo: .
loadn r0, #'.'
store 27695, r0

; endereco temporario(27694) recebe o conteudo: .
loadn r0, #'.'
store 27694, r0

; endereco temporario(27693) recebe o conteudo: .
loadn r0, #'.'
store 27693, r0

; endereco temporario(27692) recebe o conteudo: .
loadn r0, #'.'
store 27692, r0

; endereco temporario(27691) recebe o conteudo: #
loadn r0, #'#'
store 27691, r0

; endereco temporario(27690) recebe o conteudo: 0
loadn r0, #0
store 27690, r0

; endereco temporario(27689) recebe o conteudo: #
loadn r0, #'#'
store 27689, r0

; endereco temporario(27688) recebe o conteudo: #
loadn r0, #'#'
store 27688, r0

; endereco temporario(27687) recebe o conteudo: #
loadn r0, #'#'
store 27687, r0

; endereco temporario(27686) recebe o conteudo: #
loadn r0, #'#'
store 27686, r0

; endereco temporario(27685) recebe o conteudo: #
loadn r0, #'#'
store 27685, r0

; endereco temporario(27684) recebe o conteudo: #
loadn r0, #'#'
store 27684, r0

; endereco temporario(27683) recebe o conteudo: .
loadn r0, #'.'
store 27683, r0

; endereco temporario(27682) recebe o conteudo: #
loadn r0, #'#'
store 27682, r0

; endereco temporario(27681) recebe o conteudo: #
loadn r0, #'#'
store 27681, r0

; endereco temporario(27680) recebe o conteudo: #
loadn r0, #'#'
store 27680, r0

; endereco temporario(27679) recebe o conteudo: #
loadn r0, #'#'
store 27679, r0

; endereco temporario(27678) recebe o conteudo: #
loadn r0, #'#'
store 27678, r0

; endereco temporario(27677) recebe o conteudo:  
loadn r0, #' '
store 27677, r0

; endereco temporario(27676) recebe o conteudo: #
loadn r0, #'#'
store 27676, r0

; endereco temporario(27675) recebe o conteudo: #
loadn r0, #'#'
store 27675, r0

; endereco temporario(27674) recebe o conteudo:  
loadn r0, #' '
store 27674, r0

; endereco temporario(27673) recebe o conteudo: #
loadn r0, #'#'
store 27673, r0

; endereco temporario(27672) recebe o conteudo: #
loadn r0, #'#'
store 27672, r0

; endereco temporario(27671) recebe o conteudo: #
loadn r0, #'#'
store 27671, r0

; endereco temporario(27670) recebe o conteudo: #
loadn r0, #'#'
store 27670, r0

; endereco temporario(27669) recebe o conteudo: #
loadn r0, #'#'
store 27669, r0

; endereco temporario(27668) recebe o conteudo: .
loadn r0, #'.'
store 27668, r0

; endereco temporario(27667) recebe o conteudo: #
loadn r0, #'#'
store 27667, r0

; endereco temporario(27666) recebe o conteudo: #
loadn r0, #'#'
store 27666, r0

; endereco temporario(27665) recebe o conteudo: #
loadn r0, #'#'
store 27665, r0

; endereco temporario(27664) recebe o conteudo: #
loadn r0, #'#'
store 27664, r0

; endereco temporario(27663) recebe o conteudo: #
loadn r0, #'#'
store 27663, r0

; endereco temporario(27662) recebe o conteudo: #
loadn r0, #'#'
store 27662, r0

; endereco temporario(27661) recebe o conteudo: 0
loadn r0, #0
store 27661, r0

; endereco temporario(27660) recebe o conteudo:  
loadn r0, #' '
store 27660, r0

; endereco temporario(27659) recebe o conteudo:  
loadn r0, #' '
store 27659, r0

; endereco temporario(27658) recebe o conteudo:  
loadn r0, #' '
store 27658, r0

; endereco temporario(27657) recebe o conteudo:  
loadn r0, #' '
store 27657, r0

; endereco temporario(27656) recebe o conteudo:  
loadn r0, #' '
store 27656, r0

; endereco temporario(27655) recebe o conteudo: #
loadn r0, #'#'
store 27655, r0

; endereco temporario(27654) recebe o conteudo: .
loadn r0, #'.'
store 27654, r0

; endereco temporario(27653) recebe o conteudo: #
loadn r0, #'#'
store 27653, r0

; endereco temporario(27652) recebe o conteudo: #
loadn r0, #'#'
store 27652, r0

; endereco temporario(27651) recebe o conteudo:  
loadn r0, #' '
store 27651, r0

; endereco temporario(27650) recebe o conteudo:  
loadn r0, #' '
store 27650, r0

; endereco temporario(27649) recebe o conteudo:  
loadn r0, #' '
store 27649, r0

; endereco temporario(27648) recebe o conteudo:  
loadn r0, #' '
store 27648, r0

; endereco temporario(27647) recebe o conteudo:  
loadn r0, #' '
store 27647, r0

; endereco temporario(27646) recebe o conteudo:  
loadn r0, #' '
store 27646, r0

; endereco temporario(27645) recebe o conteudo:  
loadn r0, #' '
store 27645, r0

; endereco temporario(27644) recebe o conteudo:  
loadn r0, #' '
store 27644, r0

; endereco temporario(27643) recebe o conteudo:  
loadn r0, #' '
store 27643, r0

; endereco temporario(27642) recebe o conteudo:  
loadn r0, #' '
store 27642, r0

; endereco temporario(27641) recebe o conteudo: #
loadn r0, #'#'
store 27641, r0

; endereco temporario(27640) recebe o conteudo: #
loadn r0, #'#'
store 27640, r0

; endereco temporario(27639) recebe o conteudo: .
loadn r0, #'.'
store 27639, r0

; endereco temporario(27638) recebe o conteudo: #
loadn r0, #'#'
store 27638, r0

; endereco temporario(27637) recebe o conteudo:  
loadn r0, #' '
store 27637, r0

; endereco temporario(27636) recebe o conteudo:  
loadn r0, #' '
store 27636, r0

; endereco temporario(27635) recebe o conteudo:  
loadn r0, #' '
store 27635, r0

; endereco temporario(27634) recebe o conteudo:  
loadn r0, #' '
store 27634, r0

; endereco temporario(27633) recebe o conteudo:  
loadn r0, #' '
store 27633, r0

; endereco temporario(27632) recebe o conteudo: 0
loadn r0, #0
store 27632, r0

; endereco temporario(27631) recebe o conteudo:  
loadn r0, #' '
store 27631, r0

; endereco temporario(27630) recebe o conteudo:  
loadn r0, #' '
store 27630, r0

; endereco temporario(27629) recebe o conteudo:  
loadn r0, #' '
store 27629, r0

; endereco temporario(27628) recebe o conteudo:  
loadn r0, #' '
store 27628, r0

; endereco temporario(27627) recebe o conteudo:  
loadn r0, #' '
store 27627, r0

; endereco temporario(27626) recebe o conteudo: #
loadn r0, #'#'
store 27626, r0

; endereco temporario(27625) recebe o conteudo: .
loadn r0, #'.'
store 27625, r0

; endereco temporario(27624) recebe o conteudo: #
loadn r0, #'#'
store 27624, r0

; endereco temporario(27623) recebe o conteudo: #
loadn r0, #'#'
store 27623, r0

; endereco temporario(27622) recebe o conteudo:  
loadn r0, #' '
store 27622, r0

; endereco temporario(27621) recebe o conteudo: #
loadn r0, #'#'
store 27621, r0

; endereco temporario(27620) recebe o conteudo: #
loadn r0, #'#'
store 27620, r0

; endereco temporario(27619) recebe o conteudo: #
loadn r0, #'#'
store 27619, r0

; endereco temporario(27618) recebe o conteudo: -
loadn r0, #'-'
store 27618, r0

; endereco temporario(27617) recebe o conteudo: -
loadn r0, #'-'
store 27617, r0

; endereco temporario(27616) recebe o conteudo: #
loadn r0, #'#'
store 27616, r0

; endereco temporario(27615) recebe o conteudo: #
loadn r0, #'#'
store 27615, r0

; endereco temporario(27614) recebe o conteudo: #
loadn r0, #'#'
store 27614, r0

; endereco temporario(27613) recebe o conteudo:  
loadn r0, #' '
store 27613, r0

; endereco temporario(27612) recebe o conteudo: #
loadn r0, #'#'
store 27612, r0

; endereco temporario(27611) recebe o conteudo: #
loadn r0, #'#'
store 27611, r0

; endereco temporario(27610) recebe o conteudo: .
loadn r0, #'.'
store 27610, r0

; endereco temporario(27609) recebe o conteudo: #
loadn r0, #'#'
store 27609, r0

; endereco temporario(27608) recebe o conteudo:  
loadn r0, #' '
store 27608, r0

; endereco temporario(27607) recebe o conteudo:  
loadn r0, #' '
store 27607, r0

; endereco temporario(27606) recebe o conteudo:  
loadn r0, #' '
store 27606, r0

; endereco temporario(27605) recebe o conteudo:  
loadn r0, #' '
store 27605, r0

; endereco temporario(27604) recebe o conteudo:  
loadn r0, #' '
store 27604, r0

; endereco temporario(27603) recebe o conteudo: 0
loadn r0, #0
store 27603, r0

; endereco temporario(27602) recebe o conteudo: #
loadn r0, #'#'
store 27602, r0

; endereco temporario(27601) recebe o conteudo: #
loadn r0, #'#'
store 27601, r0

; endereco temporario(27600) recebe o conteudo: #
loadn r0, #'#'
store 27600, r0

; endereco temporario(27599) recebe o conteudo: #
loadn r0, #'#'
store 27599, r0

; endereco temporario(27598) recebe o conteudo: #
loadn r0, #'#'
store 27598, r0

; endereco temporario(27597) recebe o conteudo: #
loadn r0, #'#'
store 27597, r0

; endereco temporario(27596) recebe o conteudo: .
loadn r0, #'.'
store 27596, r0

; endereco temporario(27595) recebe o conteudo: #
loadn r0, #'#'
store 27595, r0

; endereco temporario(27594) recebe o conteudo: #
loadn r0, #'#'
store 27594, r0

; endereco temporario(27593) recebe o conteudo:  
loadn r0, #' '
store 27593, r0

; endereco temporario(27592) recebe o conteudo: #
loadn r0, #'#'
store 27592, r0

; endereco temporario(27591) recebe o conteudo:  
loadn r0, #' '
store 27591, r0

; endereco temporario(27590) recebe o conteudo:  
loadn r0, #' '
store 27590, r0

; endereco temporario(27589) recebe o conteudo:  
loadn r0, #' '
store 27589, r0

; endereco temporario(27588) recebe o conteudo:  
loadn r0, #' '
store 27588, r0

; endereco temporario(27587) recebe o conteudo:  
loadn r0, #' '
store 27587, r0

; endereco temporario(27586) recebe o conteudo:  
loadn r0, #' '
store 27586, r0

; endereco temporario(27585) recebe o conteudo: #
loadn r0, #'#'
store 27585, r0

; endereco temporario(27584) recebe o conteudo:  
loadn r0, #' '
store 27584, r0

; endereco temporario(27583) recebe o conteudo: #
loadn r0, #'#'
store 27583, r0

; endereco temporario(27582) recebe o conteudo: #
loadn r0, #'#'
store 27582, r0

; endereco temporario(27581) recebe o conteudo: .
loadn r0, #'.'
store 27581, r0

; endereco temporario(27580) recebe o conteudo: #
loadn r0, #'#'
store 27580, r0

; endereco temporario(27579) recebe o conteudo: #
loadn r0, #'#'
store 27579, r0

; endereco temporario(27578) recebe o conteudo: #
loadn r0, #'#'
store 27578, r0

; endereco temporario(27577) recebe o conteudo: #
loadn r0, #'#'
store 27577, r0

; endereco temporario(27576) recebe o conteudo: #
loadn r0, #'#'
store 27576, r0

; endereco temporario(27575) recebe o conteudo: #
loadn r0, #'#'
store 27575, r0

; endereco temporario(27574) recebe o conteudo: 0
loadn r0, #0
store 27574, r0

; endereco temporario(27573) recebe o conteudo:  
loadn r0, #' '
store 27573, r0

; endereco temporario(27572) recebe o conteudo:  
loadn r0, #' '
store 27572, r0

; endereco temporario(27571) recebe o conteudo:  
loadn r0, #' '
store 27571, r0

; endereco temporario(27570) recebe o conteudo:  
loadn r0, #' '
store 27570, r0

; endereco temporario(27569) recebe o conteudo:  
loadn r0, #' '
store 27569, r0

; endereco temporario(27568) recebe o conteudo:  
loadn r0, #' '
store 27568, r0

; endereco temporario(27567) recebe o conteudo: .
loadn r0, #'.'
store 27567, r0

; endereco temporario(27566) recebe o conteudo:  
loadn r0, #' '
store 27566, r0

; endereco temporario(27565) recebe o conteudo:  
loadn r0, #' '
store 27565, r0

; endereco temporario(27564) recebe o conteudo:  
loadn r0, #' '
store 27564, r0

; endereco temporario(27563) recebe o conteudo: #
loadn r0, #'#'
store 27563, r0

; endereco temporario(27562) recebe o conteudo:  
loadn r0, #' '
store 27562, r0

; endereco temporario(27561) recebe o conteudo:  
loadn r0, #' '
store 27561, r0

; endereco temporario(27560) recebe o conteudo:  
loadn r0, #' '
store 27560, r0

; endereco temporario(27559) recebe o conteudo:  
loadn r0, #' '
store 27559, r0

; endereco temporario(27558) recebe o conteudo:  
loadn r0, #' '
store 27558, r0

; endereco temporario(27557) recebe o conteudo:  
loadn r0, #' '
store 27557, r0

; endereco temporario(27556) recebe o conteudo: #
loadn r0, #'#'
store 27556, r0

; endereco temporario(27555) recebe o conteudo:  
loadn r0, #' '
store 27555, r0

; endereco temporario(27554) recebe o conteudo:  
loadn r0, #' '
store 27554, r0

; endereco temporario(27553) recebe o conteudo:  
loadn r0, #' '
store 27553, r0

; endereco temporario(27552) recebe o conteudo: .
loadn r0, #'.'
store 27552, r0

; endereco temporario(27551) recebe o conteudo:  
loadn r0, #' '
store 27551, r0

; endereco temporario(27550) recebe o conteudo:  
loadn r0, #' '
store 27550, r0

; endereco temporario(27549) recebe o conteudo:  
loadn r0, #' '
store 27549, r0

; endereco temporario(27548) recebe o conteudo:  
loadn r0, #' '
store 27548, r0

; endereco temporario(27547) recebe o conteudo:  
loadn r0, #' '
store 27547, r0

; endereco temporario(27546) recebe o conteudo:  
loadn r0, #' '
store 27546, r0

; endereco temporario(27545) recebe o conteudo: 0
loadn r0, #0
store 27545, r0

; endereco temporario(27544) recebe o conteudo: #
loadn r0, #'#'
store 27544, r0

; endereco temporario(27543) recebe o conteudo: #
loadn r0, #'#'
store 27543, r0

; endereco temporario(27542) recebe o conteudo: #
loadn r0, #'#'
store 27542, r0

; endereco temporario(27541) recebe o conteudo: #
loadn r0, #'#'
store 27541, r0

; endereco temporario(27540) recebe o conteudo: #
loadn r0, #'#'
store 27540, r0

; endereco temporario(27539) recebe o conteudo: #
loadn r0, #'#'
store 27539, r0

; endereco temporario(27538) recebe o conteudo: .
loadn r0, #'.'
store 27538, r0

; endereco temporario(27537) recebe o conteudo: #
loadn r0, #'#'
store 27537, r0

; endereco temporario(27536) recebe o conteudo: #
loadn r0, #'#'
store 27536, r0

; endereco temporario(27535) recebe o conteudo:  
loadn r0, #' '
store 27535, r0

; endereco temporario(27534) recebe o conteudo: #
loadn r0, #'#'
store 27534, r0

; endereco temporario(27533) recebe o conteudo:  
loadn r0, #' '
store 27533, r0

; endereco temporario(27532) recebe o conteudo:  
loadn r0, #' '
store 27532, r0

; endereco temporario(27531) recebe o conteudo:  
loadn r0, #' '
store 27531, r0

; endereco temporario(27530) recebe o conteudo:  
loadn r0, #' '
store 27530, r0

; endereco temporario(27529) recebe o conteudo:  
loadn r0, #' '
store 27529, r0

; endereco temporario(27528) recebe o conteudo:  
loadn r0, #' '
store 27528, r0

; endereco temporario(27527) recebe o conteudo: #
loadn r0, #'#'
store 27527, r0

; endereco temporario(27526) recebe o conteudo:  
loadn r0, #' '
store 27526, r0

; endereco temporario(27525) recebe o conteudo: #
loadn r0, #'#'
store 27525, r0

; endereco temporario(27524) recebe o conteudo: #
loadn r0, #'#'
store 27524, r0

; endereco temporario(27523) recebe o conteudo: .
loadn r0, #'.'
store 27523, r0

; endereco temporario(27522) recebe o conteudo: #
loadn r0, #'#'
store 27522, r0

; endereco temporario(27521) recebe o conteudo: #
loadn r0, #'#'
store 27521, r0

; endereco temporario(27520) recebe o conteudo: #
loadn r0, #'#'
store 27520, r0

; endereco temporario(27519) recebe o conteudo: #
loadn r0, #'#'
store 27519, r0

; endereco temporario(27518) recebe o conteudo: #
loadn r0, #'#'
store 27518, r0

; endereco temporario(27517) recebe o conteudo: #
loadn r0, #'#'
store 27517, r0

; endereco temporario(27516) recebe o conteudo: 0
loadn r0, #0
store 27516, r0

; endereco temporario(27515) recebe o conteudo:  
loadn r0, #' '
store 27515, r0

; endereco temporario(27514) recebe o conteudo:  
loadn r0, #' '
store 27514, r0

; endereco temporario(27513) recebe o conteudo:  
loadn r0, #' '
store 27513, r0

; endereco temporario(27512) recebe o conteudo:  
loadn r0, #' '
store 27512, r0

; endereco temporario(27511) recebe o conteudo:  
loadn r0, #' '
store 27511, r0

; endereco temporario(27510) recebe o conteudo: #
loadn r0, #'#'
store 27510, r0

; endereco temporario(27509) recebe o conteudo: .
loadn r0, #'.'
store 27509, r0

; endereco temporario(27508) recebe o conteudo: #
loadn r0, #'#'
store 27508, r0

; endereco temporario(27507) recebe o conteudo: #
loadn r0, #'#'
store 27507, r0

; endereco temporario(27506) recebe o conteudo:  
loadn r0, #' '
store 27506, r0

; endereco temporario(27505) recebe o conteudo: #
loadn r0, #'#'
store 27505, r0

; endereco temporario(27504) recebe o conteudo: #
loadn r0, #'#'
store 27504, r0

; endereco temporario(27503) recebe o conteudo: #
loadn r0, #'#'
store 27503, r0

; endereco temporario(27502) recebe o conteudo: #
loadn r0, #'#'
store 27502, r0

; endereco temporario(27501) recebe o conteudo: #
loadn r0, #'#'
store 27501, r0

; endereco temporario(27500) recebe o conteudo: #
loadn r0, #'#'
store 27500, r0

; endereco temporario(27499) recebe o conteudo: #
loadn r0, #'#'
store 27499, r0

; endereco temporario(27498) recebe o conteudo: #
loadn r0, #'#'
store 27498, r0

; endereco temporario(27497) recebe o conteudo:  
loadn r0, #' '
store 27497, r0

; endereco temporario(27496) recebe o conteudo: #
loadn r0, #'#'
store 27496, r0

; endereco temporario(27495) recebe o conteudo: #
loadn r0, #'#'
store 27495, r0

; endereco temporario(27494) recebe o conteudo: .
loadn r0, #'.'
store 27494, r0

; endereco temporario(27493) recebe o conteudo: #
loadn r0, #'#'
store 27493, r0

; endereco temporario(27492) recebe o conteudo:  
loadn r0, #' '
store 27492, r0

; endereco temporario(27491) recebe o conteudo:  
loadn r0, #' '
store 27491, r0

; endereco temporario(27490) recebe o conteudo:  
loadn r0, #' '
store 27490, r0

; endereco temporario(27489) recebe o conteudo:  
loadn r0, #' '
store 27489, r0

; endereco temporario(27488) recebe o conteudo:  
loadn r0, #' '
store 27488, r0

; endereco temporario(27487) recebe o conteudo: 0
loadn r0, #0
store 27487, r0

; endereco temporario(27486) recebe o conteudo:  
loadn r0, #' '
store 27486, r0

; endereco temporario(27485) recebe o conteudo:  
loadn r0, #' '
store 27485, r0

; endereco temporario(27484) recebe o conteudo:  
loadn r0, #' '
store 27484, r0

; endereco temporario(27483) recebe o conteudo:  
loadn r0, #' '
store 27483, r0

; endereco temporario(27482) recebe o conteudo:  
loadn r0, #' '
store 27482, r0

; endereco temporario(27481) recebe o conteudo: #
loadn r0, #'#'
store 27481, r0

; endereco temporario(27480) recebe o conteudo: .
loadn r0, #'.'
store 27480, r0

; endereco temporario(27479) recebe o conteudo: #
loadn r0, #'#'
store 27479, r0

; endereco temporario(27478) recebe o conteudo: #
loadn r0, #'#'
store 27478, r0

; endereco temporario(27477) recebe o conteudo:  
loadn r0, #' '
store 27477, r0

; endereco temporario(27476) recebe o conteudo:  
loadn r0, #' '
store 27476, r0

; endereco temporario(27475) recebe o conteudo:  
loadn r0, #' '
store 27475, r0

; endereco temporario(27474) recebe o conteudo:  
loadn r0, #' '
store 27474, r0

; endereco temporario(27473) recebe o conteudo:  
loadn r0, #' '
store 27473, r0

; endereco temporario(27472) recebe o conteudo:  
loadn r0, #' '
store 27472, r0

; endereco temporario(27471) recebe o conteudo:  
loadn r0, #' '
store 27471, r0

; endereco temporario(27470) recebe o conteudo:  
loadn r0, #' '
store 27470, r0

; endereco temporario(27469) recebe o conteudo:  
loadn r0, #' '
store 27469, r0

; endereco temporario(27468) recebe o conteudo:  
loadn r0, #' '
store 27468, r0

; endereco temporario(27467) recebe o conteudo: #
loadn r0, #'#'
store 27467, r0

; endereco temporario(27466) recebe o conteudo: #
loadn r0, #'#'
store 27466, r0

; endereco temporario(27465) recebe o conteudo: .
loadn r0, #'.'
store 27465, r0

; endereco temporario(27464) recebe o conteudo: #
loadn r0, #'#'
store 27464, r0

; endereco temporario(27463) recebe o conteudo:  
loadn r0, #' '
store 27463, r0

; endereco temporario(27462) recebe o conteudo:  
loadn r0, #' '
store 27462, r0

; endereco temporario(27461) recebe o conteudo:  
loadn r0, #' '
store 27461, r0

; endereco temporario(27460) recebe o conteudo:  
loadn r0, #' '
store 27460, r0

; endereco temporario(27459) recebe o conteudo:  
loadn r0, #' '
store 27459, r0

; endereco temporario(27458) recebe o conteudo: 0
loadn r0, #0
store 27458, r0

; endereco temporario(27457) recebe o conteudo:  
loadn r0, #' '
store 27457, r0

; endereco temporario(27456) recebe o conteudo:  
loadn r0, #' '
store 27456, r0

; endereco temporario(27455) recebe o conteudo:  
loadn r0, #' '
store 27455, r0

; endereco temporario(27454) recebe o conteudo:  
loadn r0, #' '
store 27454, r0

; endereco temporario(27453) recebe o conteudo:  
loadn r0, #' '
store 27453, r0

; endereco temporario(27452) recebe o conteudo: #
loadn r0, #'#'
store 27452, r0

; endereco temporario(27451) recebe o conteudo: .
loadn r0, #'.'
store 27451, r0

; endereco temporario(27450) recebe o conteudo: #
loadn r0, #'#'
store 27450, r0

; endereco temporario(27449) recebe o conteudo: #
loadn r0, #'#'
store 27449, r0

; endereco temporario(27448) recebe o conteudo:  
loadn r0, #' '
store 27448, r0

; endereco temporario(27447) recebe o conteudo: #
loadn r0, #'#'
store 27447, r0

; endereco temporario(27446) recebe o conteudo: #
loadn r0, #'#'
store 27446, r0

; endereco temporario(27445) recebe o conteudo: #
loadn r0, #'#'
store 27445, r0

; endereco temporario(27444) recebe o conteudo: #
loadn r0, #'#'
store 27444, r0

; endereco temporario(27443) recebe o conteudo: #
loadn r0, #'#'
store 27443, r0

; endereco temporario(27442) recebe o conteudo: #
loadn r0, #'#'
store 27442, r0

; endereco temporario(27441) recebe o conteudo: #
loadn r0, #'#'
store 27441, r0

; endereco temporario(27440) recebe o conteudo: #
loadn r0, #'#'
store 27440, r0

; endereco temporario(27439) recebe o conteudo:  
loadn r0, #' '
store 27439, r0

; endereco temporario(27438) recebe o conteudo: #
loadn r0, #'#'
store 27438, r0

; endereco temporario(27437) recebe o conteudo: #
loadn r0, #'#'
store 27437, r0

; endereco temporario(27436) recebe o conteudo: .
loadn r0, #'.'
store 27436, r0

; endereco temporario(27435) recebe o conteudo: #
loadn r0, #'#'
store 27435, r0

; endereco temporario(27434) recebe o conteudo:  
loadn r0, #' '
store 27434, r0

; endereco temporario(27433) recebe o conteudo:  
loadn r0, #' '
store 27433, r0

; endereco temporario(27432) recebe o conteudo:  
loadn r0, #' '
store 27432, r0

; endereco temporario(27431) recebe o conteudo:  
loadn r0, #' '
store 27431, r0

; endereco temporario(27430) recebe o conteudo:  
loadn r0, #' '
store 27430, r0

; endereco temporario(27429) recebe o conteudo: 0
loadn r0, #0
store 27429, r0

; endereco temporario(27428) recebe o conteudo: #
loadn r0, #'#'
store 27428, r0

; endereco temporario(27427) recebe o conteudo: #
loadn r0, #'#'
store 27427, r0

; endereco temporario(27426) recebe o conteudo: #
loadn r0, #'#'
store 27426, r0

; endereco temporario(27425) recebe o conteudo: #
loadn r0, #'#'
store 27425, r0

; endereco temporario(27424) recebe o conteudo: #
loadn r0, #'#'
store 27424, r0

; endereco temporario(27423) recebe o conteudo: #
loadn r0, #'#'
store 27423, r0

; endereco temporario(27422) recebe o conteudo: .
loadn r0, #'.'
store 27422, r0

; endereco temporario(27421) recebe o conteudo: #
loadn r0, #'#'
store 27421, r0

; endereco temporario(27420) recebe o conteudo: #
loadn r0, #'#'
store 27420, r0

; endereco temporario(27419) recebe o conteudo:  
loadn r0, #' '
store 27419, r0

; endereco temporario(27418) recebe o conteudo: #
loadn r0, #'#'
store 27418, r0

; endereco temporario(27417) recebe o conteudo: #
loadn r0, #'#'
store 27417, r0

; endereco temporario(27416) recebe o conteudo: #
loadn r0, #'#'
store 27416, r0

; endereco temporario(27415) recebe o conteudo: #
loadn r0, #'#'
store 27415, r0

; endereco temporario(27414) recebe o conteudo: #
loadn r0, #'#'
store 27414, r0

; endereco temporario(27413) recebe o conteudo: #
loadn r0, #'#'
store 27413, r0

; endereco temporario(27412) recebe o conteudo: #
loadn r0, #'#'
store 27412, r0

; endereco temporario(27411) recebe o conteudo: #
loadn r0, #'#'
store 27411, r0

; endereco temporario(27410) recebe o conteudo:  
loadn r0, #' '
store 27410, r0

; endereco temporario(27409) recebe o conteudo: #
loadn r0, #'#'
store 27409, r0

; endereco temporario(27408) recebe o conteudo: #
loadn r0, #'#'
store 27408, r0

; endereco temporario(27407) recebe o conteudo: .
loadn r0, #'.'
store 27407, r0

; endereco temporario(27406) recebe o conteudo: #
loadn r0, #'#'
store 27406, r0

; endereco temporario(27405) recebe o conteudo: #
loadn r0, #'#'
store 27405, r0

; endereco temporario(27404) recebe o conteudo: #
loadn r0, #'#'
store 27404, r0

; endereco temporario(27403) recebe o conteudo: #
loadn r0, #'#'
store 27403, r0

; endereco temporario(27402) recebe o conteudo: #
loadn r0, #'#'
store 27402, r0

; endereco temporario(27401) recebe o conteudo: #
loadn r0, #'#'
store 27401, r0

; endereco temporario(27400) recebe o conteudo: 0
loadn r0, #0
store 27400, r0

; endereco temporario(27399) recebe o conteudo: #
loadn r0, #'#'
store 27399, r0

; endereco temporario(27398) recebe o conteudo: .
loadn r0, #'.'
store 27398, r0

; endereco temporario(27397) recebe o conteudo: .
loadn r0, #'.'
store 27397, r0

; endereco temporario(27396) recebe o conteudo: .
loadn r0, #'.'
store 27396, r0

; endereco temporario(27395) recebe o conteudo: .
loadn r0, #'.'
store 27395, r0

; endereco temporario(27394) recebe o conteudo: .
loadn r0, #'.'
store 27394, r0

; endereco temporario(27393) recebe o conteudo: .
loadn r0, #'.'
store 27393, r0

; endereco temporario(27392) recebe o conteudo: .
loadn r0, #'.'
store 27392, r0

; endereco temporario(27391) recebe o conteudo: .
loadn r0, #'.'
store 27391, r0

; endereco temporario(27390) recebe o conteudo: .
loadn r0, #'.'
store 27390, r0

; endereco temporario(27389) recebe o conteudo: .
loadn r0, #'.'
store 27389, r0

; endereco temporario(27388) recebe o conteudo: .
loadn r0, #'.'
store 27388, r0

; endereco temporario(27387) recebe o conteudo: .
loadn r0, #'.'
store 27387, r0

; endereco temporario(27386) recebe o conteudo: #
loadn r0, #'#'
store 27386, r0

; endereco temporario(27385) recebe o conteudo: #
loadn r0, #'#'
store 27385, r0

; endereco temporario(27384) recebe o conteudo: .
loadn r0, #'.'
store 27384, r0

; endereco temporario(27383) recebe o conteudo: .
loadn r0, #'.'
store 27383, r0

; endereco temporario(27382) recebe o conteudo: .
loadn r0, #'.'
store 27382, r0

; endereco temporario(27381) recebe o conteudo: .
loadn r0, #'.'
store 27381, r0

; endereco temporario(27380) recebe o conteudo: .
loadn r0, #'.'
store 27380, r0

; endereco temporario(27379) recebe o conteudo: .
loadn r0, #'.'
store 27379, r0

; endereco temporario(27378) recebe o conteudo: .
loadn r0, #'.'
store 27378, r0

; endereco temporario(27377) recebe o conteudo: .
loadn r0, #'.'
store 27377, r0

; endereco temporario(27376) recebe o conteudo: .
loadn r0, #'.'
store 27376, r0

; endereco temporario(27375) recebe o conteudo: .
loadn r0, #'.'
store 27375, r0

; endereco temporario(27374) recebe o conteudo: .
loadn r0, #'.'
store 27374, r0

; endereco temporario(27373) recebe o conteudo: .
loadn r0, #'.'
store 27373, r0

; endereco temporario(27372) recebe o conteudo: #
loadn r0, #'#'
store 27372, r0

; endereco temporario(27371) recebe o conteudo: 0
loadn r0, #0
store 27371, r0

; endereco temporario(27370) recebe o conteudo: #
loadn r0, #'#'
store 27370, r0

; endereco temporario(27369) recebe o conteudo: .
loadn r0, #'.'
store 27369, r0

; endereco temporario(27368) recebe o conteudo: #
loadn r0, #'#'
store 27368, r0

; endereco temporario(27367) recebe o conteudo: #
loadn r0, #'#'
store 27367, r0

; endereco temporario(27366) recebe o conteudo: #
loadn r0, #'#'
store 27366, r0

; endereco temporario(27365) recebe o conteudo: #
loadn r0, #'#'
store 27365, r0

; endereco temporario(27364) recebe o conteudo: .
loadn r0, #'.'
store 27364, r0

; endereco temporario(27363) recebe o conteudo: #
loadn r0, #'#'
store 27363, r0

; endereco temporario(27362) recebe o conteudo: #
loadn r0, #'#'
store 27362, r0

; endereco temporario(27361) recebe o conteudo: #
loadn r0, #'#'
store 27361, r0

; endereco temporario(27360) recebe o conteudo: #
loadn r0, #'#'
store 27360, r0

; endereco temporario(27359) recebe o conteudo: #
loadn r0, #'#'
store 27359, r0

; endereco temporario(27358) recebe o conteudo: .
loadn r0, #'.'
store 27358, r0

; endereco temporario(27357) recebe o conteudo: #
loadn r0, #'#'
store 27357, r0

; endereco temporario(27356) recebe o conteudo: #
loadn r0, #'#'
store 27356, r0

; endereco temporario(27355) recebe o conteudo: .
loadn r0, #'.'
store 27355, r0

; endereco temporario(27354) recebe o conteudo: #
loadn r0, #'#'
store 27354, r0

; endereco temporario(27353) recebe o conteudo: #
loadn r0, #'#'
store 27353, r0

; endereco temporario(27352) recebe o conteudo: #
loadn r0, #'#'
store 27352, r0

; endereco temporario(27351) recebe o conteudo: #
loadn r0, #'#'
store 27351, r0

; endereco temporario(27350) recebe o conteudo: #
loadn r0, #'#'
store 27350, r0

; endereco temporario(27349) recebe o conteudo: .
loadn r0, #'.'
store 27349, r0

; endereco temporario(27348) recebe o conteudo: #
loadn r0, #'#'
store 27348, r0

; endereco temporario(27347) recebe o conteudo: #
loadn r0, #'#'
store 27347, r0

; endereco temporario(27346) recebe o conteudo: #
loadn r0, #'#'
store 27346, r0

; endereco temporario(27345) recebe o conteudo: #
loadn r0, #'#'
store 27345, r0

; endereco temporario(27344) recebe o conteudo: .
loadn r0, #'.'
store 27344, r0

; endereco temporario(27343) recebe o conteudo: #
loadn r0, #'#'
store 27343, r0

; endereco temporario(27342) recebe o conteudo: 0
loadn r0, #0
store 27342, r0

; endereco temporario(27341) recebe o conteudo: #
loadn r0, #'#'
store 27341, r0

; endereco temporario(27340) recebe o conteudo: .
loadn r0, #'.'
store 27340, r0

; endereco temporario(27339) recebe o conteudo: #
loadn r0, #'#'
store 27339, r0

; endereco temporario(27338) recebe o conteudo: #
loadn r0, #'#'
store 27338, r0

; endereco temporario(27337) recebe o conteudo: #
loadn r0, #'#'
store 27337, r0

; endereco temporario(27336) recebe o conteudo: #
loadn r0, #'#'
store 27336, r0

; endereco temporario(27335) recebe o conteudo: .
loadn r0, #'.'
store 27335, r0

; endereco temporario(27334) recebe o conteudo: #
loadn r0, #'#'
store 27334, r0

; endereco temporario(27333) recebe o conteudo: #
loadn r0, #'#'
store 27333, r0

; endereco temporario(27332) recebe o conteudo: #
loadn r0, #'#'
store 27332, r0

; endereco temporario(27331) recebe o conteudo: #
loadn r0, #'#'
store 27331, r0

; endereco temporario(27330) recebe o conteudo: #
loadn r0, #'#'
store 27330, r0

; endereco temporario(27329) recebe o conteudo: .
loadn r0, #'.'
store 27329, r0

; endereco temporario(27328) recebe o conteudo: #
loadn r0, #'#'
store 27328, r0

; endereco temporario(27327) recebe o conteudo: #
loadn r0, #'#'
store 27327, r0

; endereco temporario(27326) recebe o conteudo: .
loadn r0, #'.'
store 27326, r0

; endereco temporario(27325) recebe o conteudo: #
loadn r0, #'#'
store 27325, r0

; endereco temporario(27324) recebe o conteudo: #
loadn r0, #'#'
store 27324, r0

; endereco temporario(27323) recebe o conteudo: #
loadn r0, #'#'
store 27323, r0

; endereco temporario(27322) recebe o conteudo: #
loadn r0, #'#'
store 27322, r0

; endereco temporario(27321) recebe o conteudo: #
loadn r0, #'#'
store 27321, r0

; endereco temporario(27320) recebe o conteudo: .
loadn r0, #'.'
store 27320, r0

; endereco temporario(27319) recebe o conteudo: #
loadn r0, #'#'
store 27319, r0

; endereco temporario(27318) recebe o conteudo: #
loadn r0, #'#'
store 27318, r0

; endereco temporario(27317) recebe o conteudo: #
loadn r0, #'#'
store 27317, r0

; endereco temporario(27316) recebe o conteudo: #
loadn r0, #'#'
store 27316, r0

; endereco temporario(27315) recebe o conteudo: .
loadn r0, #'.'
store 27315, r0

; endereco temporario(27314) recebe o conteudo: #
loadn r0, #'#'
store 27314, r0

; endereco temporario(27313) recebe o conteudo: 0
loadn r0, #0
store 27313, r0

; endereco temporario(27312) recebe o conteudo: #
loadn r0, #'#'
store 27312, r0

; endereco temporario(27311) recebe o conteudo: .
loadn r0, #'.'
store 27311, r0

; endereco temporario(27310) recebe o conteudo: .
loadn r0, #'.'
store 27310, r0

; endereco temporario(27309) recebe o conteudo: .
loadn r0, #'.'
store 27309, r0

; endereco temporario(27308) recebe o conteudo: #
loadn r0, #'#'
store 27308, r0

; endereco temporario(27307) recebe o conteudo: #
loadn r0, #'#'
store 27307, r0

; endereco temporario(27306) recebe o conteudo: .
loadn r0, #'.'
store 27306, r0

; endereco temporario(27305) recebe o conteudo: .
loadn r0, #'.'
store 27305, r0

; endereco temporario(27304) recebe o conteudo: .
loadn r0, #'.'
store 27304, r0

; endereco temporario(27303) recebe o conteudo:  
loadn r0, #' '
store 27303, r0

; endereco temporario(27302) recebe o conteudo:  
loadn r0, #' '
store 27302, r0

; endereco temporario(27301) recebe o conteudo:  
loadn r0, #' '
store 27301, r0

; endereco temporario(27300) recebe o conteudo:  
loadn r0, #' '
store 27300, r0

; endereco temporario(27299) recebe o conteudo:  
loadn r0, #' '
store 27299, r0

; endereco temporario(27298) recebe o conteudo:  
loadn r0, #' '
store 27298, r0

; endereco temporario(27297) recebe o conteudo:  
loadn r0, #' '
store 27297, r0

; endereco temporario(27296) recebe o conteudo:  
loadn r0, #' '
store 27296, r0

; endereco temporario(27295) recebe o conteudo:  
loadn r0, #' '
store 27295, r0

; endereco temporario(27294) recebe o conteudo:  
loadn r0, #' '
store 27294, r0

; endereco temporario(27293) recebe o conteudo: .
loadn r0, #'.'
store 27293, r0

; endereco temporario(27292) recebe o conteudo: .
loadn r0, #'.'
store 27292, r0

; endereco temporario(27291) recebe o conteudo: .
loadn r0, #'.'
store 27291, r0

; endereco temporario(27290) recebe o conteudo: #
loadn r0, #'#'
store 27290, r0

; endereco temporario(27289) recebe o conteudo: #
loadn r0, #'#'
store 27289, r0

; endereco temporario(27288) recebe o conteudo: .
loadn r0, #'.'
store 27288, r0

; endereco temporario(27287) recebe o conteudo: .
loadn r0, #'.'
store 27287, r0

; endereco temporario(27286) recebe o conteudo: .
loadn r0, #'.'
store 27286, r0

; endereco temporario(27285) recebe o conteudo: #
loadn r0, #'#'
store 27285, r0

; endereco temporario(27284) recebe o conteudo: 0
loadn r0, #0
store 27284, r0

; endereco temporario(27283) recebe o conteudo: #
loadn r0, #'#'
store 27283, r0

; endereco temporario(27282) recebe o conteudo: #
loadn r0, #'#'
store 27282, r0

; endereco temporario(27281) recebe o conteudo: #
loadn r0, #'#'
store 27281, r0

; endereco temporario(27280) recebe o conteudo: .
loadn r0, #'.'
store 27280, r0

; endereco temporario(27279) recebe o conteudo: #
loadn r0, #'#'
store 27279, r0

; endereco temporario(27278) recebe o conteudo: #
loadn r0, #'#'
store 27278, r0

; endereco temporario(27277) recebe o conteudo: .
loadn r0, #'.'
store 27277, r0

; endereco temporario(27276) recebe o conteudo: #
loadn r0, #'#'
store 27276, r0

; endereco temporario(27275) recebe o conteudo: #
loadn r0, #'#'
store 27275, r0

; endereco temporario(27274) recebe o conteudo:  
loadn r0, #' '
store 27274, r0

; endereco temporario(27273) recebe o conteudo: #
loadn r0, #'#'
store 27273, r0

; endereco temporario(27272) recebe o conteudo: #
loadn r0, #'#'
store 27272, r0

; endereco temporario(27271) recebe o conteudo: #
loadn r0, #'#'
store 27271, r0

; endereco temporario(27270) recebe o conteudo: #
loadn r0, #'#'
store 27270, r0

; endereco temporario(27269) recebe o conteudo: #
loadn r0, #'#'
store 27269, r0

; endereco temporario(27268) recebe o conteudo: #
loadn r0, #'#'
store 27268, r0

; endereco temporario(27267) recebe o conteudo: #
loadn r0, #'#'
store 27267, r0

; endereco temporario(27266) recebe o conteudo: #
loadn r0, #'#'
store 27266, r0

; endereco temporario(27265) recebe o conteudo:  
loadn r0, #' '
store 27265, r0

; endereco temporario(27264) recebe o conteudo: #
loadn r0, #'#'
store 27264, r0

; endereco temporario(27263) recebe o conteudo: #
loadn r0, #'#'
store 27263, r0

; endereco temporario(27262) recebe o conteudo: .
loadn r0, #'.'
store 27262, r0

; endereco temporario(27261) recebe o conteudo: #
loadn r0, #'#'
store 27261, r0

; endereco temporario(27260) recebe o conteudo: #
loadn r0, #'#'
store 27260, r0

; endereco temporario(27259) recebe o conteudo: .
loadn r0, #'.'
store 27259, r0

; endereco temporario(27258) recebe o conteudo: #
loadn r0, #'#'
store 27258, r0

; endereco temporario(27257) recebe o conteudo: #
loadn r0, #'#'
store 27257, r0

; endereco temporario(27256) recebe o conteudo: #
loadn r0, #'#'
store 27256, r0

; endereco temporario(27255) recebe o conteudo: 0
loadn r0, #0
store 27255, r0

; endereco temporario(27254) recebe o conteudo: #
loadn r0, #'#'
store 27254, r0

; endereco temporario(27253) recebe o conteudo: #
loadn r0, #'#'
store 27253, r0

; endereco temporario(27252) recebe o conteudo: #
loadn r0, #'#'
store 27252, r0

; endereco temporario(27251) recebe o conteudo: .
loadn r0, #'.'
store 27251, r0

; endereco temporario(27250) recebe o conteudo: #
loadn r0, #'#'
store 27250, r0

; endereco temporario(27249) recebe o conteudo: #
loadn r0, #'#'
store 27249, r0

; endereco temporario(27248) recebe o conteudo: .
loadn r0, #'.'
store 27248, r0

; endereco temporario(27247) recebe o conteudo: #
loadn r0, #'#'
store 27247, r0

; endereco temporario(27246) recebe o conteudo: #
loadn r0, #'#'
store 27246, r0

; endereco temporario(27245) recebe o conteudo:  
loadn r0, #' '
store 27245, r0

; endereco temporario(27244) recebe o conteudo: #
loadn r0, #'#'
store 27244, r0

; endereco temporario(27243) recebe o conteudo: #
loadn r0, #'#'
store 27243, r0

; endereco temporario(27242) recebe o conteudo: #
loadn r0, #'#'
store 27242, r0

; endereco temporario(27241) recebe o conteudo: #
loadn r0, #'#'
store 27241, r0

; endereco temporario(27240) recebe o conteudo: #
loadn r0, #'#'
store 27240, r0

; endereco temporario(27239) recebe o conteudo: #
loadn r0, #'#'
store 27239, r0

; endereco temporario(27238) recebe o conteudo: #
loadn r0, #'#'
store 27238, r0

; endereco temporario(27237) recebe o conteudo: #
loadn r0, #'#'
store 27237, r0

; endereco temporario(27236) recebe o conteudo:  
loadn r0, #' '
store 27236, r0

; endereco temporario(27235) recebe o conteudo: #
loadn r0, #'#'
store 27235, r0

; endereco temporario(27234) recebe o conteudo: #
loadn r0, #'#'
store 27234, r0

; endereco temporario(27233) recebe o conteudo: .
loadn r0, #'.'
store 27233, r0

; endereco temporario(27232) recebe o conteudo: #
loadn r0, #'#'
store 27232, r0

; endereco temporario(27231) recebe o conteudo: #
loadn r0, #'#'
store 27231, r0

; endereco temporario(27230) recebe o conteudo: .
loadn r0, #'.'
store 27230, r0

; endereco temporario(27229) recebe o conteudo: #
loadn r0, #'#'
store 27229, r0

; endereco temporario(27228) recebe o conteudo: #
loadn r0, #'#'
store 27228, r0

; endereco temporario(27227) recebe o conteudo: #
loadn r0, #'#'
store 27227, r0

; endereco temporario(27226) recebe o conteudo: 0
loadn r0, #0
store 27226, r0

; endereco temporario(27225) recebe o conteudo: #
loadn r0, #'#'
store 27225, r0

; endereco temporario(27224) recebe o conteudo: .
loadn r0, #'.'
store 27224, r0

; endereco temporario(27223) recebe o conteudo: .
loadn r0, #'.'
store 27223, r0

; endereco temporario(27222) recebe o conteudo: .
loadn r0, #'.'
store 27222, r0

; endereco temporario(27221) recebe o conteudo: .
loadn r0, #'.'
store 27221, r0

; endereco temporario(27220) recebe o conteudo: .
loadn r0, #'.'
store 27220, r0

; endereco temporario(27219) recebe o conteudo: .
loadn r0, #'.'
store 27219, r0

; endereco temporario(27218) recebe o conteudo: #
loadn r0, #'#'
store 27218, r0

; endereco temporario(27217) recebe o conteudo: #
loadn r0, #'#'
store 27217, r0

; endereco temporario(27216) recebe o conteudo:  
loadn r0, #' '
store 27216, r0

; endereco temporario(27215) recebe o conteudo:  
loadn r0, #' '
store 27215, r0

; endereco temporario(27214) recebe o conteudo:  
loadn r0, #' '
store 27214, r0

; endereco temporario(27213) recebe o conteudo:  
loadn r0, #' '
store 27213, r0

; endereco temporario(27212) recebe o conteudo: #
loadn r0, #'#'
store 27212, r0

; endereco temporario(27211) recebe o conteudo: #
loadn r0, #'#'
store 27211, r0

; endereco temporario(27210) recebe o conteudo:  
loadn r0, #' '
store 27210, r0

; endereco temporario(27209) recebe o conteudo:  
loadn r0, #' '
store 27209, r0

; endereco temporario(27208) recebe o conteudo:  
loadn r0, #' '
store 27208, r0

; endereco temporario(27207) recebe o conteudo:  
loadn r0, #' '
store 27207, r0

; endereco temporario(27206) recebe o conteudo: #
loadn r0, #'#'
store 27206, r0

; endereco temporario(27205) recebe o conteudo: #
loadn r0, #'#'
store 27205, r0

; endereco temporario(27204) recebe o conteudo: .
loadn r0, #'.'
store 27204, r0

; endereco temporario(27203) recebe o conteudo: .
loadn r0, #'.'
store 27203, r0

; endereco temporario(27202) recebe o conteudo: .
loadn r0, #'.'
store 27202, r0

; endereco temporario(27201) recebe o conteudo: .
loadn r0, #'.'
store 27201, r0

; endereco temporario(27200) recebe o conteudo: .
loadn r0, #'.'
store 27200, r0

; endereco temporario(27199) recebe o conteudo: .
loadn r0, #'.'
store 27199, r0

; endereco temporario(27198) recebe o conteudo: #
loadn r0, #'#'
store 27198, r0

; endereco temporario(27197) recebe o conteudo: 0
loadn r0, #0
store 27197, r0

; endereco temporario(27196) recebe o conteudo: #
loadn r0, #'#'
store 27196, r0

; endereco temporario(27195) recebe o conteudo: .
loadn r0, #'.'
store 27195, r0

; endereco temporario(27194) recebe o conteudo: #
loadn r0, #'#'
store 27194, r0

; endereco temporario(27193) recebe o conteudo: #
loadn r0, #'#'
store 27193, r0

; endereco temporario(27192) recebe o conteudo: #
loadn r0, #'#'
store 27192, r0

; endereco temporario(27191) recebe o conteudo: #
loadn r0, #'#'
store 27191, r0

; endereco temporario(27190) recebe o conteudo: #
loadn r0, #'#'
store 27190, r0

; endereco temporario(27189) recebe o conteudo: #
loadn r0, #'#'
store 27189, r0

; endereco temporario(27188) recebe o conteudo: #
loadn r0, #'#'
store 27188, r0

; endereco temporario(27187) recebe o conteudo: #
loadn r0, #'#'
store 27187, r0

; endereco temporario(27186) recebe o conteudo: #
loadn r0, #'#'
store 27186, r0

; endereco temporario(27185) recebe o conteudo: #
loadn r0, #'#'
store 27185, r0

; endereco temporario(27184) recebe o conteudo:  
loadn r0, #' '
store 27184, r0

; endereco temporario(27183) recebe o conteudo: #
loadn r0, #'#'
store 27183, r0

; endereco temporario(27182) recebe o conteudo: #
loadn r0, #'#'
store 27182, r0

; endereco temporario(27181) recebe o conteudo:  
loadn r0, #' '
store 27181, r0

; endereco temporario(27180) recebe o conteudo: #
loadn r0, #'#'
store 27180, r0

; endereco temporario(27179) recebe o conteudo: #
loadn r0, #'#'
store 27179, r0

; endereco temporario(27178) recebe o conteudo: #
loadn r0, #'#'
store 27178, r0

; endereco temporario(27177) recebe o conteudo: #
loadn r0, #'#'
store 27177, r0

; endereco temporario(27176) recebe o conteudo: #
loadn r0, #'#'
store 27176, r0

; endereco temporario(27175) recebe o conteudo: #
loadn r0, #'#'
store 27175, r0

; endereco temporario(27174) recebe o conteudo: #
loadn r0, #'#'
store 27174, r0

; endereco temporario(27173) recebe o conteudo: #
loadn r0, #'#'
store 27173, r0

; endereco temporario(27172) recebe o conteudo: #
loadn r0, #'#'
store 27172, r0

; endereco temporario(27171) recebe o conteudo: #
loadn r0, #'#'
store 27171, r0

; endereco temporario(27170) recebe o conteudo: .
loadn r0, #'.'
store 27170, r0

; endereco temporario(27169) recebe o conteudo: #
loadn r0, #'#'
store 27169, r0

; endereco temporario(27168) recebe o conteudo: 0
loadn r0, #0
store 27168, r0

; endereco temporario(27167) recebe o conteudo: #
loadn r0, #'#'
store 27167, r0

; endereco temporario(27166) recebe o conteudo: .
loadn r0, #'.'
store 27166, r0

; endereco temporario(27165) recebe o conteudo: #
loadn r0, #'#'
store 27165, r0

; endereco temporario(27164) recebe o conteudo: #
loadn r0, #'#'
store 27164, r0

; endereco temporario(27163) recebe o conteudo: #
loadn r0, #'#'
store 27163, r0

; endereco temporario(27162) recebe o conteudo: #
loadn r0, #'#'
store 27162, r0

; endereco temporario(27161) recebe o conteudo: #
loadn r0, #'#'
store 27161, r0

; endereco temporario(27160) recebe o conteudo: #
loadn r0, #'#'
store 27160, r0

; endereco temporario(27159) recebe o conteudo: #
loadn r0, #'#'
store 27159, r0

; endereco temporario(27158) recebe o conteudo: #
loadn r0, #'#'
store 27158, r0

; endereco temporario(27157) recebe o conteudo: #
loadn r0, #'#'
store 27157, r0

; endereco temporario(27156) recebe o conteudo: #
loadn r0, #'#'
store 27156, r0

; endereco temporario(27155) recebe o conteudo:  
loadn r0, #' '
store 27155, r0

; endereco temporario(27154) recebe o conteudo: #
loadn r0, #'#'
store 27154, r0

; endereco temporario(27153) recebe o conteudo: #
loadn r0, #'#'
store 27153, r0

; endereco temporario(27152) recebe o conteudo:  
loadn r0, #' '
store 27152, r0

; endereco temporario(27151) recebe o conteudo: #
loadn r0, #'#'
store 27151, r0

; endereco temporario(27150) recebe o conteudo: #
loadn r0, #'#'
store 27150, r0

; endereco temporario(27149) recebe o conteudo: #
loadn r0, #'#'
store 27149, r0

; endereco temporario(27148) recebe o conteudo: #
loadn r0, #'#'
store 27148, r0

; endereco temporario(27147) recebe o conteudo: #
loadn r0, #'#'
store 27147, r0

; endereco temporario(27146) recebe o conteudo: #
loadn r0, #'#'
store 27146, r0

; endereco temporario(27145) recebe o conteudo: #
loadn r0, #'#'
store 27145, r0

; endereco temporario(27144) recebe o conteudo: #
loadn r0, #'#'
store 27144, r0

; endereco temporario(27143) recebe o conteudo: #
loadn r0, #'#'
store 27143, r0

; endereco temporario(27142) recebe o conteudo: #
loadn r0, #'#'
store 27142, r0

; endereco temporario(27141) recebe o conteudo: .
loadn r0, #'.'
store 27141, r0

; endereco temporario(27140) recebe o conteudo: #
loadn r0, #'#'
store 27140, r0

; endereco temporario(27139) recebe o conteudo: 0
loadn r0, #0
store 27139, r0

; endereco temporario(27138) recebe o conteudo: #
loadn r0, #'#'
store 27138, r0

; endereco temporario(27137) recebe o conteudo: .
loadn r0, #'.'
store 27137, r0

; endereco temporario(27136) recebe o conteudo: .
loadn r0, #'.'
store 27136, r0

; endereco temporario(27135) recebe o conteudo: .
loadn r0, #'.'
store 27135, r0

; endereco temporario(27134) recebe o conteudo: .
loadn r0, #'.'
store 27134, r0

; endereco temporario(27133) recebe o conteudo: .
loadn r0, #'.'
store 27133, r0

; endereco temporario(27132) recebe o conteudo: .
loadn r0, #'.'
store 27132, r0

; endereco temporario(27131) recebe o conteudo: .
loadn r0, #'.'
store 27131, r0

; endereco temporario(27130) recebe o conteudo: .
loadn r0, #'.'
store 27130, r0

; endereco temporario(27129) recebe o conteudo: .
loadn r0, #'.'
store 27129, r0

; endereco temporario(27128) recebe o conteudo: .
loadn r0, #'.'
store 27128, r0

; endereco temporario(27127) recebe o conteudo: .
loadn r0, #'.'
store 27127, r0

; endereco temporario(27126) recebe o conteudo:  
loadn r0, #' '
store 27126, r0

; endereco temporario(27125) recebe o conteudo:  
loadn r0, #' '
store 27125, r0

; endereco temporario(27124) recebe o conteudo:  
loadn r0, #' '
store 27124, r0

; endereco temporario(27123) recebe o conteudo:  
loadn r0, #' '
store 27123, r0

; endereco temporario(27122) recebe o conteudo: .
loadn r0, #'.'
store 27122, r0

; endereco temporario(27121) recebe o conteudo: .
loadn r0, #'.'
store 27121, r0

; endereco temporario(27120) recebe o conteudo: .
loadn r0, #'.'
store 27120, r0

; endereco temporario(27119) recebe o conteudo: .
loadn r0, #'.'
store 27119, r0

; endereco temporario(27118) recebe o conteudo: .
loadn r0, #'.'
store 27118, r0

; endereco temporario(27117) recebe o conteudo: .
loadn r0, #'.'
store 27117, r0

; endereco temporario(27116) recebe o conteudo: .
loadn r0, #'.'
store 27116, r0

; endereco temporario(27115) recebe o conteudo: .
loadn r0, #'.'
store 27115, r0

; endereco temporario(27114) recebe o conteudo: .
loadn r0, #'.'
store 27114, r0

; endereco temporario(27113) recebe o conteudo: .
loadn r0, #'.'
store 27113, r0

; endereco temporario(27112) recebe o conteudo: .
loadn r0, #'.'
store 27112, r0

; endereco temporario(27111) recebe o conteudo: #
loadn r0, #'#'
store 27111, r0

; endereco temporario(27110) recebe o conteudo: 0
loadn r0, #0
store 27110, r0

; endereco temporario(27109) recebe o conteudo: #
loadn r0, #'#'
store 27109, r0

; endereco temporario(27108) recebe o conteudo: #
loadn r0, #'#'
store 27108, r0

; endereco temporario(27107) recebe o conteudo: #
loadn r0, #'#'
store 27107, r0

; endereco temporario(27106) recebe o conteudo: #
loadn r0, #'#'
store 27106, r0

; endereco temporario(27105) recebe o conteudo: #
loadn r0, #'#'
store 27105, r0

; endereco temporario(27104) recebe o conteudo: #
loadn r0, #'#'
store 27104, r0

; endereco temporario(27103) recebe o conteudo: #
loadn r0, #'#'
store 27103, r0

; endereco temporario(27102) recebe o conteudo: #
loadn r0, #'#'
store 27102, r0

; endereco temporario(27101) recebe o conteudo: #
loadn r0, #'#'
store 27101, r0

; endereco temporario(27100) recebe o conteudo: #
loadn r0, #'#'
store 27100, r0

; endereco temporario(27099) recebe o conteudo: #
loadn r0, #'#'
store 27099, r0

; endereco temporario(27098) recebe o conteudo: #
loadn r0, #'#'
store 27098, r0

; endereco temporario(27097) recebe o conteudo: #
loadn r0, #'#'
store 27097, r0

; endereco temporario(27096) recebe o conteudo: #
loadn r0, #'#'
store 27096, r0

; endereco temporario(27095) recebe o conteudo: #
loadn r0, #'#'
store 27095, r0

; endereco temporario(27094) recebe o conteudo: #
loadn r0, #'#'
store 27094, r0

; endereco temporario(27093) recebe o conteudo: #
loadn r0, #'#'
store 27093, r0

; endereco temporario(27092) recebe o conteudo: #
loadn r0, #'#'
store 27092, r0

; endereco temporario(27091) recebe o conteudo: #
loadn r0, #'#'
store 27091, r0

; endereco temporario(27090) recebe o conteudo: #
loadn r0, #'#'
store 27090, r0

; endereco temporario(27089) recebe o conteudo: #
loadn r0, #'#'
store 27089, r0

; endereco temporario(27088) recebe o conteudo: #
loadn r0, #'#'
store 27088, r0

; endereco temporario(27087) recebe o conteudo: #
loadn r0, #'#'
store 27087, r0

; endereco temporario(27086) recebe o conteudo: #
loadn r0, #'#'
store 27086, r0

; endereco temporario(27085) recebe o conteudo: #
loadn r0, #'#'
store 27085, r0

; endereco temporario(27084) recebe o conteudo: #
loadn r0, #'#'
store 27084, r0

; endereco temporario(27083) recebe o conteudo: #
loadn r0, #'#'
store 27083, r0

; endereco temporario(27082) recebe o conteudo: #
loadn r0, #'#'
store 27082, r0

; endereco temporario(27081) recebe o conteudo: 0
loadn r0, #0
store 27081, r0

; @(107) INSTRUCAO - acerta o ponteiro da matriz/vetor
; correcao da stack
; stack = 27080
; variavel: cor alocada em 27080 com 1 bytes

; endereco temporario(27079) recebe o conteudo da variavel: cor_branca(28000)
load r0, 28000
store 27079, r0

load r0, 27079
store 27080, r0
;----- begin for -----
; endereco temporario(27079) recebe o conteudo da variavel: i(27983)
load r0, 27983
store 27079, r0

; endereco temporario(27078) recebe o conteudo: 0
loadn r0, #0
store 27078, r0

; assignment salvando no endereco apontado por: endereco temporario(27079) o conteudo de endereco temporario(27078)
load r0, 27078
; valor da stack: 27077
store 27983, r0 ; variavel i recebe o conteudo de r0

__loop_label_begin3__:
; endereco temporario(27079) recebe o conteudo da variavel: i(27983)
load r0, 27983
store 27079, r0

; endereco temporario(27078) recebe o conteudo: 30
loadn r0, #30
store 27078, r0

; @(111) INSTRUCAO - relacao_binaria
load r0, 27079
load r1, 27078
loadn r2, #27079
call __less_routine__
load r0, 27079
loadn r1, #0
cmp r0, r1
jeq __exit_loop_label3__
jmp __loop_label3_begin3__
__loop_label2_begin3__:
; endereco temporario(27079) recebe o conteudo da variavel: i(27983)
load r0, 27983
store 27079, r0

load r0, 27079
inc r0
store 27079, r0
store 27983, r0
jmp __loop_label_begin3__
__loop_label3_begin3__:
;----- begin for -----
; endereco temporario(27078) recebe o conteudo da variavel: j(27982)
load r0, 27982
store 27078, r0

; endereco temporario(27077) recebe o conteudo: 0
loadn r0, #0
store 27077, r0

; assignment salvando no endereco apontado por: endereco temporario(27078) o conteudo de endereco temporario(27077)
load r0, 27077
; valor da stack: 27076
store 27982, r0 ; variavel j recebe o conteudo de r0

__loop_label_begin4__:
; endereco temporario(27078) recebe o conteudo da variavel: j(27982)
load r0, 27982
store 27078, r0

; endereco temporario(27077) recebe o conteudo: 28
loadn r0, #28
store 27077, r0

; @(113) INSTRUCAO - relacao_binaria
load r0, 27078
load r1, 27077
loadn r2, #27078
call __less_routine__
load r0, 27078
loadn r1, #0
cmp r0, r1
jeq __exit_loop_label4__
jmp __loop_label3_begin4__
__loop_label2_begin4__:
; endereco temporario(27078) recebe o conteudo da variavel: j(27982)
load r0, 27982
store 27078, r0

load r0, 27078
inc r0
store 27078, r0
store 27982, r0
jmp __loop_label_begin4__
__loop_label3_begin4__:
; endereco temporario(27077) recebe o conteudo da variavel: i(27983)
load r0, 27983
store 27077, r0

; endereco temporario(27076) recebe o conteudo da variavel: j(27982)
load r0, 27982
store 27076, r0

; endereco temporario(27075) recebe o conteudo da variavel: mapa
load r0, 27076
load r1, 27077
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 27077, r1
; matriz, valor da stack 27077
; endereco temporario(27076) recebe o conteudo: '#'
loadn r0, #'#'
store 27076, r0

; @(115) INSTRUCAO - relacao_binaria
load r0, 27077
load r1, 27076
loadn r2, #27077
call __equal_routine__
load r0, 27077
loadn r1, #0
cmp r0, r1
jeq __exit_if_label5__
jmp __if_label5__
__if_label5__:
; endereco temporario(27077) recebe o conteudo da variavel: cor(27080)
load r0, 27080
store 27077, r0

; endereco temporario(27076) recebe o conteudo da variavel: cor_azul(27998)
load r0, 27998
store 27076, r0

; assignment salvando no endereco apontado por: endereco temporario(27077) o conteudo de endereco temporario(27076)
load r0, 27076
; valor da stack: 27075
store 27080, r0 ; variavel cor recebe o conteudo de r0

__exit_if_label5__:
; endereco temporario(27077) recebe o conteudo da variavel: i(27983)
load r0, 27983
store 27077, r0

; endereco temporario(27076) recebe o conteudo da variavel: j(27982)
load r0, 27982
store 27076, r0

; endereco temporario(27075) recebe o conteudo da variavel: mapa
load r0, 27076
load r1, 27077
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 27077, r1
; matriz, valor da stack 27077
; endereco temporario(27076) recebe o conteudo: '.'
loadn r0, #'.'
store 27076, r0

; @(118) INSTRUCAO - relacao_binaria
load r0, 27077
load r1, 27076
loadn r2, #27077
call __equal_routine__
load r0, 27077
loadn r1, #0
cmp r0, r1
jeq __exit_if_label6__
jmp __if_label6__
__if_label6__:
; endereco temporario(27077) recebe o conteudo da variavel: cor(27080)
load r0, 27080
store 27077, r0

; endereco temporario(27076) recebe o conteudo da variavel: cor_branca(28000)
load r0, 28000
store 27076, r0

; assignment salvando no endereco apontado por: endereco temporario(27077) o conteudo de endereco temporario(27076)
load r0, 27076
; valor da stack: 27075
store 27080, r0 ; variavel cor recebe o conteudo de r0

__exit_if_label6__:
; endereco temporario(27077) recebe o conteudo da variavel: i(27983)
load r0, 27983
store 27077, r0

; endereco temporario(27076) recebe o conteudo da variavel: j(27982)
load r0, 27982
store 27076, r0

; endereco temporario(27075) recebe o conteudo da variavel: mapa
load r0, 27076
load r1, 27077
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 27077, r1
; matriz, valor da stack 27077
; endereco temporario(27076) recebe o conteudo: ' '
loadn r0, #' '
store 27076, r0

; @(121) INSTRUCAO - relacao_binaria
load r0, 27077
load r1, 27076
loadn r2, #27077
call __equal_routine__
load r0, 27077
loadn r1, #0
cmp r0, r1
jeq __exit_if_label7__
jmp __if_label7__
__if_label7__:
; endereco temporario(27077) recebe o conteudo da variavel: cor(27080)
load r0, 27080
store 27077, r0

; endereco temporario(27076) recebe o conteudo da variavel: cor_branca(28000)
load r0, 28000
store 27076, r0

; assignment salvando no endereco apontado por: endereco temporario(27077) o conteudo de endereco temporario(27076)
load r0, 27076
; valor da stack: 27075
store 27080, r0 ; variavel cor recebe o conteudo de r0

__exit_if_label7__:
; endereco temporario(27077) recebe o conteudo da variavel: i(27983)
load r0, 27983
store 27077, r0

; endereco temporario(27076) recebe o conteudo da variavel: j(27982)
load r0, 27982
store 27076, r0

; endereco temporario(27075) recebe o conteudo da variavel: i(27983)
load r0, 27983
store 27075, r0

; endereco temporario(27074) recebe o conteudo da variavel: j(27982)
load r0, 27982
store 27074, r0

; endereco temporario(27073) recebe o conteudo da variavel: mapa
load r0, 27074
load r1, 27075
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 27075, r1
; matriz, valor da stack 27075
; endereco temporario(27074) recebe o conteudo da variavel: cor(27080)
load r0, 27080
store 27074, r0

; expressao_binaria: 27075 + 27074
load r0, 27075
load r1, 27074
add r2, r0, r1
store 27075, r2

; @(124) INSTRUCAO - ; printf(%c);
loadn r0, #'%'
store 27074, r0
loadn r0, #'c'
store 27073, r0
loadn r0, #27075
store 27072, r0
loadn r0, #0
store 27071, r0
load r0, 27077
load r1, 27076
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #27074
call __printf__
jmp __loop_label2_begin4__
__exit_loop_label4__:
; ----- end for -----
jmp __loop_label2_begin3__
__exit_loop_label3__:
; ----- end for -----
; endereco temporario(27070) recebe o conteudo: 1
loadn r0, #1
store 27070, r0

; endereco temporario(27069) recebe o conteudo: 29
loadn r0, #29
store 27069, r0

; @(129) INSTRUCAO - ; printf(Jogo do);
loadn r0, #'J'
store 27068, r0
loadn r0, #'o'
store 27067, r0
loadn r0, #'g'
store 27066, r0
loadn r0, #'o'
store 27065, r0
loadn r0, #' '
store 27064, r0
loadn r0, #'d'
store 27063, r0
loadn r0, #'o'
store 27062, r0
loadn r0, #0
store 27061, r0
load r0, 27070
load r1, 27069
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #27068
call __printf__
; endereco temporario(27060) recebe o conteudo: 2
loadn r0, #2
store 27060, r0

; endereco temporario(27059) recebe o conteudo: 29
loadn r0, #29
store 27059, r0

; @(130) INSTRUCAO - ; printf(Pacman v2.0);
loadn r0, #'P'
store 27058, r0
loadn r0, #'a'
store 27057, r0
loadn r0, #'c'
store 27056, r0
loadn r0, #'m'
store 27055, r0
loadn r0, #'a'
store 27054, r0
loadn r0, #'n'
store 27053, r0
loadn r0, #' '
store 27052, r0
loadn r0, #'v'
store 27051, r0
loadn r0, #'2'
store 27050, r0
loadn r0, #'.'
store 27049, r0
loadn r0, #'0'
store 27048, r0
loadn r0, #0
store 27047, r0
load r0, 27060
load r1, 27059
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #27058
call __printf__
; endereco temporario(27046) recebe o conteudo: 4
loadn r0, #4
store 27046, r0

; endereco temporario(27045) recebe o conteudo: 29
loadn r0, #29
store 27045, r0

; @(131) INSTRUCAO - ; printf(Controles:);
loadn r0, #'C'
store 27044, r0
loadn r0, #'o'
store 27043, r0
loadn r0, #'n'
store 27042, r0
loadn r0, #'t'
store 27041, r0
loadn r0, #'r'
store 27040, r0
loadn r0, #'o'
store 27039, r0
loadn r0, #'l'
store 27038, r0
loadn r0, #'e'
store 27037, r0
loadn r0, #'s'
store 27036, r0
loadn r0, #':'
store 27035, r0
loadn r0, #0
store 27034, r0
load r0, 27046
load r1, 27045
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #27044
call __printf__
; endereco temporario(27033) recebe o conteudo: 5
loadn r0, #5
store 27033, r0

; endereco temporario(27032) recebe o conteudo: 29
loadn r0, #29
store 27032, r0

; @(132) INSTRUCAO - ; printf(w - Sobe);
loadn r0, #'w'
store 27031, r0
loadn r0, #' '
store 27030, r0
loadn r0, #'-'
store 27029, r0
loadn r0, #' '
store 27028, r0
loadn r0, #'S'
store 27027, r0
loadn r0, #'o'
store 27026, r0
loadn r0, #'b'
store 27025, r0
loadn r0, #'e'
store 27024, r0
loadn r0, #0
store 27023, r0
load r0, 27033
load r1, 27032
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #27031
call __printf__
; endereco temporario(27022) recebe o conteudo: 6
loadn r0, #6
store 27022, r0

; endereco temporario(27021) recebe o conteudo: 29
loadn r0, #29
store 27021, r0

; @(133) INSTRUCAO - ; printf(a - Esq);
loadn r0, #'a'
store 27020, r0
loadn r0, #' '
store 27019, r0
loadn r0, #'-'
store 27018, r0
loadn r0, #' '
store 27017, r0
loadn r0, #'E'
store 27016, r0
loadn r0, #'s'
store 27015, r0
loadn r0, #'q'
store 27014, r0
loadn r0, #0
store 27013, r0
load r0, 27022
load r1, 27021
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #27020
call __printf__
; endereco temporario(27012) recebe o conteudo: 7
loadn r0, #7
store 27012, r0

; endereco temporario(27011) recebe o conteudo: 29
loadn r0, #29
store 27011, r0

; @(134) INSTRUCAO - ; printf(s - Desce);
loadn r0, #'s'
store 27010, r0
loadn r0, #' '
store 27009, r0
loadn r0, #'-'
store 27008, r0
loadn r0, #' '
store 27007, r0
loadn r0, #'D'
store 27006, r0
loadn r0, #'e'
store 27005, r0
loadn r0, #'s'
store 27004, r0
loadn r0, #'c'
store 27003, r0
loadn r0, #'e'
store 27002, r0
loadn r0, #0
store 27001, r0
load r0, 27012
load r1, 27011
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #27010
call __printf__
; endereco temporario(27000) recebe o conteudo: 8
loadn r0, #8
store 27000, r0

; endereco temporario(26999) recebe o conteudo: 29
loadn r0, #29
store 26999, r0

; @(135) INSTRUCAO - ; printf(d - Dir);
loadn r0, #'d'
store 26998, r0
loadn r0, #' '
store 26997, r0
loadn r0, #'-'
store 26996, r0
loadn r0, #' '
store 26995, r0
loadn r0, #'D'
store 26994, r0
loadn r0, #'i'
store 26993, r0
loadn r0, #'r'
store 26992, r0
loadn r0, #0
store 26991, r0
load r0, 27000
load r1, 26999
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #26998
call __printf__
; endereco temporario(26990) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26990, r0

; endereco temporario(26989) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26989, r0

; endereco temporario(26988) recebe o conteudo da variavel: c(27988)
load r0, 27988
store 26988, r0

; @(138) INSTRUCAO - ; printf(%c);
loadn r0, #'%'
store 26987, r0
loadn r0, #'c'
store 26986, r0
loadn r0, #26988
store 26985, r0
loadn r0, #0
store 26984, r0
load r0, 26990
load r1, 26989
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #26987
call __printf__
; variavel: score alocada em 26983 com 1 bytes

; endereco temporario(26982) recebe o conteudo: 0
loadn r0, #0
store 26982, r0

load r0, 26982
store 26983, r0
; endereco temporario(26982) recebe o conteudo: 10
loadn r0, #10
store 26982, r0

; endereco temporario(26981) recebe o conteudo: 29
loadn r0, #29
store 26981, r0

; endereco temporario(26980) recebe o conteudo da variavel: score(26983)
load r0, 26983
store 26980, r0

; @(142) INSTRUCAO - ; printf(Score: %d);
loadn r0, #'S'
store 26979, r0
loadn r0, #'c'
store 26978, r0
loadn r0, #'o'
store 26977, r0
loadn r0, #'r'
store 26976, r0
loadn r0, #'e'
store 26975, r0
loadn r0, #':'
store 26974, r0
loadn r0, #' '
store 26973, r0
loadn r0, #'%'
store 26972, r0
loadn r0, #'d'
store 26971, r0
;comeco da string: 26979
;printf_args.size(): 1
; 26980
;j: 0
loadn r0, #26980
store 26970, r0
loadn r0, #0
store 26969, r0
load r0, 26982
load r1, 26981
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #26979
call __printf__
; variavel: vidas alocada em 26968 com 1 bytes

; endereco temporario(26967) recebe o conteudo: 3
loadn r0, #3
store 26967, r0

load r0, 26967
store 26968, r0
; endereco temporario(26967) recebe o conteudo: 11
loadn r0, #11
store 26967, r0

; endereco temporario(26966) recebe o conteudo: 29
loadn r0, #29
store 26966, r0

; endereco temporario(26965) recebe o conteudo da variavel: vidas(26968)
load r0, 26968
store 26965, r0

; @(146) INSTRUCAO - ; printf(Vidas: %d);
loadn r0, #'V'
store 26964, r0
loadn r0, #'i'
store 26963, r0
loadn r0, #'d'
store 26962, r0
loadn r0, #'a'
store 26961, r0
loadn r0, #'s'
store 26960, r0
loadn r0, #':'
store 26959, r0
loadn r0, #' '
store 26958, r0
loadn r0, #'%'
store 26957, r0
loadn r0, #'d'
store 26956, r0
;comeco da string: 26964
;printf_args.size(): 1
; 26965
;j: 0
loadn r0, #26965
store 26955, r0
loadn r0, #0
store 26954, r0
load r0, 26967
load r1, 26966
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #26964
call __printf__
; variavel: key alocada em 26953 com 1 bytes

; endereco temporario(26952) recebe o conteudo: 'l'
loadn r0, #'l'
store 26952, r0

load r0, 26952
store 26953, r0
; @(152) INSTRUCAO - while
__loop_label_begin5__:
; endereco temporario(26952) recebe o conteudo da variavel: key(26953)
load r0, 26953
store 26952, r0

; endereco temporario(26951) recebe o conteudo: 'q'
loadn r0, #'q'
store 26951, r0

; @(152) INSTRUCAO - relacao_binaria
load r0, 26952
load r1, 26951
loadn r2, #26952
call __not_equal_routine__
load r0, 26952
loadn r1, #0
cmp r0, r1
jeq __exit_loop_label5__
jmp __loop_label5__
__loop_label5__:
; endereco temporario(26951) recebe o conteudo da variavel: key(26953)
load r0, 26953
store 26951, r0

inchar r0
store 26950, r0
; assignment salvando no endereco apontado por: endereco temporario(26951) o conteudo de endereco temporario(26950)
load r0, 26950
; valor da stack: 26949
store 26953, r0 ; variavel key recebe o conteudo de r0

; endereco temporario(26951) recebe o conteudo da variavel: key(26953)
load r0, 26953
store 26951, r0

; endereco temporario(26950) recebe o conteudo: 'a'
loadn r0, #'a'
store 26950, r0

; @(157) INSTRUCAO - relacao_binaria
load r0, 26951
load r1, 26950
loadn r2, #26951
call __equal_routine__
; endereco temporario(26950) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26950, r0

; endereco temporario(26949) recebe o conteudo: 1
loadn r0, #1
store 26949, r0

; @(157) INSTRUCAO - relacao_binaria
load r0, 26950
load r1, 26949
loadn r2, #26950
call __more_routine__
; @(157) INSTRUCAO - relacao_binaria
load r0, 26951
load r1, 26950
loadn r2, #26951
call __and_routine__
load r0, 26951
loadn r1, #0
cmp r0, r1
jeq __exit_if_label8__
jmp __if_label8__
__if_label8__:
; endereco temporario(26951) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26951, r0

; endereco temporario(26950) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26950, r0

; endereco temporario(26949) recebe o conteudo: 1
loadn r0, #1
store 26949, r0

; expressao_binaria: 26950 - 26949
load r0, 26950
load r1, 26949
sub r2, r0, r1
store 26950, r2

; endereco temporario(26949) recebe o conteudo da variavel: mapa
load r0, 26950
load r1, 26951
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 26951, r1
; matriz, valor da stack 26951
; endereco temporario(26950) recebe o conteudo: '#'
loadn r0, #'#'
store 26950, r0

; @(160) INSTRUCAO - relacao_binaria
load r0, 26951
load r1, 26950
loadn r2, #26951
call __equal_routine__
load r0, 26951
loadn r1, #0
cmp r0, r1
jeq __exit_if_label9__
jmp __if_label9__
__if_label9__:
jmp __loop_label_begin5__
__exit_if_label9__:
; endereco temporario(26951) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26951, r0

; endereco temporario(26950) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26950, r0

; @(163) INSTRUCAO - ; printf( );
loadn r0, #' '
store 26949, r0
loadn r0, #0
store 26948, r0
load r0, 26951
load r1, 26950
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #26949
call __printf__
; endereco temporario(26947) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26947, r0

load r0, 26947
dec r0
store 26947, r0
store 27984, r0
; endereco temporario(26946) recebe o conteudo da variavel: direcao(27987)
load r0, 27987
store 26946, r0

; endereco temporario(26945) recebe o conteudo: 0
loadn r0, #0
store 26945, r0

; assignment salvando no endereco apontado por: endereco temporario(26946) o conteudo de endereco temporario(26945)
load r0, 26945
; valor da stack: 26944
store 27987, r0 ; variavel direcao recebe o conteudo de r0

; @(166) INSTRUCAO - ; call funcao: resolve_direcao
; @(166) INSTRUCAO - ; salvando as variaveis do escopo
load r0, 27983
push r0
load r0, 27982
push r0
load r0, 27981
push r0
load r0, 27080
push r0
load r0, 26983
push r0
load r0, 26968
push r0
load r0, 26953
push r0
; @(166) INSTRUCAO - ; nao tem parametros
call __function_label_resolve_direcao__
; @(166) INSTRUCAO - ; recupera as variaveis do escopo da funcao
pop r0
store 26953, r0
pop r0
store 26968, r0
pop r0
store 26983, r0
pop r0
store 27080, r0
pop r0
store 27981, r0
pop r0
store 27982, r0
pop r0
store 27983, r0

__exit_if_label8__:
; endereco temporario(26946) recebe o conteudo da variavel: key(26953)
load r0, 26953
store 26946, r0

; endereco temporario(26945) recebe o conteudo: 'd'
loadn r0, #'d'
store 26945, r0

; @(170) INSTRUCAO - relacao_binaria
load r0, 26946
load r1, 26945
loadn r2, #26946
call __equal_routine__
; endereco temporario(26945) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26945, r0

; endereco temporario(26944) recebe o conteudo: 27
loadn r0, #27
store 26944, r0

; @(170) INSTRUCAO - relacao_binaria
load r0, 26945
load r1, 26944
loadn r2, #26945
call __less_routine__
; @(170) INSTRUCAO - relacao_binaria
load r0, 26946
load r1, 26945
loadn r2, #26946
call __and_routine__
load r0, 26946
loadn r1, #0
cmp r0, r1
jeq __exit_if_label10__
jmp __if_label10__
__if_label10__:
; endereco temporario(26946) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26946, r0

; endereco temporario(26945) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26945, r0

; endereco temporario(26944) recebe o conteudo: 1
loadn r0, #1
store 26944, r0

; expressao_binaria: 26945 + 26944
load r0, 26945
load r1, 26944
add r2, r0, r1
store 26945, r2

; endereco temporario(26944) recebe o conteudo da variavel: mapa
load r0, 26945
load r1, 26946
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 26946, r1
; matriz, valor da stack 26946
; endereco temporario(26945) recebe o conteudo: '#'
loadn r0, #'#'
store 26945, r0

; @(173) INSTRUCAO - relacao_binaria
load r0, 26946
load r1, 26945
loadn r2, #26946
call __equal_routine__
load r0, 26946
loadn r1, #0
cmp r0, r1
jeq __exit_if_label11__
jmp __if_label11__
__if_label11__:
jmp __loop_label_begin5__
__exit_if_label11__:
; endereco temporario(26946) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26946, r0

; endereco temporario(26945) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26945, r0

; @(176) INSTRUCAO - ; printf( );
loadn r0, #' '
store 26944, r0
loadn r0, #0
store 26943, r0
load r0, 26946
load r1, 26945
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #26944
call __printf__
; endereco temporario(26942) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26942, r0

load r0, 26942
inc r0
store 26942, r0
store 27984, r0
; endereco temporario(26941) recebe o conteudo da variavel: direcao(27987)
load r0, 27987
store 26941, r0

; endereco temporario(26940) recebe o conteudo: 1
loadn r0, #1
store 26940, r0

; assignment salvando no endereco apontado por: endereco temporario(26941) o conteudo de endereco temporario(26940)
load r0, 26940
; valor da stack: 26939
store 27987, r0 ; variavel direcao recebe o conteudo de r0

; @(179) INSTRUCAO - ; call funcao: resolve_direcao
; @(179) INSTRUCAO - ; salvando as variaveis do escopo
load r0, 27983
push r0
load r0, 27982
push r0
load r0, 27981
push r0
load r0, 27080
push r0
load r0, 26983
push r0
load r0, 26968
push r0
load r0, 26953
push r0
; @(179) INSTRUCAO - ; nao tem parametros
call __function_label_resolve_direcao__
; @(179) INSTRUCAO - ; recupera as variaveis do escopo da funcao
pop r0
store 26953, r0
pop r0
store 26968, r0
pop r0
store 26983, r0
pop r0
store 27080, r0
pop r0
store 27981, r0
pop r0
store 27982, r0
pop r0
store 27983, r0

__exit_if_label10__:
; endereco temporario(26941) recebe o conteudo da variavel: key(26953)
load r0, 26953
store 26941, r0

; endereco temporario(26940) recebe o conteudo: 's'
loadn r0, #'s'
store 26940, r0

; @(183) INSTRUCAO - relacao_binaria
load r0, 26941
load r1, 26940
loadn r2, #26941
call __equal_routine__
; endereco temporario(26940) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26940, r0

; endereco temporario(26939) recebe o conteudo: 28
loadn r0, #28
store 26939, r0

; @(183) INSTRUCAO - relacao_binaria
load r0, 26940
load r1, 26939
loadn r2, #26940
call __less_routine__
; @(183) INSTRUCAO - relacao_binaria
load r0, 26941
load r1, 26940
loadn r2, #26941
call __and_routine__
load r0, 26941
loadn r1, #0
cmp r0, r1
jeq __exit_if_label12__
jmp __if_label12__
__if_label12__:
; endereco temporario(26941) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26941, r0

; endereco temporario(26940) recebe o conteudo: 1
loadn r0, #1
store 26940, r0

; expressao_binaria: 26941 + 26940
load r0, 26941
load r1, 26940
add r2, r0, r1
store 26941, r2

; endereco temporario(26940) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26940, r0

; endereco temporario(26939) recebe o conteudo da variavel: mapa
load r0, 26940
load r1, 26941
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 26941, r1
; matriz, valor da stack 26941
; endereco temporario(26940) recebe o conteudo: '#'
loadn r0, #'#'
store 26940, r0

; @(186) INSTRUCAO - relacao_binaria
load r0, 26941
load r1, 26940
loadn r2, #26941
call __equal_routine__
load r0, 26941
loadn r1, #0
cmp r0, r1
jeq __exit_if_label13__
jmp __if_label13__
__if_label13__:
jmp __loop_label_begin5__
__exit_if_label13__:
; endereco temporario(26941) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26941, r0

; endereco temporario(26940) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26940, r0

; @(189) INSTRUCAO - ; printf( );
loadn r0, #' '
store 26939, r0
loadn r0, #0
store 26938, r0
load r0, 26941
load r1, 26940
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #26939
call __printf__
; endereco temporario(26937) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26937, r0

load r0, 26937
inc r0
store 26937, r0
store 27985, r0
; endereco temporario(26936) recebe o conteudo da variavel: direcao(27987)
load r0, 27987
store 26936, r0

; endereco temporario(26935) recebe o conteudo: 3
loadn r0, #3
store 26935, r0

; assignment salvando no endereco apontado por: endereco temporario(26936) o conteudo de endereco temporario(26935)
load r0, 26935
; valor da stack: 26934
store 27987, r0 ; variavel direcao recebe o conteudo de r0

; @(192) INSTRUCAO - ; call funcao: resolve_direcao
; @(192) INSTRUCAO - ; salvando as variaveis do escopo
load r0, 27983
push r0
load r0, 27982
push r0
load r0, 27981
push r0
load r0, 27080
push r0
load r0, 26983
push r0
load r0, 26968
push r0
load r0, 26953
push r0
; @(192) INSTRUCAO - ; nao tem parametros
call __function_label_resolve_direcao__
; @(192) INSTRUCAO - ; recupera as variaveis do escopo da funcao
pop r0
store 26953, r0
pop r0
store 26968, r0
pop r0
store 26983, r0
pop r0
store 27080, r0
pop r0
store 27981, r0
pop r0
store 27982, r0
pop r0
store 27983, r0

__exit_if_label12__:
; endereco temporario(26936) recebe o conteudo da variavel: key(26953)
load r0, 26953
store 26936, r0

; endereco temporario(26935) recebe o conteudo: 'w'
loadn r0, #'w'
store 26935, r0

; @(196) INSTRUCAO - relacao_binaria
load r0, 26936
load r1, 26935
loadn r2, #26936
call __equal_routine__
; endereco temporario(26935) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26935, r0

; endereco temporario(26934) recebe o conteudo: 1
loadn r0, #1
store 26934, r0

; @(196) INSTRUCAO - relacao_binaria
load r0, 26935
load r1, 26934
loadn r2, #26935
call __more_routine__
; @(196) INSTRUCAO - relacao_binaria
load r0, 26936
load r1, 26935
loadn r2, #26936
call __and_routine__
load r0, 26936
loadn r1, #0
cmp r0, r1
jeq __exit_if_label14__
jmp __if_label14__
__if_label14__:
; endereco temporario(26936) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26936, r0

; endereco temporario(26935) recebe o conteudo: 1
loadn r0, #1
store 26935, r0

; expressao_binaria: 26936 - 26935
load r0, 26936
load r1, 26935
sub r2, r0, r1
store 26936, r2

; endereco temporario(26935) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26935, r0

; endereco temporario(26934) recebe o conteudo da variavel: mapa
load r0, 26935
load r1, 26936
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 26936, r1
; matriz, valor da stack 26936
; endereco temporario(26935) recebe o conteudo: '#'
loadn r0, #'#'
store 26935, r0

; @(199) INSTRUCAO - relacao_binaria
load r0, 26936
load r1, 26935
loadn r2, #26936
call __equal_routine__
load r0, 26936
loadn r1, #0
cmp r0, r1
jeq __exit_if_label15__
jmp __if_label15__
__if_label15__:
jmp __loop_label_begin5__
__exit_if_label15__:
; endereco temporario(26936) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26936, r0

; endereco temporario(26935) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26935, r0

; @(202) INSTRUCAO - ; printf( );
loadn r0, #' '
store 26934, r0
loadn r0, #0
store 26933, r0
load r0, 26936
load r1, 26935
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #26934
call __printf__
; endereco temporario(26932) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26932, r0

load r0, 26932
dec r0
store 26932, r0
store 27985, r0
; endereco temporario(26931) recebe o conteudo da variavel: direcao(27987)
load r0, 27987
store 26931, r0

; endereco temporario(26930) recebe o conteudo: 2
loadn r0, #2
store 26930, r0

; assignment salvando no endereco apontado por: endereco temporario(26931) o conteudo de endereco temporario(26930)
load r0, 26930
; valor da stack: 26929
store 27987, r0 ; variavel direcao recebe o conteudo de r0

; @(205) INSTRUCAO - ; call funcao: resolve_direcao
; @(205) INSTRUCAO - ; salvando as variaveis do escopo
load r0, 27983
push r0
load r0, 27982
push r0
load r0, 27981
push r0
load r0, 27080
push r0
load r0, 26983
push r0
load r0, 26968
push r0
load r0, 26953
push r0
; @(205) INSTRUCAO - ; nao tem parametros
call __function_label_resolve_direcao__
; @(205) INSTRUCAO - ; recupera as variaveis do escopo da funcao
pop r0
store 26953, r0
pop r0
store 26968, r0
pop r0
store 26983, r0
pop r0
store 27080, r0
pop r0
store 27981, r0
pop r0
store 27982, r0
pop r0
store 27983, r0

__exit_if_label14__:
; endereco temporario(26931) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26931, r0

; endereco temporario(26930) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26930, r0

; endereco temporario(26929) recebe o conteudo da variavel: mapa
load r0, 26930
load r1, 26931
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 26931, r1
; matriz, valor da stack 26931
; endereco temporario(26930) recebe o conteudo: '.'
loadn r0, #'.'
store 26930, r0

; @(209) INSTRUCAO - relacao_binaria
load r0, 26931
load r1, 26930
loadn r2, #26931
call __equal_routine__
load r0, 26931
loadn r1, #0
cmp r0, r1
jeq __exit_if_label16__
jmp __if_label16__
__if_label16__:
; endereco temporario(26931) recebe o conteudo da variavel: score(26983)
load r0, 26983
store 26931, r0

load r0, 26931
inc r0
store 26931, r0
store 26983, r0
; endereco temporario(26930) recebe o conteudo: 10
loadn r0, #10
store 26930, r0

; endereco temporario(26929) recebe o conteudo: 36
loadn r0, #36
store 26929, r0

; endereco temporario(26928) recebe o conteudo da variavel: score(26983)
load r0, 26983
store 26928, r0

; @(211) INSTRUCAO - ; printf(%d);
loadn r0, #'%'
store 26927, r0
loadn r0, #'d'
store 26926, r0
;comeco da string: 26927
;printf_args.size(): 1
; 26928
;j: 0
loadn r0, #26928
store 26925, r0
loadn r0, #0
store 26924, r0
load r0, 26930
load r1, 26929
loadn r2, #40
mul r0, r0, r2
add r0, r0, r1
loadn r2, #26927
call __printf__
; endereco temporario(26923) recebe o conteudo da variavel: pos_x(27985)
load r0, 27985
store 26923, r0

; endereco temporario(26922) recebe o conteudo da variavel: pos_y(27984)
load r0, 27984
store 26922, r0

; endereco temporario(26921) recebe o conteudo da variavel: mapa
load r0, 26922
load r1, 26923
load r2, 27981
sub r2, r2, r1
loadi r1, r2
sub r7, r1, r0
loadi r1, r7
store 26923, r1
; matriz, valor da stack 26923
; endereco temporario(26922) recebe o conteudo: ' '
loadn r0, #' '
store 26922, r0

; assignment salvando no endereco apontado por: endereco temporario(26923) o conteudo de endereco temporario(26922)
load r0, 26922
; valor da stack: 26921
storei r7, r0 ; endereco apontado por r7 recebe o conteudo de r0

__exit_if_label16__:
jmp __loop_label_begin5__
__exit_loop_label5__:
; ----- end while -----
breakp
breakp
rts
;---------- END ----------

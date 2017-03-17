; Pacman - Jogo do Pacman implementado em assembly ICMC
; Marcos Cesar Ribeiro de Camargo - 9278045
; Rafael Augusto Monteiro - 9293095

; a s d w - Caracteres do pacman.
; - Caracter do fantasma.
; A S D W - movimenta pacman


; fazer comentarios explicando o jogo e comm nomes
; edvsimoes@gmail.com
; com .asm charmap e cpu.vhd
; TURMA 10HRS 4 FEIRA GRUPO 1



; Lista de números aleatorios.
rand : var #100
static rand + #0, #46
static rand + #1, #24
static rand + #2, #91
static rand + #3, #22
static rand + #4, #91
static rand + #5, #8
static rand + #6, #80
static rand + #7, #12
static rand + #8, #17
static rand + #9, #53
static rand + #10, #50
static rand + #11, #58
static rand + #12, #85
static rand + #13, #17
static rand + #14, #23
static rand + #15, #70
static rand + #16, #18
static rand + #17, #49
static rand + #18, #89
static rand + #19, #0
static rand + #20, #45
static rand + #21, #81
static rand + #22, #77
static rand + #23, #51
static rand + #24, #39
static rand + #25, #60
static rand + #26, #55
static rand + #27, #77
static rand + #28, #55
static rand + #29, #8
static rand + #30, #68
static rand + #31, #35
static rand + #32, #33
static rand + #33, #93
static rand + #34, #88
static rand + #35, #58
static rand + #36, #4
static rand + #37, #72
static rand + #38, #4
static rand + #39, #21
static rand + #40, #59
static rand + #41, #54
static rand + #42, #13
static rand + #43, #47
static rand + #44, #5
static rand + #45, #68
static rand + #46, #52
static rand + #47, #23
static rand + #48, #51
static rand + #49, #44
static rand + #50, #55
static rand + #51, #96
static rand + #52, #60
static rand + #53, #35
static rand + #54, #51
static rand + #55, #2
static rand + #56, #29
static rand + #57, #40
static rand + #58, #79
static rand + #59, #18
static rand + #60, #48
static rand + #61, #50
static rand + #62, #54
static rand + #63, #81
static rand + #64, #78
static rand + #65, #76
static rand + #66, #73
static rand + #67, #82
static rand + #68, #82
static rand + #69, #77
static rand + #70, #38
static rand + #71, #76
static rand + #72, #65
static rand + #73, #51
static rand + #74, #26
static rand + #75, #71
static rand + #76, #53
static rand + #77, #12
static rand + #78, #28
static rand + #79, #8
static rand + #80, #88
static rand + #81, #17
static rand + #82, #7
static rand + #83, #51
static rand + #84, #52
static rand + #85, #89
static rand + #86, #84
static rand + #87, #82
static rand + #88, #32
static rand + #89, #66
static rand + #90, #3
static rand + #91, #81
static rand + #92, #50
static rand + #93, #88
static rand + #94, #96
static rand + #95, #31
static rand + #96, #2
static rand + #97, #73
static rand + #98, #48
static rand + #99, #84


; Tela do jogo.
S1L1 	: string "cccccccccccccccccccccccccccccccccccccccc"
S1L2 	: string "c PAC MAN        VER ALPHA             c"
S1L3 	: string "cccccccccccccccccccccccccccccccccccccccc"
S1L4 	: string "c                                      c"
S1L5 	: string "c  cbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbc  c"
S1L6 	: string "c  e........*c.............c*.......e  c"
S1L7 	: string "c  e.bbbbbbb...bbbbfgbbbbb...bbbbbb.e  c"
S1L8 	: string "c  e*........c.....hi......c.......*e  c"
S1L9 	: string "c  cccccc.cbbbbbbb.hi.bbbbbbbc.cbbbbc  c"
S1L10 	: string "c       e.e..................c.e       c"
S1L11 	: string "cbbbbbbbc.c.cbbbbbb--bbbbbbc.c.cbbbbbbbc"
S1L12 	: string "        ....e              e....        "
S1L13 	: string "cbbbbbbc.cc.e              e.cc.cbbbbbbc"
S1L14 	: string "c      e.cc.cbbbbbbbbbbbbbbc.cc.e      c"
S1L15 	: string "c      e.cc*................*cc.e      c"
S1L16 	: string "c  cbbbc....bbbbbbbfgbbbbbbb....cbbbc  c"
S1L17 	: string "c  e.....cc........hi........cc.....e  c"
S1L18 	: string "c  e.bbbbccbbbbbbb.hi.bbbbbbbccbbbb.e  c"
S1L19 	: string "c  e*..............................*e  c"
S1L20 	: string "c  cbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbc  c"
S1L21 	: string "c                                      c"
S1L22 	: string "cccccccccccccccccccccccccccccccccccccccc"
S1L23 	: string "c                                      c"
S1L24 	: string "c   SCORE:                             c"
S1L25 	: string "c                                      c"
S1L26 	: string "c                                      c"
S1L27 	: string "c                                      c"
S1L28 	: string "cccccccccccccccccccccccccccccccccccccccc"
S1L29 	: string "                                        "
S1L30 	: string "                                        "


; Tela de end game.
S2L1 	: string "                                        "
S2L2 	: string "                                        "
S2L3 	: string "                                        "
S2L4 	: string "                                        "
S2L5 	: string "                                        "
S2L6 	: string "                                        "
S2L7 	: string "                                        "
S2L8 	: string "                                        "
S2L9 	: string "                                        "
S2L10 	: string "                                        "
S2L11 	: string "                                        "
S2L12 	: string "                                        "
S2L13 	: string "                                        "
S2L14 	: string "                                        "
S2L15 	: string "                                        "
S2L16 	: string "               GAME OVER                "
S2L17 	: string "       ENTER PARA JOGAR NOVAMENTE       "
S2L18 	: string "                                        "
S2L19 	: string "                                        "
S2L20 	: string "                                        "
S2L21 	: string "                                        "
S2L22 	: string "                                        "
S2L23 	: string "                                        "
S2L24 	: string "                                        "
S2L25 	: string "                                        "
S2L26 	: string "                                        "
S2L27 	: string "                                        "
S2L28 	: string "                                        "
S2L29	: string "                                        "
S2L30	: string "                                        "

; Tela de novo jogo.

S3L1 	: string "                                        "
S3L2 	: string "                                        "
S3L3 	: string "                                        "
S3L4 	: string "                                        "
S3L5 	: string "                                        "
S3L6 	: string "          PAC MAN   d   % % % %         "
S3L7 	: string "                                        "
S3L8 	: string "                                        "
S3L9 	: string "                                        "
S3L10 	: string "                                        "
S3L11 	: string "                                        "
S3L12 	: string "                                        "
S3L13 	: string "                                        "
S3L14 	: string "                                        "
S3L15 	: string "       PRECIONE ENTER PARA INICIAR      "
S3L16 	: string "                                        "
S3L17 	: string "                                        "
S3L18 	: string "                                        "
S3L19 	: string "                                        "
S3L20 	: string "                                        "
S3L21 	: string "                                        "
S3L22 	: string "                                        "
S3L23 	: string "                                        "
S3L24 	: string "                                        "
S3L25 	: string "                                        "
S3L26 	: string "                                        "
S3L27 	: string "                                        "
S3L28 	: string "                                        "
S3L29	: string "                                        "
S3L30	: string "                                        "


; Tela de end game.
S4L1 	: string "                                        "
S4L2 	: string "                                        "
S4L3 	: string "                                        "
S4L4 	: string "                                        "
S4L5 	: string "                                        "
S4L6 	: string "                                        "
S4L7 	: string "                                        "
S4L8 	: string "                                        "
S4L9 	: string "                                        "
S4L10 	: string "                                        "
S4L11 	: string "                                        "
S4L12 	: string "                                        "
S4L13 	: string "                                        "
S4L14 	: string "                                        "
S4L15 	: string "                                        "
S4L16 	: string "              VOCE VENCEU               "
S4L17 	: string "       ENTER PARA JOGAR NOVAMENTE       "
S4L18 	: string "                                        "
S4L19 	: string "                                        "
S4L20 	: string "                                        "
S4L21 	: string "                                        "
S4L22 	: string "                                        "
S4L23 	: string "                                        "
S4L24 	: string "                                        "
S4L25 	: string "                                        "
S4L26 	: string "                                        "
S4L27 	: string "                                        "
S4L28 	: string "                                        "
S4L29	: string "                                        "
S4L30	: string "                                        "


; Memória principal, para conferência de pontos.
MEML1 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML2 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML3 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML4 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML5 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML6 	: string "\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0"
MEML7 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML8 	: string "\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0"
MEML9 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML10 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML11 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML12 : string "~~~~~~~~\0\0\0\0\0              \0\0\0\0\0~~~~~~~~"
MEML13 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0              \0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML14 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML15 : string "\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0"
MEML16 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML17 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML18 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML19 : string "\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0"
MEML20 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML21 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML22 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML23 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML24 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML25 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML26 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML27 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML28 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML29 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
MEML30 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"

; Backup da memória principal.
; Memória principal, para conferência de pontos.
BMEML1 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML2 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML3 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML4 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML5 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML6 	: string "\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0"
BMEML7 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML8 	: string "\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0"
BMEML9 	: string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML10 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML11 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML12 : string "~~~~~~~~\0\0\0\0\0              \0\0\0\0\0~~~~~~~~"
BMEML13 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0              \0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML14 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML15 : string "\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0"
BMEML16 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML17 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML18 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML19 : string "\0\0\0\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0"
BMEML20 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML21 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML22 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML23 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML24 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML25 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML26 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML27 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML28 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML29 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
BMEML30 : string "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"

; Declaracao de variaveis.	
last_dir 	: var #1 ; Última direção do pacman.
last_dig 	: var #1 ; Último caracter digitado.
dir 		: var #1 ; Direção atual do pacman.
pos 		: var #1 ; Posição atual do pacman. 
pos_b		: var #1 ; Posição atual do blinkydu.
pos_i		: var #1 ; Posição atual do inkydu.
pos_p		: var #1 ; Posição atual do pinkydu.
pos_c		: var #1 ; Posição atual do clydedu.
last_pos	: var #1 ; Última posição do pacman.
last_pos_b	: var #1 ; Última posição do blinkydu.
last_pos_c	: var #1 ; Última posição do clydedu.
last_pos_i	: var #1 ; Última posição do inkydu.
last_pos_p	: var #1 ; Última posição do pinkydu.
pacman 		: var #1 ; Caractere do pacman (pode mudar)
score 		: var #1 ; Score total
seed 		: var #1 ; Semente para o rand.
rpos 		: var #1 ; Posição aleatória de um fantasma.
rnum 		: var #1 ; Número aleatório.
ghost_eater	: var #1 ; Verifica se o pacman pode comer os fantasmas
blinker		: var #1 ; Fantasmas piscando.
blinker_time: var #1 ; Tempo que os fantasmas piscam.
eated		: var #1 ; Quantidade de bolinhas no mapa.

;---- Inicio do Programa Principal -----

jmp main
main:
	;Incializando variaveis.
	loadn r2, #'d' ;pac man
	store pacman, r2
	
	loadn r0, #192
	store eated, r0
	loadn r0, #497
	store pos_p, r0
	loadn r0, #499
	store pos_i, r0
	loadn r0, #501
	store pos_c, r0
	loadn r0, #503
	store pos_b, r0
	loadn r0, #739
	store pos, r0
	loadn r0, #255
	store last_dig, r0
	loadn r0, #000
	store seed, r0
	store ghost_eater, r0
	store dir, r0
	store score, r0
	store last_dir, r0

	jmp start_menu
	BACK_MAIN:
	call ClearScreen	; Limpa a Tela
	loadn r1, #S1L1 ; tela inicial
	loadn r2, #0 ; cor da tela
	loadn r0, #0; Posicao na tela onde a mensagem sera' escrita
	call PrintScreen
	call print_score
		
	; Loop principal.
	loop:

		loadn r1, #10
		mod r1, r0, r1
		loadn r2, #000
		cmp r1, r2
		ceq move_paqueman

		loadn r1, #15
		mod r1, r0, r1
		loadn r2, #000
		cmp r1, r2
		ceq move_blinkydu
		loadn r1, #15
		mod r1, r0, r1
		loadn r2, #000
		cmp r1, r2
		ceq move_pinkydu
		loadn r1, #15
		mod r1, r0, r1
		loadn r2, #000
		cmp r1, r2
		ceq move_inkydu
		loadn r1, #15
		mod r1, r0, r1
		loadn r2, #000
		cmp r1, r2
		ceq move_clydedu
		
		call Delay ; call Delay
		inc r0

		call ghost_eater_checker
		
		jmp loop
	halt

	
;---- Fim do Programa Principal -----
	
;---- Inicio das Subrotinas -----

Delay:
						;Utiliza Push e Pop para nao afetar os Ristradores do programa principal
	push r0
	push r1
	
	loadn r1, #5  ; a
   	Delay_volta2:				; contador de tempo quebrado em duas partes (dois loops de decremento)
	loadn r0, #800	; b ;
   	Delay_volta: 
	dec r0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
	jnz Delay_volta	
	dec r1
	jnz Delay_volta2
	
	pop R1
	pop R0
	
	rts							;return

ReadMove:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	
	inchar r0

	loadn r1, #255
	cmp r1, r0
	jne continue
	;; IS_VALID_POS SOMAR A DIREÇÃO PARA FUNCIONAR
	load r0, last_dir
	
	continue:
	load r2, pos
	
	loadn r1, #'a'
	cmp r0, r1
	store dir, r1
	jeq switch_A

	loadn r1, #'s'
	cmp r0, r1
	store dir, r1
	jeq switch_S
		
	loadn r1, #'d'
	cmp r0, r1
	store dir, r1
	jeq switch_D

	loadn r1, #'w'
	cmp r0, r1
	store dir, r1
	jeq switch_W
	jmp break;
	
	switch_A:
	loadn r3, #40
	mod r4, r2, r3
	loadn r3, #0
	cmp r4, r3
	jeq break;

	dec r2
	loadn r5, #'a' ;pac man
	store pacman, r5
	jmp break;

	switch_S:
	loadn r3, #1159
	cmp r3, r2
	jel break;

	loadn r3, #40
	add r2, r2, r3
	loadn r5, #'s' ;pac man
	store pacman, r5

	jmp break;

	switch_D:
	loadn r3, #40
	mod r4, r2, r3
	loadn r3, #39
	cmp r4, r3
	jeq break;
	
	loadn r5, #'d' ;pac man
	store pacman, r5
	inc r2
	jmp break;

	switch_W:
	loadn r3, #39
	cmp r2, r3
	jel break;

	loadn r3, #40
	sub r2, r2, r3
	loadn r5, #'w' ;pac man
	store pacman, r5

	jmp break;
		
	break:
	store pos, r2

	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
	
ClearScreen:
	push fr ; protege registrador de frags
	push r0 ; contador para percorrer a tela 
	push r1 ; valor do espaco em branco
	loadn r0, #1200 ; tamanho da tela
	loadn r1, #' ' ; espaco em branco
		
		ClearScreen_loop: ; de 1200 ate 0
		dec r0 ; decrementa contador
		outchar r1, r0 ; imprime espaco em branco
		jnz ClearScreen_loop ; jump se zero

	pop r1 ; 
	pop r0 ; 
	pop fr ; 
	rts

ClearMem:
	push fr ; protege registrador de frags
	push r0 ; contador para percorrer a tela 
	push r1 ; valor do espaco em branco
	push r2
	push r3
	
	loadn r0, #1230 ; tamanho da tela
	loadn r1, #'\0' ; espaco em branco
	loadn r2, #MEML1
	loadn r3, #BMEML1
		ClearMem_loop: ; de 1200 ate 0
		loadi r1, r3
		storei r2, r1						
		inc r2
		inc r3
		dec r0 ; decrementa contador
		jnz ClearMem_loop ; jump se zero

	pop r3
	pop r2
	pop r1 ; 
	pop r0 ; 
	pop fr ; 
	rts
	
	
move_paqueman:
	push r0
	push r1
	push r2
	
	loadn r1, #' '
	load r2, dir
	store last_dir, r2
	load r2, pos
	store last_pos, r2
	outchar r1, r2	
	call ReadMove
	call IS_VALID_POS
	load r0, pos ; carrega a posessaum do paqueman
	load r2, pacman ;carrega o caractere do pac man
	loadn r1, #2816 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman
	
	pop r2
	pop r1
	pop r0
	rts
	
move_blinkydu:
	push r0
	push r1
	push r2
	push r3
	
	load r0, pos_b ; carrega a posessaum do paqueman
	store last_pos_b, r0
	
	store rpos, r0
	;aqui tenho que procurar uma pos aleatoria
	call getRandMove
	;aqui ja mudei a pos do fantasma
	load r0, rpos
	store pos_b, r0
		
	call IS_VALID_POS_B

	load r0, last_pos_b ; carrega a posessaum do paqueman
	
	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #MEML1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	loadi r3, r1
	loadn r1, #' '
	loadn r2, #'\0' 
	cmp r3, r2
	jne SPACE_B
	loadn r1, #'.'

	SPACE_B:
	load r0, last_pos_b ; carrega a posessaum do paqueman
	outchar r1, r0	

	loadn r0, #1
	load r1, ghost_eater
	cmp r0, r1
	loadn r1, #2304 ; cor
	jne	GHOST_COLOR_B
	loadn r1, #000 ; branco
	loadn r2, #0
	load r3, blinker
	cmp r2, r3
	jeq WHITE_B
		loadn r1, #3072; azul
		loadn r2, #0
		store blinker, r2	
		jmp GHOST_COLOR_B
	WHITE_B:
	loadn r2, #1
	store blinker, r2	
	GHOST_COLOR_B:
	loadn r2, #'%' ;carrega o caractere do pac man
	load r0, pos_b ; carrega a posessaum do paqueman
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	pop r3
	pop r2
	pop r1
	pop r0
	rts

move_inkydu:
	push r0
	push r1
	push r2
	
	load r0, pos_i ; carrega a posessaum do paqueman
	store last_pos_i, r0
	
	store rpos, r0
	;aqui tenho que procurar uma pos aleatoria
	call getRandMove
	;aqui ja mudei a pos do fantasma
	load r0, rpos
	store pos_i, r0

	call IS_VALID_POS_I

	load r0, last_pos_i ; carrega a posessaum do paqueman

	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #MEML1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	loadi r3, r1
	loadn r1, #' '
	loadn r2, #'\0' 
	cmp r3, r2
	jne SPACE_I
	loadn r1, #'.'

	SPACE_I:
	load r0, last_pos_i ; carrega a posessaum do paqueman
	outchar r1, r0	
	loadn r0, #1
	load r1, ghost_eater
	cmp r0, r1
	loadn r1, #3584 ; cor
	jne	GHOST_COLOR_I
	loadn r1, #000 ; branco
	loadn r2, #0
	load r3, blinker
	cmp r2, r3
	jeq WHITE_I
		loadn r1, #3072; azul
		loadn r2, #0
;		store blinker, r2	
		jmp GHOST_COLOR_I
	WHITE_I:
	loadn r2, #1
;	store blinker, r2	
		
	GHOST_COLOR_I:
	loadn r2, #'%' ;carrega o caractere do pac man
	load r0, pos_i ; carrega a posessaum do paqueman
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	pop r2
	pop r1
	pop r0
	rts

move_pinkydu:
	push r0
	push r1
	push r2
	
	load r0, pos_p ; carrega a posessaum do paqueman
	store last_pos_p, r0
	
	store rpos, r0
	;aqui tenho que procurar uma pos aleatoria
	call getRandMove
	;aqui ja mudei a pos do fantasma
	load r0, rpos
	store pos_p, r0

	
	call IS_VALID_POS_P

	load r0, last_pos_p ; carrega a posessaum do paqueman

	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #MEML1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	loadi r3, r1
	loadn r1, #' '
	loadn r2, #'\0' 
	cmp r3, r2
	jne SPACE_P
	loadn r1, #'.'

	SPACE_P:
	load r0, last_pos_p ; carrega a posessaum do paqueman
	outchar r1, r0	
	loadn r0, #1
	load r1, ghost_eater
	cmp r0, r1
	loadn r1, #3328 ; cor
	jne	GHOST_COLOR_P
	loadn r1, #000 ; branco
	loadn r2, #0
	load r3, blinker
	cmp r2, r3
	jeq WHITE_P
		loadn r1, #3072; azul
		loadn r2, #0
;		store blinker, r2	
		jmp GHOST_COLOR_P
	WHITE_P:
	loadn r2, #1
;	store blinker, r2	
		
	GHOST_COLOR_P:
	loadn r2, #'%' ;carrega o caractere do pac man
	load r0, pos_p ; carrega a posessaum do paqueman
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	pop r2
	pop r1
	pop r0
	rts

move_clydedu:
	push r0
	push r1
	push r2
	
	load r0, pos_c ; carrega a posessaum do paqueman
	store last_pos_c, r0
	

	store rpos, r0
	;aqui tenho que procurar uma pos aleatoria
	call getRandMove
	;aqui ja mudei a pos do fantasma
	load r0, rpos
	store pos_c, r0
	
	call IS_VALID_POS_C

	load r0, last_pos_c ; carrega a posessaum do paqueman

	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #MEML1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	loadi r3, r1
	loadn r1, #' '
	loadn r2, #'\0' 
	cmp r3, r2
	jne SPACE_C
	loadn r1, #'.'

	SPACE_C:
	load r0, last_pos_c ; carrega a posessaum do paqueman
	outchar r1, r0	
	loadn r0, #1
	load r1, ghost_eater
	cmp r0, r1
	loadn r1, #2560 ; cor
	jne	GHOST_COLOR_C
	loadn r1, #000 ; branco
	loadn r2, #0
	load r3, blinker
	cmp r2, r3
	jeq WHITE_C
		loadn r1, #3072; azul
		loadn r2, #0
;		store blinker, r2	
		jmp GHOST_COLOR_C
	WHITE_C:
	loadn r2, #1
;	store blinker, r2	
		
	GHOST_COLOR_C:
	loadn r2, #'%' ;carrega o caractere do pac man
	load r0, pos_c ; carrega a posessaum do paqueman
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	pop r2
	pop r1
	pop r0
	rts



getRandMove:
	push r0
	push r1
	push r2
	push r3
	push r4
	
	call getRandNum
	load r0, rnum	
	loadn r1, #4
	mod r0, r0, r1
	 
	loadn r1, #0
	cmp r0, r1
	jeq SWITCH_0
	
	loadn r1, #1
	cmp r0, r1
	jeq SWITCH_1
	
	loadn r1, #2
	cmp r0, r1
	jeq SWITCH_2
	
	loadn r1, #3
	cmp r0, r1
	jeq SWITCH_3
	
	jmp SWITCH_MOVE_END
	
	SWITCH_0:
	load r1, rpos
	loadn r2, #40
	add r1, r1, r2

	loadn r3, #1159
	cmp r3, r1
	jel SWITCH_MOVE_END;

	store rpos, r1
	jmp SWITCH_MOVE_END

	SWITCH_1:
	load r1, rpos
	loadn r2, #40
	sub r1, r1, r2
	
	loadn r3, #39
	cmp r1, r3
	jel SWITCH_MOVE_END;

	store rpos, r1
	jmp SWITCH_MOVE_END

	SWITCH_2:
	load r1, rpos
	inc r1	
	loadn r3, #40
	mod r4, r1, r3
	loadn r3, #39
	cmp r4, r3

	jeq SWITCH_MOVE_END;
	
	store rpos, r1
	jmp SWITCH_MOVE_END

	SWITCH_3:
	load r1, rpos
	
	loadn r3, #40
	mod r4, r1, r3
	loadn r3, #0
	cmp r4, r3
	jeq SWITCH_MOVE_END
	
	dec r1
	store rpos, r1
	jmp SWITCH_MOVE_END
	
	
	SWITCH_MOVE_END:
	pop r3
	pop r4
	pop r2
	pop r1
	pop r0
	rts
	
getRandNum:
	push fr
	push r0;
	push r1;
	push r2;
	loadn r2, #100
	
	
	load r1, seed ; read i
	loadn r0, #rand ; read vector
	add r0, r0, r1 ; r0 = vector[i]
	
	inc r1 ;i++
	store seed, r1
	cmp r1, r2 ;if (i < 100)
	jle getRandNum_
	loadn r1, #0 ;if (i >= 100), i = 0
	store seed, r1
	
	getRandNum_:
	loadi r1, r0
	load r2, pos
	add r1, r1, r2
	inc r1
	store rnum, r1

	pop r2
	pop r1;
	pop r0;
	pop fr
	rts
	
	
Imprimestr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	
	loadn r3, #'\0'	; Criterio de parada

ImprimestrLoop:	
	loadi r4, r1
	cmp r4, r3
	jeq ImprimestrSai
	add r4, r2, r4
	outchar r4, r0
	inc r0
	inc r1
	jmp ImprimestrLoop
	
ImprimestrSai:	
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts

PrintScreen:
	push fr ; protege registrador de frags
	push r0 ; contador
	push r1 ; endereco da mensagem
	push r2 ; cor da mensagem
	push r3 ;
	push r4 ;
	push r5 ;
	
	loadn r0, #0 ; contador
	loadn r3, #1199 ; tamanho da tela
	loadn r4, #41 ; incremento da memoria
	loadn r5, #40 ; incremento do contador

	PrintScreen_loop:	
		call Imprimestr
		add r1, r1, r4
		add r0, r0, r5
		cmp r0, r3
		jel PrintScreen_loop	
		
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	rts

IS_VALID_POS:
	push fr
	push r0
	push r1
	push r2
	push r3
	; fazendo pos apontar para a posicao certa
	load r0, pos
	loadn r1, #479
	cmp r0, r1
	jeq GOTOLEFT

	loadn r1, #440
	cmp r0, r1
	jeq GOTORIGHT
	
	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #S1L1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	; S1L1[POS] == ' '
	loadi r1, r1
	loadn r2, #' ' 
	cmp r1, r2
	jeq IS_VALID_POS_N

	loadn r2, #'.' 
	cmp r1, r2
	jeq IS_VALID_POS_N

	loadn r2, #'*' 
	cmp r1, r2
	jeq GHOST_EATER
	jeq IS_VALID_POS_N
		;pos = last_pos;
		load r0, last_pos
		store pos, r0
		load r0, last_dir
		store dir, r0

		loadn r1, #'a'
		cmp r0, r1
		store dir, r1
		jeq switch_A_K

		loadn r1, #'s'
		cmp r0, r1
		store dir, r1
		jeq switch_S_K
			
		loadn r1, #'d'
		cmp r0, r1
		store dir, r1
		jeq switch_D_K

		loadn r1, #'w'
		cmp r0, r1
		store dir, r1
		jeq switch_W_K
		jmp IS_VALID_POS_N;
		
		switch_A_K:
		loadn r5, #'a' ;pac man
		store pacman, r5
		jmp IS_VALID_POS_N;

		switch_S_K:
		loadn r5, #'s' ;pac man
		store pacman, r5
		jmp IS_VALID_POS_N;

		switch_D_K:
		loadn r5, #'d' ;pac man
		store pacman, r5
		jmp IS_VALID_POS_N;

		switch_W_K:
		loadn r5, #'w' ;pac man
		store pacman, r5
		jmp IS_VALID_POS_N;
			
	GOTOLEFT:
	loadn r0, #440
	store pos, r0
	jmp IS_VALID_POS_N

	GOTORIGHT:
	loadn r0, #479
	store pos, r0
	jmp IS_VALID_POS_N
	
	GHOST_EATER:
	load r0, pos
	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #MEML1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	; S1L1[POS] == 0
	loadi r3, r1
	loadn r2, #'*' 
	cmp r3, r2
	jeq GHOST_EATER_EQUAL

	jmp IS_VALID_POS_N
	GHOST_EATER_EQUAL:	
	loadn r0, #1
	store ghost_eater, r0	
	store blinker, r0	
	loadn r0, #500 ; tempo que pode comer
	store blinker_time, r0
	loadn r0, #140
	storei r1, r0
	
	IS_VALID_POS_N:

	; fazendo pos apontar para a posicao certa
	load r0, pos
	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #MEML1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	; S1L1[POS] == 0
	loadi r3, r1
	loadn r2, #'\0' 
	cmp r3, r2
	jne END_ISVALID
		load r0, score
		inc r0
		store score, r0
		loadn r0, #140
		storei r1, r0
		call print_score
		load r0, eated	
		dec r0
		store eated, r0
		loadn r1, #0
		cmp r0, r1
		jeq END_GAME_WIN

	END_ISVALID:
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	rts
	
	
	
IS_VALID_POS_I:
	push fr
	push r0
	push r1
	
	; fazendo pos apontar para a posicao certa
	load r0, pos_i
	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #S1L1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	; S1L1[POS] == ' '
	loadi r1, r1
	loadn r2, #' ' 
	cmp r1, r2
	jeq IS_VALID_POS_N_I

	loadn r2, #'-' 
	cmp r1, r2
	jeq IS_VALID_POS_N_I

	loadn r2, #'.' 
	cmp r1, r2
	jeq IS_VALID_POS_N_I

	loadn r2, #'*' 
	cmp r1, r2
	jeq IS_VALID_POS_N_I
		;pos = last_pos;
		load r0, last_pos_i
		store pos_i, r0

	IS_VALID_POS_N_I:

	pop r1
	pop r0
	pop fr
	rts
	
IS_VALID_POS_C:
	push fr
	push r0
	push r1
	
	; fazendo pos apontar para a posicao certa
	load r0, pos_c
	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #S1L1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	; S1L1[POS] == ' '
	loadi r1, r1
	loadn r2, #' ' 
	cmp r1, r2
	jeq IS_VALID_POS_N_C

	loadn r2, #'-' 
	cmp r1, r2
	jeq IS_VALID_POS_N_C

	loadn r2, #'.' 
	cmp r1, r2
	jeq IS_VALID_POS_N_C

	loadn r2, #'*' 
	cmp r1, r2
	jeq IS_VALID_POS_N_C
		;pos = last_pos;
		load r0, last_pos_c
		store pos_c, r0

	IS_VALID_POS_N_C:

	pop r1
	pop r0
	pop fr
	rts
	
IS_VALID_POS_P:
	push fr
	push r0
	push r1
	
	; fazendo pos apontar para a posicao certa
	load r0, pos_p
	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #S1L1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	; S1L1[POS] == ' '
	loadi r1, r1
	loadn r2, #' ' 
	cmp r1, r2
	jeq IS_VALID_POS_N_P

	loadn r2, #'-' 
	cmp r1, r2
	jeq IS_VALID_POS_N_P

	loadn r2, #'.' 
	cmp r1, r2
	jeq IS_VALID_POS_N_P

	loadn r2, #'*' 
	cmp r1, r2
	jeq IS_VALID_POS_N_P
		;pos = last_pos;
		load r0, last_pos_p
		store pos_p, r0

	IS_VALID_POS_N_P:

	pop r1
	pop r0
	pop fr
	rts

IS_VALID_POS_B:
	push fr
	push r0
	push r1
	
	; fazendo pos apontar para a posicao certa
	load r0, pos_b
	loadn r1, #40
	div r1, r0, r1
	add r0, r1, r0
	; r1 recebe ponteiro
	loadn r1, #S1L1
	; r1 aponta para posicao certa
	add r1, r1, r0
	; r1 contem o caracter valido
	; S1L1[POS] == ' '
	loadi r1, r1
	loadn r2, #' ' 
	cmp r1, r2
	jeq IS_VALID_POS_N_B

	loadn r2, #'-' 
	cmp r1, r2
	jeq IS_VALID_POS_N_B

	loadn r2, #'.' 
	cmp r1, r2
	jeq IS_VALID_POS_N_B

	loadn r2, #'*' 
	cmp r1, r2
	jeq IS_VALID_POS_N_B
		;pos = last_pos;
		load r0, last_pos_b
		store pos_b, r0

	IS_VALID_POS_N_B:

	pop r1
	pop r0
	pop fr
	rts
	

END_GAME_POAR:
	push fr
	push r0
	push r1
	push r2
	
	call ClearScreen	; Limpa a Tela
	loadn r1, #S2L1 ; tela inicial
	loadn r2, #0 ; cor da tela
	loadn r0, #0; Posicao na tela onde a mensagem sera' escrita
	call PrintScreen
	call getchar
	call ClearMem
	pop r2
	pop r1
	pop r0
	pop fr
	jmp main

END_GAME_WIN:
	push fr
	push r0
	push r1
	push r2
	
	call ClearScreen	; Limpa a Tela
	loadn r1, #S4L1 ; tela inicial
	loadn r2, #0 ; cor da tela
	loadn r0, #0; Posicao na tela onde a mensagem sera' escrita
	call PrintScreen
	loadn r0, #13
	loop_edwin:
	inchar r1
	cmp r0, r1
	jne loop_edwin	
	call ClearMem
	pop r2
	pop r1
	pop r0
	pop fr
	jmp main
	
	
	
print_score:
;Primeiro numero a ser impresso (zero) esta na posicao 48 == Cod. ASCII do Zero
;Por isso soma-se 48 ao valor a ser impresso
;Abaixo tambem se encontra a logica para imprimir um numero de 2 digitos (tipo 21)
; R5 contem um numero de ate' 2 digitos     e    R6 a posicao onde vai imprimir na tela
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	loadn r0, #100
	loadn r2, #48
	loadn r4, #931
	load r5, score
	
	div r1, r5, r0	; Divide o numeo por 100 para imprimir a CENTENA
	
	add r3, r1, r2	; Soma 48 ao numero pra dar o Cod.  ASCII do numero
	outchar r3, r4
	
	inc r4			; Incrementa a posicao na tela

	mod r5, r5, r0
	loadn r0, #10
	div r1, r5, r0	; Divide o numeo por 10 para imprimir a dezena
	
	add r3, r1, r2	; Soma 48 ao numero pra dar o Cod.  ASCII do numero
	outchar r3, r4
	
	inc r4			; Incrementa a posicao na tela
	
	mul r1, r1, r0	; Multiplica a dezena por 10
	sub r1, r5, r1	; Pra subtrair do numero e pegar o resto
	
	add r1, r1, r2	; Soma 48 ao numero pra dar o Cod.  ASCII do numero
	outchar r1, r4

	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	
	rts
	
ghost_eater_checker:
	push fr
	push r0
	push r1
	push r2
	push r3	
	
	load r2, pos
	load r1, pos_b
	cmp r2, r1
	jeq CHECK_B

	load r1, pos_c
	cmp r2, r1	
	jeq CHECK_C

	load r1, pos_i
	cmp r2, r1	
	jeq CHECK_I

	load r1, pos_p
	cmp r2, r1
	jeq CHECK_P

	jmp END


	CHECK_B:
	loadn r0, #0
	load r3, ghost_eater
	cmp r0, r3
	jeq GEC_ENDGAME
	loadn r0, #501
	store pos_b, r0
	loadn r0, #10
	load r1, score
	add r1, r1, r0
	store score, r1
	call print_score
	jmp END

	CHECK_C:
	loadn r0, #0
	load r3, ghost_eater
	cmp r0, r3
	jeq GEC_ENDGAME
	loadn r0, #501
	store pos_c, r0
	loadn r0, #10
	load r1, score
	add r1, r1, r0
	store score, r1
	call print_score
	jmp END

	CHECK_I:
	loadn r0, #0
	load r3, ghost_eater
	cmp r0, r3
	jeq GEC_ENDGAME
	loadn r0, #501
	store pos_i, r0
	loadn r0, #10
	load r1, score
	add r1, r1, r0
	store score, r1
	call print_score
	jmp END

	CHECK_P:
	loadn r0, #0
	load r3, ghost_eater
	cmp r0, r3
	jeq GEC_ENDGAME
	loadn r0, #501
	store pos_p, r0
	loadn r0, #10
	load r1, score
	add r1, r1, r0
	store score, r1
	call print_score
	jmp END

	GEC_ENDGAME:
	jmp END_GAME_POAR
	END:
	load r0, blinker_time
	dec r0
	store blinker_time, r0
	loadn r1, #0
	cmp r1, r0
	jnz GG_IZI
		store ghost_eater, r1
	GG_IZI:	
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	rts


getchar:
	push fr
	push r0
	push r1
	
	loadn r1, #255
	
	getchar_loop:
		inchar r0
		cmp r0, r1
		jeq getchar_loop
		
	;store char, r0
	
	getchar_loop2:
		inchar r0
		cmp r0, r1
		jne getchar_loop2
	
	pop r1
	pop r0
	pop fr
	rts
	
	
start_menu:
	pop fr
	pop r0
	pop r1
	pop r2
	pop r3

	call ClearScreen	; Limpa a Tela
	loadn r1, #S3L1 ; tela inicial
	loadn r2, #0 ; cor da tela
	loadn r0, #0; Posicao na tela onde a mensagem sera' escrita
	call PrintScreen
	
	loadn r0, #220 ; carrega a posessaum do paqueman
	loadn r2, #'d' ;carrega o caractere do pac man
	loadn r1, #2816 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman
	
	loop_sm:
	loadn r0, #224 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #2304 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #226 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #3584 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #228 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #3328 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #230 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #2560 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

		call Delay
	call Delay
	call Delay
call Delay

	loadn r0, #224 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #2560 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #226 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #2304 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #228 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #3584 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #230 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #3328 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	call Delay
	call Delay
	call Delay
	call Delay

	loadn r0, #224 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #3328 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #226 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #2560 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #228 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #2304 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #230 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #3584 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	call Delay
	call Delay
	call Delay
	call Delay

	loadn r0, #224 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #3584 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #226 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #2304 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #228 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #2560 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	loadn r0, #230 ; carrega a posessaum do paqueman
	loadn r2, #'%' ;carrega o caractere do pac man
	loadn r1, #3328 ; cor
	add r2, r2, r1 ;deixa o pac man amarelo
	outchar r2, r0 ; impreme paqueman

	call Delay
	call Delay
	call Delay

	loadn r0, #13
	inchar r1
	cmp r0, r1
	jne loop_sm

	
	push r3
	push r2
	push r1
	push r0
	push fr
	jmp BACK_MAIN

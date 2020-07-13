TITLE PROJETO
.MODEL SMALL
.STACK 100H
printar	macro	matriz, cor, posicao_x, posicao_y, largura, tamanho

	push cx

	mov eixo_x, 0
	mov eixo_y, 0
	mov dimensao, 0
	mov largura_total, 0
	xor si,si

	mov al, cor
	mov eixo_x, posicao_x
	mov eixo_y, posicao_y
	mov dimensao, tamanho
	mov largura_total, largura
	lea si, matriz

	call pixel

	pop cx

	endm
.DATA
	CONT DW 0
	CONT1 DW 0
	CONT2 DW 0
	CONT_AUX DW 0
	CONT_AUX1 DW 0
	
	conta_nave dw 0
	conta_nave1 dw 0
	conta_nave2 dw 0
	conta_nave3 dw 0
	
	aux_tiro DW 0
	aux_tiro2 DW 0
	aux3_tiro DW 0
	aux4_tiro DW 0
	aux5_tiro DW 0
	aux6_tiro DW 0
	aux6_tiro1 DW 0
	aux6_tiro2 DW 0
	aux6_tiro3 DW 0
	
	tiro_alien_x dw 0
	tiro_alien_y dw 0
	
	tiro_alien_x1 dw 0
	tiro_alien_y1 dw 0
	
	tiro_alien_x2 dw 0
	tiro_alien_y2 dw 0
	
	tiro_alien_x3 dw 0
	tiro_alien_y3 dw 0
	;atira_alien
	aux_y dw 0

	CONT_ DW 0
	CONT_AUX_ DW 0
	CONT_AUX1_ DW 0
	
	aux_tiro_ DW 0
	aux_tiro2_ DW 0
	aux3_tiro_ DW 0
	aux4_tiro_ DW 0
	;atira_alien1
	aux_y1 dw 0
	
	aux_tiro_1 DW 0
	aux_tiro2_1 DW 0
	aux3_tiro_1 DW 0
	aux4_tiro_1 DW 0
	;atira_alien2
	aux_y2 dw 0
	
	aux_tiro_2 DW 0
	aux_tiro2_2 DW 0
	aux3_tiro_2 DW 0
	aux4_tiro_2 DW 0
	;atira_alien3
	aux_y3 dw 0
	
	aux_tiro_3 DW 0
	aux_tiro2_3 DW 0
	aux3_tiro_3 DW 0
	aux4_tiro_3 DW 0
	
	deg_pedra db 1
	deg_pedra1 db 1
	deg_pedra2 db 1
	deg_pedra3 db 1
	deg_pedra4 db 1
	deg_pedra5 db 1
	deg_pedra6 db 1
	deg_pedra7 db 1
	deg_pedra8 db 1
	
	aux_mata_alien DW 0
	
	score_pontos dw 0
	
	fim_de_jogo DW 0

	lado_y DW 0
	lado_x DW 0
	count DW 0
	eixo_x DW 0
	eixo_y DW 0
	dimensao DW 0
	largura_total DW 0

	eixo_x_nave DW 0
	eixo_x_alien DW 0
	eixo_y_alien1 DW 0
	eixo_y_alien2 DW 0
	eixo_y_alien22 DW 0
	eixo_y_alien3 DW 0
	eixo_y_alien32 DW 0
	
	larg_alien1 dw 0
	larg_alien2 dw 0
	larg_alien22 dw 0
	larg_alien3 dw 0
	larg_alien32 dw 0
	
	alt_alien1 dw 0
	alt_alien2 dw 0
	alt_alien22 dw 0
	alt_alien3 dw 0
	alt_alien32 dw 0
	
	cor_alien10  DB 0fh
	cor_alien11  DB 0fh
	cor_alien12  DB 0fh
	cor_alien13  DB 0fh
	cor_alien14  DB 0fh
	cor_alien15  DB 0fh
	cor_alien16  DB 0fh
	cor_alien17  DB 0fh
	cor_alien18  DB 0fh
	cor_alien19  DB 0fh
	cor_alien110 DB 0fh

	cor_alien20  DB 0fh
	cor_alien21  DB 0fh
	cor_alien22  DB 0fh
	cor_alien23  DB 0fh
	cor_alien24  DB 0fh
	cor_alien25  DB 0fh
	cor_alien26  DB 0fh
	cor_alien27  DB 0fh
	cor_alien28  DB 0fh
	cor_alien29  DB 0fh
	cor_alien210 DB 0fh

	cor_alien30  DB 0fh
	cor_alien31  DB 0fh
	cor_alien32  DB 0fh
	cor_alien33  DB 0fh
	cor_alien34  DB 0fh
	cor_alien35  DB 0fh
	cor_alien36  DB 0fh
	cor_alien37  DB 0fh
	cor_alien38  DB 0fh
	cor_alien39  DB 0fh
	cor_alien310 DB 0fh

	cor_alien40  DB 0fh
	cor_alien41  DB 0fh
	cor_alien42  DB 0fh
	cor_alien43  DB 0fh
	cor_alien44  DB 0fh
	cor_alien45  DB 0fh
	cor_alien46  DB 0fh
	cor_alien47  DB 0fh
	cor_alien48  DB 0fh
	cor_alien49  DB 0fh
	cor_alien410 DB 0fh
	
	cor_alien50  DB 0fh
	cor_alien51  DB 0fh
	cor_alien52  DB 0fh
	cor_alien53  DB 0fh
	cor_alien54  DB 0fh
	cor_alien55  DB 0fh
	cor_alien56  DB 0fh
	cor_alien57  DB 0fh
	cor_alien58  DB 0fh
	cor_alien59  DB 0fh
	cor_alien510 DB 0fh
	
	cor_xastre DW 1
	
	conta_alien db 0
	
	aux_vida DW 0

	CNT_TIROS DW 0
	
	CNT_TIROS_ DW 0
	
	CNT_TIROS_1 DW 0
	CNT_TIROS_2 DW 0
	CNT_TIROS_3 DW 0
	
	PROJETIL DB 1
	         DB 1

	;            0 1 2 3 4 5 6 7 8
	NAVE	DB   0,0,0,0,1,0,0,0,0;0
			DB   0,0,0,1,1,1,0,0,0;1
			DB	 1,0,0,1,1,1,0,0,1;2
			DB	 1,0,1,1,1,1,1,0,1;3
			DB	 1,1,1,1,1,1,1,1,1;4
			DB	 1,1,1,1,1,1,1,1,1;5
			DB	 1,0,0,1,1,1,0,0,1;6
			DB	 0,0,0,1,1,1,0,0,0;7
			DB	 0,0,1,1,1,1,1,0,0;8
			
	
	;			 	 0 1 2 3 4 5 6 7 8
	NAVE_DANIF	DB   0,0,0,0,0,0,0,0,0;0
				DB   0,0,0,0,0,0,0,0,0;1
				DB	 0,0,0,0,0,0,0,0,0;2
				DB	 1,0,0,0,0,0,0,0,1;3
				DB	 1,1,1,0,1,0,1,1,1;4
				DB	 1,1,1,1,1,1,1,1,1;5
				DB	 1,0,0,1,1,1,0,0,1;6
				DB	 0,0,0,1,1,1,0,0,0;7
				DB	 0,0,1,1,1,1,1,0,0;8

	;            0 1 2 3 4 5 6 7
	ALIEN1	DB 	 0,0,0,1,1,0,0,0;0
			DB	 0,0,1,1,1,1,0,0;1
			DB	 0,1,0,1,1,0,1,0;3 ALIEN MENOR
			DB	 0,1,1,1,1,1,1,0;4
			DB	 0,0,1,0,0,1,0,0;5
			DB	 0,1,0,1,1,0,1,0;6
			DB	 0,1,0,0,0,0,1,0;7

	;            0 1 2 3 4 5 6 7
	ALIEN2	DB   0,0,0,0,0,0,0,0
			DB	 0,0,1,0,0,1,0,0;0
			DB	 0,0,0,1,1,0,0,0;1
			DB	 0,1,1,1,1,1,1,0;2
			DB	 1,1,0,1,1,0,1,1;3 ALIEN MEDIO
			DB 	 1,1,1,1,1,1,1,1;4
			DB	 1,1,1,1,1,1,1,1;5
			DB	 1,0,1,0,0,1,0,1;6

	;            0 1 2 3 4 5 6 7
	ALIEN3	DB 	 0,0,0,1,1,0,0,0;0
			DB	 0,1,1,1,1,1,1,0;1
			DB	 1,1,1,1,1,1,1,1;2
			DB	 1,0,0,1,1,0,0,1;3 ALIEN GRANDE
			DB	 1,1,1,1,1,1,1,1;4
			DB	 0,1,1,0,0,1,1,0;5
			DB	 0,1,0,1,1,0,1,0;6
			DB	 1,0,0,0,0,0,0,1;7

	;		     0 1 2 3 4 5 6 7 8 9 A B C D E F
	PEDRA	DB 	 0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0;0
			DB	 0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0;1
			DB	 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0;2
			DB	 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1;3
			DB	 1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1;4
			DB	 1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1;5
			DB	 1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1;6
			DB	 1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1;7
			
	;		     0 1 2 3 4 5 6 7 8 9 A B C D E F
	PEDRA1	DB 	 0,0,0,1,1,1,1,1,1,1,1,0,1,0,0,0;0
			DB	 0,0,1,0,0,1,0,1,0,1,1,1,0,1,0,0;1
			DB	 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0;2
			DB	 1,1,0,1,1,1,1,1,1,1,1,0,0,1,0,1;3
			DB	 1,1,1,1,1,1,1,0,0,1,1,1,0,1,1,1;4
			DB	 0,1,1,1,1,1,0,0,0,0,1,1,1,0,1,1;5
			DB	 1,1,1,0,1,1,0,0,0,0,1,1,1,1,1,1;6
			DB	 1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1;7
	
	;		     0 1 2 3 4 5 6 7 8 9 A B C D E F
	PEDRA2	DB 	 0,0,0,1,0,1,1,1,1,1,1,0,1,0,0,0;0
			DB	 0,0,1,0,0,1,0,1,0,1,0,1,0,1,0,0;1
			DB	 0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,0;2
			DB	 1,1,0,1,1,1,0,1,0,1,1,0,0,1,0,1;3
			DB	 1,1,1,1,0,1,1,0,0,1,1,1,0,0,1,1;4
			DB	 0,1,0,1,1,1,0,0,0,0,1,1,1,0,1,1;5
			DB	 1,1,1,0,1,1,0,0,0,0,1,0,0,1,1,1;6
			DB	 1,1,1,0,1,1,0,0,0,0,1,1,1,1,1,1;7
			
	;		     0 1 2 3 4 5 6 7 8 9 A B C D E F
	PEDRA3	DB 	 0,0,0,1,0,1,1,0,1,1,1,0,1,0,0,0;0
			DB	 0,0,1,0,0,1,0,1,0,1,0,1,0,1,0,0;1
			DB	 0,0,0,1,0,1,1,0,1,1,0,1,0,0,1,0;2
			DB	 1,1,0,1,0,1,0,1,0,1,1,0,0,1,0,1;3
			DB	 1,0,0,1,0,0,1,0,0,1,1,1,0,0,1,1;4
			DB	 0,1,0,1,0,1,0,0,0,0,0,1,1,0,1,1;5
			DB	 1,1,1,0,1,0,0,0,0,0,1,0,0,1,1,0;6
			DB	 1,1,1,0,1,1,0,0,0,0,1,1,1,1,1,1;7
			
	;		     0 1 2 3 4 5 6 7 8 9 A B C D E F
	PEDRA4	DB 	 0,0,0,1,0,1,1,0,1,1,1,0,1,0,0,0;0
			DB	 0,0,1,0,0,1,0,1,0,1,0,1,0,1,0,0;1
			DB	 0,0,0,1,0,1,0,0,1,0,0,0,0,0,1,0;2
			DB	 1,1,0,1,0,1,0,1,0,1,1,0,0,1,0,1;3
			DB	 1,0,0,0,0,0,1,0,0,1,0,1,0,0,1,1;4
			DB	 0,1,0,1,0,1,0,0,0,0,0,0,1,0,1,1;5
			DB	 1,1,0,0,1,0,0,0,0,0,1,0,0,1,1,0;6
			DB	 0,1,1,0,1,0,0,0,0,0,1,0,1,0,1,1;7

	;		         0 1 2 3 4 5 6 7 8
	PONTO_VIDA	DB   0,0,0,0,0,0,0,0,0;0
				DB	 0,0,0,0,0,0,0,0,0;1
				DB	 0,0,1,1,0,1,1,0,0;2
				DB	 0,1,1,1,1,1,1,1,0;3 CORACAO
				DB	 0,1,1,1,1,1,1,1,0;4
				DB 	 0,0,1,1,1,1,1,0,0;5
				DB	 0,0,0,1,1,1,0,0,0;6
				DB	 0,0,0,0,1,0,0,0,0;7


	ALIEN1_LEN EQU $-ALIEN1

	CNT_ALIENS DW 30
	
	AUX DW 0
	AUX_LEN EQU $-AUX

	AUX1 DW 0
	AUX1_LEN EQU $-AUX

	pontos DW 48
	pontos_LEN EQU $-pontos

	MSG_FINAL DB " VOCE GANHOU!"
	MSG_FINAL_LEN equ $-MSG_FINAL
	MSG_FINAL_CENTER equ 20 - (MSG_FINAL_LEN/2)
	
	MSG_FINAL1 DB " GAME OVER! by xastre..."
	MSG_FINAL1_LEN equ $-MSG_FINAL1
	MSG_FINAL1_CENTER equ 20 - (MSG_FINAL1_LEN/2)
	
	MSG_FINAL3 DB " Parabens, voce ganhou!!!"
	MSG_FINAL3_LEN equ $-MSG_FINAL3
	MSG_FINAL3_CENTER equ 20 - (MSG_FINAL3_LEN/2)

	MSG_FINAL2 DB " Jogar novamente? s/n"
	MSG_FINAL2_LEN EQU $-MSG_FINAL2
	MSG_FINAL2_CENTER EQU 20 - (MSG_FINAL2_LEN/2)

	MSG_INICIO db " SPACE INVADERS "
	MSG_INICIO_LEN EQU $-MSG_INICIO
	MSG_INICIO_CENTER EQU 20 - (MSG_INICIO_LEN/2)

	MSG_INICIO2 DB " XASTRE version "
	MSG_INICIO2_LEN EQU $-MSG_INICIO2
	MSG_INICIO2_CENTER EQU 20 - (MSG_INICIO2_LEN/2)

	MSG_INICIO3 DB " Pressione qualquer tecla para comecar."
	MSG_INICIO3_LEN EQU $-MSG_INICIO3
	MSG_INICIO3_CENTER EQU 20 - (MSG_INICIO3_LEN/2)

	MSG_INICIO4 DB " Produzido por Dib e Japa."
	MSG_INICIO4_LEN EQU $-MSG_INICIO4
	MSG_INICIO4_CENTER EQU 20 - (MSG_INICIO4_LEN/2)
	
	MSG_INICIO5 DB " - 30 Pontos"
	MSG_INICIO5_LEN EQU $-MSG_INICIO5
	MSG_INICIO5_CENTER EQU 20 - (MSG_INICIO5_LEN/2)
	
	MSG_INICIO6 DB " - 20 Pontos"
	MSG_INICIO6_LEN EQU $-MSG_INICIO6
	MSG_INICIO6_CENTER EQU 20 - (MSG_INICIO6_LEN/2)
	
	MSG_INICIO7 DB " - 10 Pontos"
	MSG_INICIO7_LEN EQU $-MSG_INICIO7
	MSG_INICIO7_CENTER EQU 20 - (MSG_INICIO7_LEN/2)
	
	MSG_INICIO8 DB "Use 'a' e 'd' para se mover"
	MSG_INICIO8_LEN EQU $-MSG_INICIO8
	MSG_INICIO8_CENTER EQU 20 - (MSG_INICIO8_LEN/2)
	
	MSG_INICIO9 DB "Use 'space' para atirar"
	MSG_INICIO9_LEN EQU $-MSG_INICIO9
	MSG_INICIO9_CENTER EQU 20 - (MSG_INICIO9_LEN/2)
	
	MSG_INICIO10 DB "Nao segure a tecla 'space'"
	MSG_INICIO10_LEN EQU $-MSG_INICIO10
	MSG_INICIO10_CENTER EQU 20 - (MSG_INICIO10_LEN/2)

	SCORE DB "SCORE: "
	SCORE_LEN EQU $-SCORE

	VIDA DB "VIDA:"
	VIDA_LEN EQU $-VIDA

.CODE

start proc
inicio:
	mov ax, @data
	mov ds, ax
	mov es, ax
	
	mov deg_pedra ,1
	mov deg_pedra1,1
	mov deg_pedra2,1
	mov deg_pedra3,1
	mov deg_pedra4,1
	mov	deg_pedra5,1
	mov deg_pedra6,1
	mov deg_pedra7,1
	mov deg_pedra8,1
	
	mov fim_de_jogo,0
	mov aux_vida,0
	mov CONT_AUX,0
	mov conta_alien,0
	mov score_pontos,0
	
	mov CNT_TIROS_,0
	mov aux_tiro_,0
	mov aux4_tiro_,0
	
	mov CNT_TIROS_1,0
	mov aux_tiro_1,0
	mov aux4_tiro_1,0
	
	mov CNT_TIROS_2,0
	mov aux_tiro_2,0
	mov aux4_tiro_2,0
	
	mov CNT_TIROS_3,0
	mov aux_tiro_3,0
	mov aux4_tiro_3,0
	
	mov conta_nave,0
	mov conta_nave1,0
	mov conta_nave2,0
	mov conta_nave3,0
	; modelo grafico
	; 320x200 | 16 cores | A0000
	mov ax, 0013h
	int 10h

	call msg_iniciais
	
	call modo_de_video
	
	mov ax, 1300h
	mov bx, 0bH
	mov dh, 2;linha
	mov dl, MSG_INICIO8_CENTER ; coluna
	mov cx, MSG_INICIO8_LEN
	lea bp, MSG_INICIO8
	int 10h
	
	mov ax, 1300h
	mov bx, 0bH
	mov dh, 4;linha
	mov dl, MSG_INICIO9_CENTER ; coluna
	mov cx, MSG_INICIO9_LEN
	lea bp, MSG_INICIO9
	int 10h
	
	mov ax, 1300h
	mov bx, 04H
	mov dh, 6;linha
	mov dl, MSG_INICIO10_CENTER ; coluna
	mov cx, MSG_INICIO10_LEN
	lea bp, MSG_INICIO10
	int 10h
	
	printar ALIEN1,0fh,100,81,8,64
	
	mov ax, 1300h
	mov bx, 0FH
	mov dh, 10;linha
	mov dl, MSG_INICIO5_CENTER ; coluna
	mov cx, MSG_INICIO5_LEN
	lea bp, MSG_INICIO5
	int 10h
	
	printar ALIEN2,0fh,100,101,8,64
	
	mov ax, 1300h
	mov bx, 0FH
	mov dh, 13;linha
	mov dl, MSG_INICIO6_CENTER ; coluna
	mov cx, MSG_INICIO6_LEN
	lea bp, MSG_INICIO6
	int 10h
	
	printar ALIEN3,0fh,100,126,8,64
	
	mov ax, 1300h
	mov bx, 0FH
	mov dh, 16;linha
	mov dl, MSG_INICIO7_CENTER ; coluna
	mov cx, MSG_INICIO7_LEN
	lea bp, MSG_INICIO7
	int 10h
	
	mov ah, 07H
	int 21h
	
	call modo_de_video
	
	mov ax, 1300h
	mov bx, 0fh
	mov dh, 1 ;linha
	mov dl, 1 ; coluna
	mov cx, SCORE_LEN
	lea bp, SCORE
	int 10h

	mov ax, 1300h
	mov bx, 0fh
	mov dh, 1 ;linha
	mov dl, 8 ; coluna
	mov cx, pontos_LEN
	lea bp, pontos
	int 10h

	mov ax, 1300h
	mov bx, 0fh
	mov dh, 1 ;linha
	mov dl, 30 ; coluna
	mov cx, VIDA_LEN
	lea bp, VIDA
	int 10h
	
	call printa_aliens
	;<matriz, cor, xi, yi, largura, total>
	printar	NAVE, 0fh,160,180,9,81

	printar	PEDRA, 02H,40,160,16,128
	printar	PEDRA, 02H,120,160,16,128
	printar	PEDRA, 02H,200,160,16,128
	printar PEDRA, 02H,280,160,16,128

	printar	PONTO_VIDA, 04H,280,7,9,72
	printar	PONTO_VIDA, 04H,290,7,9,72
	printar	PONTO_VIDA, 04H,300,7,9,72

mov eixo_x_alien,80
mov eixo_y_alien1,46
mov eixo_y_alien2,60
mov eixo_y_alien22,76
mov eixo_y_alien3,90
mov eixo_y_alien32,106

mov cor_alien10 , 0fh
mov cor_alien11 , 0fh
mov cor_alien12 , 0fh
mov cor_alien13 , 0fh
mov cor_alien14 , 0fh
mov cor_alien15 , 0fh
mov cor_alien16 , 0fh
mov cor_alien17 , 0fh
mov cor_alien18 , 0fh
mov cor_alien19 , 0fh
mov cor_alien110, 0fh

mov cor_alien20 , 0fh
mov cor_alien21 , 0fh
mov cor_alien22 , 0fh
mov cor_alien23 , 0fh
mov cor_alien24 , 0fh
mov cor_alien25 , 0fh
mov cor_alien26 , 0fh
mov cor_alien27 , 0fh
mov cor_alien28 , 0fh
mov cor_alien29 , 0fh
mov cor_alien210, 0fh

mov cor_alien30 , 0fh
mov cor_alien31 , 0fh
mov cor_alien32 , 0fh
mov cor_alien33 , 0fh
mov cor_alien34 , 0fh
mov cor_alien35 , 0fh
mov cor_alien36 , 0fh
mov cor_alien37 , 0fh
mov cor_alien38 , 0fh
mov cor_alien39 , 0fh
mov cor_alien310, 0fh

mov cor_alien40 , 0fh
mov cor_alien41 , 0fh
mov cor_alien42 , 0fh
mov cor_alien43 , 0fh
mov cor_alien44 , 0fh
mov cor_alien45 , 0fh
mov cor_alien46 , 0fh
mov cor_alien47 , 0fh
mov cor_alien48 , 0fh
mov cor_alien49 , 0fh
mov cor_alien410, 0fh

mov cor_alien50 , 0fh
mov cor_alien51 , 0fh
mov cor_alien52 , 0fh
mov cor_alien53 , 0fh
mov cor_alien54 , 0fh
mov cor_alien55 , 0fh
mov cor_alien56 , 0fh
mov cor_alien57 , 0fh
mov cor_alien58 , 0fh
mov cor_alien59 , 0fh
mov cor_alien510, 0fh


mov CONT_AUX1,0
mov CONT1,0
mov AUX,48
mov AUX1,48
mov pontos,48

conti:
	call movimento_nave
	;call delay
	call tiro
	;call delay
	call atualizacao_alien
	cmp conta_alien,55
	je ganhou
	cmp fim_de_jogo,1
	je game_over
	;call atualizacao_score
	jmp conti
	
ganhou:
	call modo_de_video
	
	mov ax, 1300h
	mov bx, 4
	mov dh, 10;linha
	mov dl, MSG_FINAL3_CENTER ; coluna
	mov cx, MSG_FINAL3_LEN
	lea bp, MSG_FINAL3
	int 10h
	
	mov ax, 1300h
	mov bx, 0Fh
	mov dh, 14;linha
	mov dl, MSG_FINAL2_CENTER ; coluna
	mov cx, MSG_FINAL2_LEN
	lea bp, MSG_FINAL2
	int 10h
	
	jmp tecla_final
game_over:
	
	call modo_de_video
	
	mov ax, 1300h
	mov bx, 4
	mov dh, 10;linha
	mov dl, MSG_FINAL1_CENTER ; coluna
	mov cx, MSG_FINAL1_LEN
	lea bp, MSG_FINAL1
	int 10h
	
	mov ax, 1300h
	mov bx, 0Fh
	mov dh, 14;linha
	mov dl, MSG_FINAL2_CENTER ; coluna
	mov cx, MSG_FINAL2_LEN
	lea bp, MSG_FINAL2
	int 10h
tecla_final:	
	mov ah, 07H
	int 21h
	
	cmp al,73h
	je reinicia
	
	cmp al,6eh
	je sair
	
	jmp tecla_final
	
reinicia:
	jmp inicio
	
sair:	
	mov AH,4CH
	int 21H
start endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	; 0 - BLACK    4 - RED	    8 - DARKGRAY    C - LIGHTRED
	; 1 - BLUE     5 - MAGENTA    9 - LIGHTBLUE   D - LIGHTMAGENTA
	; 2 - GREEN    6 - BROWN	    A - LIGHTGREEN  E - YELLOW
	; 3 - CYAN     7 - LIGHTGRAY  B - LIGHTCYAN   F - WHITE
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
mata_alien proc
	
	
	mov larg_alien32,0
	mov alt_alien32,0
	mov aux5_tiro,0
compara_y_5:	
	mov bx,eixo_y_alien32
	add bx, alt_alien32
	cmp bx,aux_mata_alien
	je compara_x_50
	inc alt_alien32
	cmp alt_alien32,10
	je prox1
	jmp compara_y_5
prox1:
	jmp prox2
	
compara_x_50:
	mov bx, eixo_x_alien
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata50
	inc larg_alien32
	cmp larg_alien32,10
	je prox51
	jmp compara_x_50
	
mata50:
cmp cor_alien50,0
je ponte50
	mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien50, 0
	mov bx,eixo_x_alien
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret

ponte50:
jmp prox_alien1	
	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox51:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 15
compara_x_51:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata51
	inc larg_alien32
	cmp larg_alien32,10
	je prox52
	jmp compara_x_51
	
mata51:
cmp cor_alien51,0
je ponte51
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien51, 0
	mov bx,eixo_x_alien
	add bx,15
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte51:
jmp prox_alien1	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox52:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 30
compara_x_52:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata52
	inc larg_alien32
	cmp larg_alien32,10
	je prox53
	jmp compara_x_52
	
mata52:
cmp cor_alien52,0
je ponte52
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien52, 0
	mov bx,eixo_x_alien
	add bx,30
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte52:
jmp prox_alien1	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox53:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 45
compara_x_53:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata53
	inc larg_alien32
	cmp larg_alien32,10
	je prox54
	jmp compara_x_53
	
mata53:
cmp cor_alien53,0
je ponte53
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien53, 0
	mov bx,eixo_x_alien
	add bx,45
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte53:
jmp prox_alien1	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox54:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 60
compara_x_54:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata54
	inc larg_alien32
	cmp larg_alien32,10
	je prox55
	jmp compara_x_54
	
mata54:
cmp cor_alien54,0
je ponte54
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien54, 0
	mov bx,eixo_x_alien
	mov cx, eixo_y_alien32
	add bx,60
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte54:
jmp prox_alien1	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox55:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 75
compara_x_55:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata55
	inc larg_alien32
	cmp larg_alien32,10
	je prox56
	jmp compara_x_55
	
mata55:
cmp cor_alien55,0
je ponte55
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien55, 0
	mov bx,eixo_x_alien
	add bx,75
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte55:
jmp prox_alien1	
	
prox2:
	jmp prox_alien1
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox56:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 90
compara_x_56:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata56
	inc larg_alien32
	cmp larg_alien32,10
	je prox57
	jmp compara_x_56
	
mata56:
cmp cor_alien56,0
je ponte56
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien56, 0
	mov bx,eixo_x_alien
	add bx,90
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte56:
jmp prox_alien1	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox57:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 105
compara_x_57:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata57
	inc larg_alien32
	cmp larg_alien32,10
	je prox58
	jmp compara_x_57
	
mata57:
cmp cor_alien57,0
je ponte57
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien57, 0
	mov bx,eixo_x_alien
	add bx,105
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte57:
jmp prox_alien1	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox58:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 120
compara_x_58:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata58
	inc larg_alien32
	cmp larg_alien32,10
	je prox59
	jmp compara_x_58
	
mata58:
cmp cor_alien58,0
je ponte58
	mov aux5_tiro,1
	mov cor_alien58, 0
	mov bx,eixo_x_alien
	add bx,120
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte58:
jmp prox_alien1	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox59:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 135
compara_x_59:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata59
	inc larg_alien32
	cmp larg_alien32,10
	je prox510
	jmp compara_x_59
	
mata59:
cmp cor_alien59,0
je ponte59
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien59, 0
	mov bx,eixo_x_alien
	add bx,135
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte59:
jmp prox_alien1	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox510:
	mov larg_alien32,0
	mov cx, eixo_x_alien
	add cx, 150
compara_x_510:
	mov bx, cx
	add bx, larg_alien32
	cmp bx,aux3_tiro
	je mata510
	inc larg_alien32
	cmp larg_alien32,10
	je acaba1
	jmp compara_x_510
acaba1:
	ret
mata510:
cmp cor_alien510,0
je ponte510
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien510, 0
	mov bx,eixo_x_alien
	add bx,150
	mov cx, eixo_y_alien32
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte510:
jmp prox_alien1	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox_alien1:

	mov larg_alien3,0
	mov alt_alien3,0
	mov aux5_tiro,0
	
compara_y_4:	
	mov bx,eixo_y_alien3
	add bx, alt_alien3
	cmp bx,aux_mata_alien
	je compara_x_40
	inc alt_alien3
	cmp alt_alien3,10
	je prox3
	jmp compara_y_4
prox3:
	jmp prox4

compara_x_40:
	mov bx, eixo_x_alien
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata40
	inc larg_alien3
	cmp larg_alien3,10
	je prox41
	jmp compara_x_40
	
mata40:
	cmp cor_alien40,0
	je ponte40
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien40, 0
	mov bx,eixo_x_alien
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte40:
jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox41:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 15
	
compara_x_41:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata41
	inc larg_alien3
	cmp larg_alien3,10
	je prox42
	jmp compara_x_41
	
mata41:
	cmp cor_alien41,0
	je ponte41
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien41, 0
	mov bx,eixo_x_alien
	add bx,15
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte41:
jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox42:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 30
	
compara_x_42:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata42
	inc larg_alien3
	cmp larg_alien3,10
	je prox43
	jmp compara_x_42
	
mata42:
	cmp cor_alien42,0
	je ponte42
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien42, 0
	mov bx,eixo_x_alien
	add bx,30
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte42:
jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox43:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 45
	
compara_x_43:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata43
	inc larg_alien3
	cmp larg_alien3,10
	je prox44
	jmp compara_x_43
	
mata43:
	cmp cor_alien43,0
	je ponte43
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien43, 0
	mov bx,eixo_x_alien
	add bx,45
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte43:
jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox44:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 60
	
compara_x_44:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata44
	inc larg_alien3
	cmp larg_alien3,10
	je prox45
	jmp compara_x_44
	
mata44:
	cmp cor_alien44,0
	je ponte44
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien44, 0
	mov bx,eixo_x_alien
	add bx,60
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte44:
jmp prox_alien2
prox4:
	jmp prox5
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox45:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 75
	
compara_x_45:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata45
	inc larg_alien3
	cmp larg_alien3,10
	je prox46
	jmp compara_x_45
	
mata45:
	cmp cor_alien45,0
	je ponte45
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien45, 0
	mov bx,eixo_x_alien
	add bx,75
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte45:
jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox46:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 90
	
compara_x_46:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata46
	inc larg_alien3
	cmp larg_alien3,10
	je prox47
	jmp compara_x_46
	
mata46:
	cmp cor_alien46,0
	je ponte46
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien46, 0
	mov bx,eixo_x_alien
	add bx,90
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte46:
jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox47:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 105
	
compara_x_47:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata47
	inc larg_alien3
	cmp larg_alien3,10
	je prox48
	jmp compara_x_47
	
mata47:
	cmp cor_alien47,0
	je ponte47
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien47, 0
	mov bx,eixo_x_alien
	add bx,105
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte47:
jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox48:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 120
	
compara_x_48:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata48
	inc larg_alien3
	cmp larg_alien3,10
	je prox49
	jmp compara_x_48
	
mata48:
	cmp cor_alien48,0
	je ponte48
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien48, 0
	mov bx,eixo_x_alien
	add bx,120
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte48:
jmp prox_alien2
prox5:
	jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox49:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 135
	
compara_x_49:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata49
	inc larg_alien3
	cmp larg_alien3,10
	je prox410
	jmp compara_x_49
	
mata49:
	cmp cor_alien49,0
	je ponte49
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien49, 0
	mov bx,eixo_x_alien
	add bx,135
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte49:
jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox410:
	mov larg_alien3,0
	mov cx, eixo_x_alien
	add cx, 150
	
compara_x_410:
	mov bx, cx
	add bx, larg_alien3
	cmp bx,aux3_tiro
	je mata410
	inc larg_alien3
	cmp larg_alien3,10
	je acaba2
	jmp compara_x_410
	
acaba2:
	ret
mata410:
	cmp cor_alien410,0
	je ponte410
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien410, 0
	mov bx,eixo_x_alien
	add bx,150
	mov cx, eixo_y_alien3
	printar	ALIEN3, 0,BX,cx,8,64
	inc AUX
	inc conta_alien
	ret
ponte410:
jmp prox_alien2
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox_alien2:

	mov larg_alien22,0
	mov alt_alien22,0
	mov aux5_tiro,0
	
compara_y_3:	
	mov bx,eixo_y_alien22
	add bx, alt_alien22
	cmp bx,aux_mata_alien
	je compara_x_30
	inc alt_alien22
	cmp alt_alien22,10
	je prox6
	jmp compara_y_3
prox6:
	jmp prox7

compara_x_30:
	mov bx, eixo_x_alien
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata30
	inc larg_alien22
	cmp larg_alien22,10
	je prox31
	jmp compara_x_30
	
mata30:
	cmp cor_alien30,0
	je ponte30
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien30, 0
	mov bx,eixo_x_alien
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte30:
jmp prox_alien3
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox31:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 15
	
compara_x_31:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata31
	inc larg_alien22
	cmp larg_alien22,10
	je prox32
	jmp compara_x_31
	
mata31:
	cmp cor_alien31,0
	je ponte31
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien31, 0
	mov bx,eixo_x_alien
	add bx,15
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte31:
jmp prox_alien3
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox32:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 30
	
compara_x_32:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata32
	inc larg_alien22
	cmp larg_alien22,10
	je prox33
	jmp compara_x_32
	
mata32:
	cmp cor_alien32,0
	je ponte32
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien32, 0
	mov bx,eixo_x_alien
	add bx,30
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte32:
jmp prox_alien3
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox33:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 45
	
compara_x_33:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata33
	inc larg_alien22
	cmp larg_alien22,10
	je prox34
	jmp compara_x_33
	
mata33:
	cmp cor_alien33,0
	je ponte33
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien33, 0
	mov bx,eixo_x_alien
	add bx,45
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte33:
jmp prox_alien3

prox7:
	jmp prox8
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox34:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 60
	
compara_x_34:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata34
	inc larg_alien22
	cmp larg_alien22,10
	je prox35
	jmp compara_x_34
	
mata34:
	cmp cor_alien34,0
	je ponte34
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien34, 0
	mov bx,eixo_x_alien
	add bx,60
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte34:
jmp prox_alien3
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox35:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 75
	
compara_x_35:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata35
	inc larg_alien22
	cmp larg_alien22,10
	je prox36
	jmp compara_x_35
	
mata35:
	cmp cor_alien35,0
	je ponte35
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien35, 0
	mov bx,eixo_x_alien
	add bx,75
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte35:
jmp prox_alien3
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox36:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 90
	
compara_x_36:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata36
	inc larg_alien22
	cmp larg_alien22,10
	je prox37
	jmp compara_x_36
	
mata36:
	cmp cor_alien36,0
	je ponte36
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien36, 0
	mov bx,eixo_x_alien
	add bx,90
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte36:
jmp prox_alien3	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox37:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 105
	
compara_x_37:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata37
	inc larg_alien22
	cmp larg_alien22,10
	je prox38
	jmp compara_x_37
	
mata37:
	cmp cor_alien37,0
	je ponte37
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien37, 0
	mov bx,eixo_x_alien
	add bx,105
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte37:
jmp prox_alien3	
prox8:
	jmp prox_alien3
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox38:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 120
	
compara_x_38:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata38
	inc larg_alien22
	cmp larg_alien22,10
	je prox39
	jmp compara_x_38
	
mata38:
	cmp cor_alien38,0
	je ponte38
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien38, 0
	mov bx,eixo_x_alien
	add bx,120
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte38:
jmp prox_alien3		
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox39:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 135
	
compara_x_39:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata39
	inc larg_alien22
	cmp larg_alien22,10
	je prox310
	jmp compara_x_39
	
mata39:
	cmp cor_alien39,0
	je ponte39
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien39, 0
	mov bx,eixo_x_alien
	add bx,135
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte39:
jmp prox_alien3		
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox310:
	mov larg_alien22,0
	mov cx, eixo_x_alien
	add cx, 150
	
compara_x_310:
	mov bx, cx
	add bx, larg_alien22
	cmp bx,aux3_tiro
	je mata310
	inc larg_alien22
	cmp larg_alien22,10
	je acaba3
	jmp compara_x_310
acaba3:
	ret
mata310:
	cmp cor_alien310,0
	je ponte310
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien310, 0
	mov bx,eixo_x_alien
	add bx,150
	mov cx, eixo_y_alien22
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte310:
jmp prox_alien3		
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------	
prox_alien3:	

	mov larg_alien2,0
	mov alt_alien2,0
	mov aux5_tiro,0
	
compara_y_2:	
	mov bx,eixo_y_alien2
	add bx, alt_alien2
	cmp bx,aux_mata_alien
	je compara_x_20
	inc alt_alien2
	cmp alt_alien2,10
	je prox9
	jmp compara_y_2
prox9:
	jmp prox10

compara_x_20:
	mov bx, eixo_x_alien
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata20
	inc larg_alien2
	cmp larg_alien2,10
	je prox21
	jmp compara_x_20
	
mata20:
	cmp cor_alien20,0
	je ponte20
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien20, 0
	mov bx,eixo_x_alien
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte20:
jmp prox_alien4
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox21:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 15	
	
compara_x_21:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata21
	inc larg_alien2
	cmp larg_alien2,10
	je prox22
	jmp compara_x_21
	
mata21:
	cmp cor_alien21,0
	je ponte21
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien21, 0
	mov bx,eixo_x_alien
	add bx,15
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte21:
jmp prox_alien4	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox22:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 30	
	
compara_x_22:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata22
	inc larg_alien2
	cmp larg_alien2,10
	je prox23
	jmp compara_x_22
	
mata22:
	cmp cor_alien22,0
	je ponte22
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien22, 0
	mov bx,eixo_x_alien
	add bx,30
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte22:
jmp prox_alien4	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox23:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 45	
	
compara_x_23:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata23
	inc larg_alien2
	cmp larg_alien2,10
	je prox24
	jmp compara_x_23
	
mata23:
	cmp cor_alien23,0
	je ponte23
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien23, 0
	mov bx,eixo_x_alien
	add bx,45
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte23:
jmp prox_alien4	
prox10:
	jmp prox11
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox24:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 60	
	
compara_x_24:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata24
	inc larg_alien2
	cmp larg_alien2,10
	je prox25
	jmp compara_x_24
	
mata24:
	cmp cor_alien24,0
	je ponte24
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien24, 0
	mov bx,eixo_x_alien
	add bx,60
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte24:
jmp prox_alien4	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox25:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 75	
	
compara_x_25:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata25
	inc larg_alien2
	cmp larg_alien2,10
	je prox26
	jmp compara_x_25
	
mata25:
	cmp cor_alien25,0
	je ponte25
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien25, 0
	mov bx,eixo_x_alien
	add bx,75
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte25:
jmp prox_alien4	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox26:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 90	
	
compara_x_26:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata26
	inc larg_alien2
	cmp larg_alien2,10
	je prox27
	jmp compara_x_26
	
mata26:
	cmp cor_alien26,0
	je ponte26
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien26, 0
	mov bx,eixo_x_alien
	add bx,90
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte26:
jmp prox_alien4	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox27:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 105	
	
compara_x_27:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata27
	inc larg_alien2
	cmp larg_alien2,10
	je prox28
	jmp compara_x_27
	
mata27:
	cmp cor_alien27,0
	je ponte27
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien27, 0
	mov bx,eixo_x_alien
	add bx,105
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte27:
jmp prox_alien4	
prox11:
	jmp prox_alien4
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox28:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 120	
	
compara_x_28:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata28
	inc larg_alien2
	cmp larg_alien2,10
	je prox29
	jmp compara_x_28
	
mata28:
	cmp cor_alien28,0
	je ponte28
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien28, 0
	mov bx,eixo_x_alien
	add bx,120
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte28:
jmp prox_alien4	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox29:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 135	
	
compara_x_29:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata29
	inc larg_alien2
	cmp larg_alien2,10
	je prox210
	jmp compara_x_29
	
mata29:
	cmp cor_alien29,0
	je ponte29
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien29, 0
	mov bx,eixo_x_alien
	add bx,135
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte29:
jmp prox_alien4	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox210:
	mov larg_alien2,0
	mov cx, eixo_x_alien
	add cx, 150	
	
compara_x_210:
	mov bx, cx
	add bx, larg_alien2
	cmp bx,aux3_tiro
	je mata210
	inc larg_alien2
	cmp larg_alien2,10
	je acaba4
	jmp compara_x_210
acaba4:
	ret
mata210:
	cmp cor_alien210,0
	je ponte210
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien210, 0
	mov bx,eixo_x_alien
	add bx,150
	mov cx, eixo_y_alien2
	printar	ALIEN2, 0,BX,cx,8,64
	add AUX,2
	inc conta_alien
	ret
ponte210:
jmp prox_alien4	
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox_alien4:

	mov larg_alien1,0
	mov alt_alien1,0
	mov aux5_tiro,0
	
compara_y_1:	
	mov bx,eixo_y_alien1
	add bx, alt_alien1
	cmp bx,aux_mata_alien
	je compara_x_10
	inc alt_alien1
	cmp alt_alien1,10
	je acaba5
	jmp compara_y_1
acaba5:
	ret

compara_x_10:
	mov bx, eixo_x_alien
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata10
	inc larg_alien1
	cmp larg_alien1,10
	je prox1_1
	jmp compara_x_10
mata10:
	cmp cor_alien10,0
	je ponte10
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien10, 0
	mov bx,eixo_x_alien
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte10:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox1_1:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 15
	
compara_x_11:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata11
	inc larg_alien1
	cmp larg_alien1,10
	je prox12
	jmp compara_x_11
	
mata11:
	cmp cor_alien11,0
	je ponte11
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien11, 0
	mov bx,eixo_x_alien
	add bx,15
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte11:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox12:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 30
	
compara_x_12:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata12
	inc larg_alien1
	cmp larg_alien1,10
	je prox13
	jmp compara_x_12
	
mata12:
	cmp cor_alien12,0
	je ponte12
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien12, 0
	mov bx,eixo_x_alien
	add bx,30
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte12:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox13:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 45
	
compara_x_13:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata13
	inc larg_alien1
	cmp larg_alien1,10
	je prox14
	jmp compara_x_13
	
mata13:
	cmp cor_alien13,0
	je ponte13
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien13, 0
	mov bx,eixo_x_alien
	add bx,45
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte13:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox14:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 60
	
compara_x_14:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata14
	inc larg_alien1
	cmp larg_alien1,10
	je prox15
	jmp compara_x_14
	
mata14:
	cmp cor_alien14,0
	je ponte14
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien14, 0
	mov bx,eixo_x_alien
	add bx,60
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte14:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox15:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 75
	
compara_x_15:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata15
	inc larg_alien1
	cmp larg_alien1,10
	je prox16
	jmp compara_x_15
	
mata15:
	cmp cor_alien15,0
	je ponte15
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien15, 0
	mov bx,eixo_x_alien
	add bx,75
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte15:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox16:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 90
	
compara_x_16:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata16
	inc larg_alien1
	cmp larg_alien1,10
	je prox17
	jmp compara_x_16
	
mata16:
	cmp cor_alien16,0
	je ponte16
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien16, 0
	mov bx,eixo_x_alien
	add bx,90
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte16:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox17:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 105
	
compara_x_17:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata17
	inc larg_alien1
	cmp larg_alien1,10
	je prox18
	jmp compara_x_17
	
mata17:
	cmp cor_alien17,0
	je ponte17
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien17, 0
	mov bx,eixo_x_alien
	add bx,105
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte17:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox18:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 120
	
compara_x_18:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata18
	inc larg_alien1
	cmp larg_alien1,10
	je prox19
	jmp compara_x_18
	
mata18:
	cmp cor_alien18,0
	je ponte18
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien18, 0
	mov bx,eixo_x_alien
	add bx,120
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte18:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox19:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 135
	
compara_x_19:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata19
	inc larg_alien1
	cmp larg_alien1,10
	je prox110
	jmp compara_x_19
	
mata19:
	cmp cor_alien19,0
	je ponte19
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien19, 0
	mov bx,eixo_x_alien
	add bx,135
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte19:
jmp acaba
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
prox110:
	mov larg_alien1,0
	mov cx, eixo_x_alien
	add cx, 150
	
compara_x_110:
	mov bx, cx
	add bx, larg_alien1
	cmp bx,aux3_tiro
	je mata110
	inc larg_alien1
	cmp larg_alien1,10
	je acaba
	jmp compara_x_110
	
mata110:
	cmp cor_alien110,0
	je ponte110
mov aux_mata_alien,0
	mov aux5_tiro,1
	mov cor_alien110, 0
	mov bx,eixo_x_alien
	add bx,150
	mov cx, eixo_y_alien1
	printar	ALIEN1, 0,BX,cx,8,64
	add AUX,3
	inc conta_alien
	ret
ponte110:
jmp acaba


acaba:	
	ret

mata_alien endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
menos_vida proc
	
	
perde_vida:
	cmp aux_vida,0
	je perde_vida1
	cmp aux_vida,1
	je perde_vida_2
	cmp aux_vida,2
	je perde_vida_3
	cmp aux_vida,3
	je perde_vida_4
	ret
	
perde_vida_2:
	jmp perde_vida2
	
perde_vida_3:
	jmp perde_vida3

perde_vida_4:
	jmp perde_vida4
	
perde_vida1:	
	printar	PONTO_VIDA, 8,300,7,9,72
	inc aux_vida
	ret
	
perde_vida2:
	printar	PONTO_VIDA, 8,290,7,9,72
	inc aux_vida
	ret
	
perde_vida3:
	printar	PONTO_VIDA, 8,280,7,9,72
	inc aux_vida
	ret
	
perde_vida4:
	mov fim_de_jogo,1
	ret
	

menos_vida endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
tiro proc
	
	call mata_alien
	call atualizacao_score
		
	cmp aux4_tiro,0
	je pega_valor
	jmp sem_apertar
	
pega_valor:
	mov bx,eixo_x_nave
	mov aux3_tiro,bx
sem_apertar:
	call delay
	mov ax, 0100h 
	int 16h
	jz fim_tiro
	
	;call delay
	mov score_pontos,1
	mov ah, 07h
	int 21h
	
	cmp al,32
	je atirar
	jmp return
	
fim_tiro:	
	cmp aux_tiro,1
	je atirar3
	jmp return
atirar3:
jmp atirar2	
return:
ret
verifica_dezena:
cmp AUX,48
je fica_zero
jmp conti_tiro2
fica_zero:
cmp pontos,53
je zera_pontos
jmp conti_tiro
zera_pontos:
sub pontos,5
jmp conti_tiro
atirar:
cmp score_pontos,1
	je	menos_pontos
	jmp conti_tiro
aumenta_pontos:
	sub pontos,5
	;add AUX,1
	jmp conti_tiro
menos_pontos:
	call atualizacao_score
	cmp AUX1,48
	je verifica_dezena
conti_tiro2:
	cmp pontos,50
	ja aumenta_pontos
	sub AUX,1
	ADD pontos,5
conti_tiro:
mov bx,aux3_tiro
mov cx,180
sub cx,CNT_TIROS
mov aux_mata_alien,cx
PRINTAR PROJETIL,4,bx,cx,1,2
mov aux_tiro,1
mov aux4_tiro,1
ret

atirar2:
mov score_pontos,0
mov bx,aux3_tiro
mov cx,180
sub cx,CNT_TIROS
PRINTAR PROJETIL,0,bx,cx,1,2
add CNT_TIROS,5
mov aux_tiro,0
mov cx,180
sub cx,CNT_TIROS
cmp cx,10
je voltar
cmp aux5_tiro,1
je voltar
jmp atirar

voltar:
mov CNT_TIROS,0
mov aux_tiro,0
mov aux4_tiro,0

ret

tiro endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
atualizacao_score proc
; variavel score_pontos
;inc pontos

;teste:
;cmp pontos,58
;jb menor_que10
;jmp maior_q10
;cmp pontos,58
;je teste
;jmp atualiza
;maior_q10:
;inc AUX
;sub pontos,10
;jmp teste

menor_que10:
cmp AUX,58
jge maior_que100
atualiza:
mov ax, 1300h
mov bx, 0fh
mov dh, 1 ;linha
mov dl, 7 ; coluna
mov cx, AUX1_LEN
lea bp, AUX1
int 10h

mov ax, 1300h
mov bx, 0fh
mov dh, 1 ;linha
mov dl, 8 ; coluna
mov cx, AUX_LEN
lea bp, AUX
int 10h

mov ax, 1300h
mov bx, 0fh
mov dh, 1 ;linha
mov dl, 9 ; coluna
mov cx, pontos_LEN
lea bp, pontos
int 10h

ret

maior_que100:
sub AUX,10
inc AUX1
jmp atualiza
atualizacao_score endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
movimento_nave proc

entrada_tecla:
	
	mov bx,160
	sub bx,CONT_AUX
	
	mov eixo_x_nave,bx
	
	mov ax, 0100h 
	int 16h
	jz fim

	mov ah, 07h
	int 21h
	
	cmp al,97
	je esquerda

	cmp al,100
	je direita1
	
	cmp al, 70h
	je chama_vida
	
fim:	
	ret
	
direita1:
	jmp direita
	
final1:
	jmp final
	
chama_vida:
	call menos_vida
	ret
	
esquerda:
	cmp bx,0
	je final1
	mov CONT,0
	mov BX,eixo_x_nave
	printar	NAVE, 0,BX,180,9,81
	mov BX,eixo_x_nave
	add CONT,5
	add CONT_AUX,5
	sub BX,CONT
	printar	NAVE, 0fh,BX,180,9,81
	ret
final2:
	jmp final
	
direita:
	cmp bx,305
	ja final2

	mov CONT,0
	mov BX,eixo_x_nave
	printar	NAVE, 0,BX,180,9,81
	mov BX,eixo_x_nave
	add CONT,5
	sub CONT_AUX,5
	add BX,CONT
	
	printar	NAVE, 0fh,BX,180,9,81
final:
	ret
movimento_nave endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
movimento_aliens proc

call mata_alien
	
atualizacao_alien:

mov CONT1,0
mov CONT2,0

cmp eixo_x_alien,0
je mover_direita1

cmp eixo_x_alien,160
je mover_esquerda1

cmp CONT_AUX1,0
je mover_esquerda
jmp mover_direita1

mover_esquerda1:
	jmp mover_esquerda

mover_direita1:
	jmp mover_direita3

mover_esquerda:
mov CX,eixo_y_alien1
mov BX,eixo_x_alien
sub BX,CONT1
mov eixo_x_alien,BX
cmp cor_alien10,0
je print_prox
printar	ALIEN1, 0,bx,cx,8,64
print_prox:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
	cmp cor_alien20,0
	je print_prox1
printar	ALIEN2, 0,bx,cx,8,64
	print_prox1:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
	cmp cor_alien30,0
	je print_prox2
printar	ALIEN2, 0,bx,cx,8,64
	print_prox2:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
	cmp cor_alien40,0
	je print_prox3
printar	ALIEN3, 0,bx,cx,8,64
	print_prox3:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
	cmp cor_alien50,0
	je print_prox4
printar	ALIEN3, 0,bx,cx,8,64
	print_prox4:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,15   
	cmp cor_alien11,0
	je print_prox5         
printar	ALIEN1, 0,BX,cx,8,64
	print_prox5:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,15   
	cmp cor_alien21,0
	je print_prox6            
printar	ALIEN2, 0,bx,cx,8,64
	print_prox6:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,15 
	cmp cor_alien31,0
	je print_prox7           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox7:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,15   
	cmp cor_alien41,0
	je print_prox8          
printar	ALIEN3, 0,bx,cx,8,64
	print_prox8:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,15
	cmp cor_alien51,0
	je print_prox9             
printar	ALIEN3, 0,bx,cx,8,64
	print_prox9:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,30    
	cmp cor_alien12,0
	je print_prox10         
printar	ALIEN1, 0,BX,cx,8,64
	print_prox10:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,30 
	cmp cor_alien22,0
	je print_prox11              
printar	ALIEN2, 0,bx,cx,8,64
	print_prox11:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,30    
	cmp cor_alien32,0
	je print_prox12         
printar	ALIEN2, 0,bx,cx,8,64
	print_prox12:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,30 
	cmp cor_alien42,0
	je print_prox13           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox13:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,30
	cmp cor_alien52,0
	je print_prox14            
printar	ALIEN3, 0,bx,cx,8,64
	print_prox14:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,45
	cmp cor_alien13,0
	je print_prox15            
printar	ALIEN1, 0,BX,cx,8,64
	print_prox15:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,45
	cmp cor_alien23,0
	je print_prox16            
printar	ALIEN2, 0,bx,cx,8,64
	print_prox16:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,45 
	cmp cor_alien33,0
	je print_prox17           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox17:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,45 
	cmp cor_alien43,0
	je print_prox18           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox18:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,45  
	cmp cor_alien53,0
	je print_prox19          
printar	ALIEN3, 0,bx,cx,8,64
	print_prox19:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,60
	cmp cor_alien14,0
	je print_prox20           
printar	ALIEN1, 0,BX,cx,8,64
	print_prox20:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,60  
	cmp cor_alien24,0
	je print_prox21
printar	ALIEN2, 0,bx,cx,8,64
	print_prox21:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,60 
	cmp cor_alien34,0
	je print_prox22           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox22:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,60
	cmp cor_alien44,0
	je print_prox23            
printar	ALIEN3, 0,bx,cx,8,64
	print_prox23:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,60 
	cmp cor_alien54,0
	je print_prox24           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox24:
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
jmp pontes
mover_direita3:
jmp mover_direita4
pontes:
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,75 
	cmp cor_alien15,0
	je print_prox25           
printar	ALIEN1, 0,BX,cx,8,64
	print_prox25:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,75 
	cmp cor_alien25,0
	je print_prox26           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox26:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,75 
	cmp cor_alien35,0
	je print_prox27           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox27:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,75 
	cmp cor_alien45,0
	je print_prox28           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox28:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,75  
	cmp cor_alien55,0
	je print_prox29          
printar	ALIEN3, 0,bx,cx,8,64
	print_prox29:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,90
	cmp cor_alien16,0
	je print_prox30            
printar	ALIEN1, 0,BX,cx,8,64
	print_prox30:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,90 
	cmp cor_alien26,0
	je print_prox31           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox31:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,90
	cmp cor_alien36,0
	je print_prox32            
printar	ALIEN2, 0,bx,cx,8,64
	print_prox32:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,90
	cmp cor_alien46,0
	je print_prox33            
printar	ALIEN3, 0,bx,cx,8,64
	print_prox33:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,90 
	cmp cor_alien56,0
	je print_prox34           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox34:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,105 
	cmp cor_alien17,0
	je print_prox35          
printar	ALIEN1, 0,BX,cx,8,64
	print_prox35:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,105
	cmp cor_alien27,0
	je print_prox36           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox36:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,105 
	cmp cor_alien37,0
	je print_prox37          
printar	ALIEN2, 0,bx,cx,8,64
	print_prox37:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,105
	cmp cor_alien47,0
	je print_prox38
printar	ALIEN3, 0,bx,cx,8,64
	print_prox38:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,105
	cmp cor_alien57,0
	je print_prox39           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox39:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,120 
	cmp cor_alien18,0
	je print_prox40          
printar	ALIEN1, 0,BX,cx,8,64
	print_prox40:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,120 
	cmp cor_alien28,0
	je print_prox41          
printar	ALIEN2, 0,bx,cx,8,64
	print_prox41:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,120  
	cmp cor_alien38,0
	je print_prox42          
printar	ALIEN2, 0,bx,cx,8,64
	print_prox42:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,120
	cmp cor_alien48,0
	je print_prox43            
printar	ALIEN3, 0,bx,cx,8,64
	print_prox43:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,120  
	cmp cor_alien58,0
	je print_prox44         
printar	ALIEN3, 0,bx,cx,8,64
	print_prox44:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,135 
	cmp cor_alien19,0
	je print_prox45          
printar	ALIEN1, 0,BX,cx,8,64
	print_prox45:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,135
	cmp cor_alien29,0
	je print_prox46           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox46:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,135  
	cmp cor_alien39,0
	je print_prox47         
printar	ALIEN2, 0,bx,cx,8,64
	print_prox47:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,135 
	cmp cor_alien49,0
	je print_prox48          
printar	ALIEN3, 0,bx,cx,8,64
print_prox48:
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
jmp pontes2
mover_direita4:
jmp mover_direita5
pontes2:
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,135
	cmp cor_alien59,0
	je print_prox49           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox49:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,150
	cmp cor_alien110,0
	je print_prox50            
printar	ALIEN1, 0,BX,cx,8,64
	print_prox50:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,150   
    cmp cor_alien210,0
	je print_prox51
printar	ALIEN2, 0,bx,cx,8,64
	print_prox51:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,150
    cmp cor_alien310,0
	je print_prox52           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox52:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,150 
    cmp cor_alien410,0
	je print_prox53           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox53:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,150
	cmp cor_alien510,0
	je print_prox54
printar	ALIEN3, 0,bx,cx,8,64
	print_prox54:
	call delay
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
cmp eixo_x_alien,160
je baixo_coluna

;esquerda_coluna
jmp pular
baixo_coluna:
mov CX,eixo_y_alien1
add CX,2
mov eixo_y_alien1,CX
mov CX,eixo_y_alien2
add CX,2
mov eixo_y_alien2,CX
mov CX,eixo_y_alien22
add CX,2
mov eixo_y_alien22,CX
mov CX,eixo_y_alien3
add CX,2
mov eixo_y_alien3,CX
mov CX,eixo_y_alien32
add CX,2
mov eixo_y_alien32,CX
pular:


mov BX,eixo_x_alien
add CONT1,2
sub BX,CONT1
mov eixo_x_alien,bx
mov CX,eixo_y_alien1
mov ah,cor_alien10
cmp cor_alien10,0
je printa_b_
jmp segue31
printa_b_:
jmp printa_b
segue31:
	cmp cor_alien20,0
	je atira_25
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien10 
printar	ALIEN1, ah,bx,cx,8,64
	jmp sem_atirar_24
atira_25:
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien10
printar	ALIEN1, ah,bx,cx,8,64
	call alien_atira
sem_atirar_24:
mov CX,eixo_y_alien1
cmp cx,172
je fim1
jmp printa_b
fim1:
	mov fim_de_jogo,1
printa_b:             
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien
mov ah,cor_alien20 
	cmp cor_alien20,0
	je printa_b1_
	jmp segue30
	printa_b1_:
	jmp printa_b1
	segue30:
	cmp cor_alien30,0
	je atira_24
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien20 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_23
atira_24:
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien20
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira
sem_atirar_23:
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim2
	jmp printa_b1
	fim2:
		mov fim_de_jogo,1
	printa_b1:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien 
mov ah,cor_alien30 
	cmp cor_alien30,0
	je printa_b2_
jmp segue29
printa_b2_:
jmp printa_b2	
	segue29:
	cmp cor_alien40,0
	je atira_23
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien30 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_22
atira_23:
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx

	mov ah,cor_alien30
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira
sem_atirar_22:
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim3
	jmp printa_b2
	fim3:
		mov fim_de_jogo,1
	printa_b2:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien 
mov ah,cor_alien40 
	cmp cor_alien40,0
	je printa_b3_
	jmp segue1
printa_b3_:
	jmp printa_b3
segue1:
	cmp cor_alien50,0
	je atira
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien40 
printar	ALIEN3, ah,bx,cx,8,64
	jmp sem_atirar
atira:
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien40
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira
sem_atirar:	
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim4
	jmp printa_b3
	fim4:
		mov fim_de_jogo,1
	printa_b3:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien 
mov ah,cor_alien50 
	cmp cor_alien50,0
	je printa_b4   
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien50
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim5
	jmp printa_b4
	fim5:
		mov fim_de_jogo,1
	printa_b4:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,15 
mov ah,cor_alien11 
	cmp cor_alien11,0
	je printa_b5         
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim6
	jmp printa_b5
	fim6:
		mov fim_de_jogo,1
	printa_b5:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,15   
mov ah,cor_alien21
	cmp cor_alien21,0
	je printa_b6            
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim7
	jmp printa_b6
	fim7:
		mov fim_de_jogo,1
	printa_b6:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,15         
mov ah,cor_alien31     
	cmp cor_alien31,0
	je printa_b7
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim8
	jmp printa_b7
	fim8:
		mov fim_de_jogo,1
	printa_b7:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,15   
mov ah,cor_alien41  
	cmp cor_alien41,0
	je printa_b8         
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim9
	jmp printa_b8
	fim9:
		mov fim_de_jogo,1
	printa_b8:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,15    
mov ah,cor_alien51   
	cmp cor_alien51,0
	je printa_b9       
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim10
	jmp printa_b9
	fim10:
		mov fim_de_jogo,1
	printa_b9:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,30
mov ah,cor_alien12  
	cmp cor_alien12,0
	je printa_b10     
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim11
	jmp printa_b10
	fim11:
		mov fim_de_jogo,1
	printa_b10:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,30       
mov ah,cor_alien22  
	cmp cor_alien22,0
	je printa_b11     
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim12
	jmp printa_b11
	fim12:
		mov fim_de_jogo,1
	printa_b11:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,30        
mov ah,cor_alien32 
	cmp cor_alien32,0
	je printa_b12      
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim13
	jmp printa_b12
	fim13:
		mov fim_de_jogo,1
	printa_b12:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,30        
mov ah,cor_alien42  
	cmp cor_alien42,0
	je printa_b13    
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim14
	jmp printa_b13
	fim14:
		mov fim_de_jogo,1
	printa_b13:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,30        
mov ah,cor_alien52   
	cmp cor_alien52,0
	je printa_b14    
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim15
	jmp printa_b14
	fim15:
		mov fim_de_jogo,1
	printa_b14:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,45        
mov ah,cor_alien13 
	cmp cor_alien13,0
	je printa_b15_
	jmp segue28
	printa_b15_:
	jmp printa_b15
	segue28:
	cmp cor_alien23,0
	je atira26
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien13 
printar	ALIEN1, ah,bx,cx,8,64
	jmp sem_atirar25
atira26:
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien13
printar	ALIEN1, ah,bx,cx,8,64
	call alien_atira1
sem_atirar25:
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim16
	jmp printa_b15
	fim16:
		mov fim_de_jogo,1
	printa_b15:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,45       
mov ah,cor_alien23  
	cmp cor_alien23,0
	je printa_b16_
	jmp segue27
	printa_b16_:
	jmp printa_b16
	segue27:
	cmp cor_alien33,0
	je atira25
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien23 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar24
atira25:
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien23
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira1
sem_atirar24:	
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim17
	jmp printa_b16
	fim17:
		mov fim_de_jogo,1
	printa_b16:
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
jmp pontes4
mover_direita5:
jmp mover_direita2
pontes4:
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,45    
mov ah,cor_alien33    
	cmp cor_alien33,0
	je printa_b17_
jmp segue26
printa_b17_:
jmp printa_b17
	segue26:
	
	cmp cor_alien43,0
	je atira24
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien33 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar23
atira24:
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien33
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira1
sem_atirar23:	
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim18
	jmp printa_b17
	fim18:
		mov fim_de_jogo,1
	printa_b17:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,45    
mov ah,cor_alien43 
	cmp cor_alien43,0
	je printa_b18_ 
	jmp segue2
printa_b18_:
	jmp printa_b18
segue2:
	cmp cor_alien53,0
	je atira1
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien43 
printar	ALIEN3, ah,bx,cx,8,64
	jmp sem_atirar10
atira1:
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien43
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira1
sem_atirar10:	
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim19
	jmp printa_b18
	fim19:
	mov fim_de_jogo,1
	printa_b18:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,45  
mov ah,cor_alien53  
	cmp cor_alien53,0
	je printa_b19          
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien53
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira1
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim20
	jmp printa_b19
	fim20:
		mov fim_de_jogo,1
	printa_b19:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,60     
mov ah,cor_alien14  
	cmp cor_alien14,0
	je printa_b20     
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim21
	jmp printa_b20
	fim21:
		mov fim_de_jogo,1
	printa_b20:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,60    
mov ah,cor_alien24  
	cmp cor_alien24,0
	je printa_b21         
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim22
	jmp printa_b21
	fim22:
		mov fim_de_jogo,1
	printa_b21:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,60        
mov ah,cor_alien34      
	cmp cor_alien34,0
	je printa_b22  
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim23
	jmp printa_b22
	fim23:
		mov fim_de_jogo,1
	printa_b22:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,60        
mov ah,cor_alien44   
	cmp cor_alien44,0
	je printa_b23  
	mov ah,cor_alien44
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim24
	jmp printa_b23
	fim24:
		mov fim_de_jogo,1
	printa_b23:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,60        
mov ah,cor_alien54    
	cmp cor_alien54,0
	je printa_b24    
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim25
	jmp printa_b24
	fim25:
		mov fim_de_jogo,1
	printa_b24:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,75        
mov ah,cor_alien15  
	cmp cor_alien15,0
	je printa_b25     
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim26
	jmp printa_b25
	fim26:
		mov fim_de_jogo,1
	printa_b25:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien   
add bx,75  
mov ah,cor_alien25  
	cmp cor_alien25,0
	je printa_b26         
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim27
	jmp printa_b26
	fim27:
		mov fim_de_jogo,1
	printa_b26:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,75    
mov ah,cor_alien35     
	cmp cor_alien35,0
	je printa_b27        
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim28
	jmp printa_b27
	fim28:
		mov fim_de_jogo,1
	printa_b27:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,75        
mov ah,cor_alien45      
	cmp cor_alien45,0
	je printa_b28
printar	ALIEN3, ah,BX,cx,8,64 
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim29
	jmp printa_b28
	fim29:
		mov fim_de_jogo,1
	printa_b28:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,75        
mov ah,cor_alien55   
	cmp cor_alien55,0
	je printa_b29   
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim30
	jmp printa_b29
	fim30:
		mov fim_de_jogo,1
	printa_b29:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,90        
mov ah,cor_alien16  
	cmp cor_alien16,0
	je printa_b30_
jmp segue25
printa_b30_:
jmp printa_b30	
	segue25:
	cmp cor_alien26,0
	je atira29
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien16 
printar	ALIEN1, ah,bx,cx,8,64
	jmp sem_atirar28
atira29:
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien16 
printar	ALIEN1, ah,bx,cx,8,64
	call alien_atira2
sem_atirar28:
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim31
	jmp printa_b30
	fim31:
		mov fim_de_jogo,1
	printa_b30:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,90     
mov ah,cor_alien26 
	cmp cor_alien26,0
	je printa_b31_
jmp segue24
printa_b31_:
jmp printa_b31    
	segue24:
	cmp cor_alien36,0
	je atira28
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien26 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar27
atira28:
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien26 
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira2
sem_atirar27:
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim32
	jmp printa_b31
	fim32:
		mov fim_de_jogo,1
	printa_b31:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
jmp pontes3
mover_direita2:
jmp mover_direita
pontes3:   
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
add bx,90  
mov ah,cor_alien36       
	cmp cor_alien36,0
	je printa_b32_
jmp segue23
printa_b32_:
jmp printa_b32	
    segue23:
	cmp cor_alien46,0
	je atira27
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien36 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar26
atira27:
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien36 
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira2
sem_atirar26:
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim33
	jmp printa_b32
	fim33:
		mov fim_de_jogo,1
	printa_b32:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,90  
mov ah,cor_alien46   
	cmp cor_alien46,0
	je printa_b33_ 
	jmp segue3
printa_b33_:
	jmp printa_b33
segue3:
	cmp cor_alien56,0
	je atira2
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien46 
printar	ALIEN3, ah,bx,cx,8,64
	jmp sem_atirar2
atira2:
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien46 
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira2
sem_atirar2:	
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim34
	jmp printa_b33
	fim34:
		mov fim_de_jogo,1
	printa_b33:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,90    
mov ah,cor_alien56  
	cmp cor_alien56,0
	je printa_b34        
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien56
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira2
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim35
	jmp printa_b34
	fim35:
		mov fim_de_jogo,1
	printa_b34:                
mov CX,eixo_y_alien1					  
mov bx,eixo_x_alien    
add bx,105    
mov ah,cor_alien17      
	cmp cor_alien17,0
	je printa_b35     
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim36
	jmp printa_b35
	fim36:
		mov fim_de_jogo,1
	printa_b35: 
mov CX,eixo_y_alien2
mov bx,eixo_x_alien    
add bx,105  
mov ah,cor_alien27   
	cmp cor_alien27,0
	je printa_b36         
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim37
	jmp printa_b36
	fim37:
		mov fim_de_jogo,1
	printa_b36: 
mov CX,eixo_y_alien22
mov bx,eixo_x_alien    
add bx,105    
mov ah,cor_alien37
	cmp cor_alien37,0
	je printa_b37           
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim38
	jmp printa_b37
	fim38:
		mov fim_de_jogo,1
	printa_b37: 
mov CX,eixo_y_alien3
mov bx,eixo_x_alien    
add bx,105  
mov ah,cor_alien47   
	cmp cor_alien47,0
	je printa_b38          
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim39
	jmp printa_b38
	fim39:
		mov fim_de_jogo,1
	printa_b38:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien    
add bx,105        
mov ah,cor_alien57    
	cmp cor_alien57,0
	je printa_b39  
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim40
	jmp printa_b39
	fim40:
		mov fim_de_jogo,1
	printa_b39:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien    
add bx,120      
mov ah,cor_alien18 
	cmp cor_alien18,0
	je printa_b40        
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim41
	jmp printa_b40
	fim41:
		mov fim_de_jogo,1
	printa_b40:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien    
add bx,120    
mov ah,cor_alien28 
	cmp cor_alien28,0
	je printa_b41          
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim42
	jmp printa_b41
	fim42:
		mov fim_de_jogo,1
	printa_b41:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien   
add bx,120       
mov ah,cor_alien38      
	cmp cor_alien38,0
	je printa_b42 
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim43
	jmp printa_b42
	fim43:
		mov fim_de_jogo,1
	printa_b42:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien    
add bx,120      
mov ah,cor_alien48  
	cmp cor_alien48,0
	je printa_b43      
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim44
	jmp printa_b43
	fim44:
		mov fim_de_jogo,1
	printa_b43:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien    
add bx,120    
mov ah,cor_alien58    
	cmp cor_alien58,0
	je printa_b44     
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim45
	jmp printa_b44
	fim45:
		mov fim_de_jogo,1
	printa_b44:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien    
add bx,135      
mov ah,cor_alien19  
	cmp cor_alien19,0
	je printa_b45_
	jmp segue22
printa_b45_:
jmp printa_b45	
    segue22:
	cmp cor_alien29,0
	je atira32
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien19 
printar	ALIEN1, ah,bx,cx,8,64
	jmp sem_atirar31
atira32:
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien19 
printar	ALIEN1, ah,bx,cx,8,64
	call alien_atira3
sem_atirar31:
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim46
	jmp printa_b45
	fim46:
		mov fim_de_jogo,1
	printa_b45:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien    
add bx,135    
mov ah,cor_alien29   
	cmp cor_alien29,0
	je printa_b46_
jmp segue21
printa_b46_:
jmp printa_b46	
    segue21:
	cmp cor_alien39,0
	je atira31
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien29 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar30
atira31:
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien29 
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira3
sem_atirar30:
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim47
	jmp printa_b46
	fim47:
		mov fim_de_jogo,1
	printa_b46:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien    
add bx,135   
mov ah,cor_alien39 
	cmp cor_alien39,0
	je printa_b47_
	jmp segue20
printa_b47_:
jmp printa_b47	
	segue20:
	cmp cor_alien49,0
	je atira30
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien39 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar29
atira30:
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien39 
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira3
sem_atirar29:
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim48
	jmp printa_b47
	fim48:
		mov fim_de_jogo,1
	printa_b47:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien    
add bx,135   
mov ah,cor_alien49  
	cmp cor_alien49,0
	je printa_b48_
	jmp segue
printa_b48_:
		jmp printa_b48
segue:
	cmp cor_alien59,0
	je atira3
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien49 
printar	ALIEN3, ah,bx,cx,8,64
	jmp sem_atirar3
atira3:
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien49 
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira3
sem_atirar3:	
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim49
	jmp printa_b48
	fim49:
		mov fim_de_jogo,1
	printa_b48:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien    
add bx,135   
mov ah,cor_alien59   
	cmp cor_alien59,0
	je printa_b49       
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien59
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira3
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim50
	jmp printa_b49
	fim50:
		mov fim_de_jogo,1
	printa_b49:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien    
add bx,150      
mov ah,cor_alien110 
	cmp cor_alien110,0
	je printa_b50       
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim51
	jmp printa_b50
	fim51:
		mov fim_de_jogo,1
	printa_b50:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien    
add bx,150     
mov ah,cor_alien210  
	cmp cor_alien210,0
	je printa_b51      
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim52
	jmp printa_b51
	fim52:
		mov fim_de_jogo,1
	printa_b51:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien    
add bx,150   
mov ah,cor_alien310 
	cmp cor_alien310,0
	je printa_b52          
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim53
	jmp printa_b52
	fim53:
		mov fim_de_jogo,1
	printa_b52:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien    
add bx,150  
mov ah,cor_alien410 
	cmp cor_alien410,0
	je printa_b53           
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim54
	jmp printa_b53
	fim54:
		mov fim_de_jogo,1
	printa_b53:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien    
add bx,150    
mov ah,cor_alien510      
	cmp cor_alien510,0
	je printa_b54      
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim55
	jmp printa_b54
	fim55:
		mov fim_de_jogo,1
	printa_b54:
mov CONT_AUX1,0

;cmp eixo_y_alien32,172
;je verific1

	ret
	
;verific1:
;	mov fim_de_jogo,1
;	ret

;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
mover_direita:
mov CX,eixo_y_alien1
mov BX,eixo_x_alien
add BX,CONT2
cmp cor_alien10,0
je print_proxd
printar	ALIEN1, 0,bx,cx,8,64
print_proxd:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
	cmp cor_alien20,0
	je print_prox1d
printar	ALIEN2, 0,bx,cx,8,64
	print_prox1d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
	cmp cor_alien30,0
	je print_prox2d
printar	ALIEN2, 0,bx,cx,8,64
	print_prox2d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
	cmp cor_alien40,0
	je print_prox3d
printar	ALIEN3, 0,bx,cx,8,64
	print_prox3d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
	cmp cor_alien50,0
	je print_prox4d
printar	ALIEN3, 0,bx,cx,8,64
	print_prox4d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,15   
	cmp cor_alien11,0
	je print_prox5d         
printar	ALIEN1, 0,BX,cx,8,64
	print_prox5d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,15   
	cmp cor_alien21,0
	je print_prox6d            
printar	ALIEN2, 0,bx,cx,8,64
	print_prox6d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,15 
	cmp cor_alien31,0
	je print_prox7d           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox7d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,15   
	cmp cor_alien41,0
	je print_prox8d          
printar	ALIEN3, 0,bx,cx,8,64
	print_prox8d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,15
	cmp cor_alien51,0
	je print_prox9d             
printar	ALIEN3, 0,bx,cx,8,64
	print_prox9d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,30     
	cmp cor_alien12,0
	je print_prox10d         
printar	ALIEN1, 0,BX,cx,8,64
	print_prox10d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,30 
	cmp cor_alien22,0
	je print_prox11d              
printar	ALIEN2, 0,bx,cx,8,64
	print_prox11d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,30    
	cmp cor_alien32,0
	je print_prox12d         
printar	ALIEN2, 0,bx,cx,8,64
	print_prox12d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,30 
	cmp cor_alien42,0
	je print_prox13d           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox13d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,30
	cmp cor_alien52,0
	je print_prox14d            
printar	ALIEN3, 0,bx,cx,8,64
	print_prox14d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,45
	cmp cor_alien13,0
	je print_prox15d            
printar	ALIEN1, 0,BX,cx,8,64
	print_prox15d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,45
	cmp cor_alien23,0
	je print_prox16d            
printar	ALIEN2, 0,bx,cx,8,64
	print_prox16d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,45 
	cmp cor_alien33,0
	je print_prox17d           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox17d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,45 
	cmp cor_alien43,0
	je print_prox18d           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox18d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,45  
	cmp cor_alien53,0
	je print_prox19d          
printar	ALIEN3, 0,bx,cx,8,64
	print_prox19d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,60
	cmp cor_alien14,0
	je print_prox20d           
printar	ALIEN1, 0,BX,cx,8,64
	print_prox20d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,60  
	cmp cor_alien24,0
	je print_prox21d
printar	ALIEN2, 0,bx,cx,8,64
	print_prox21d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,60 
	cmp cor_alien34,0
	je print_prox22d           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox22d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,60
	cmp cor_alien44,0
	je print_prox23d            
printar	ALIEN3, 0,bx,cx,8,64
	print_prox23d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,60 
	cmp cor_alien54,0
	je print_prox24d           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox24d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,75 
	cmp cor_alien15,0
	je print_prox25d           
printar	ALIEN1, 0,BX,cx,8,64
	print_prox25d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,75 
	cmp cor_alien25,0
	je print_prox26d           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox26d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,75 
	cmp cor_alien35,0
	je print_prox27d           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox27d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,75 
	cmp cor_alien45,0
	je print_prox28d           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox28d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,75  
	cmp cor_alien55,0
	je print_prox29d          
printar	ALIEN3, 0,bx,cx,8,64
	print_prox29d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,90
	cmp cor_alien16,0
	je print_prox30d            
printar	ALIEN1, 0,BX,cx,8,64
	print_prox30d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,90 
	cmp cor_alien26,0
	je print_prox31d           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox31d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,90
	cmp cor_alien36,0
	je print_prox32d            
printar	ALIEN2, 0,bx,cx,8,64
	print_prox32d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,90
	cmp cor_alien46,0
	je print_prox33d            
printar	ALIEN3, 0,bx,cx,8,64
	print_prox33d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,90 
	cmp cor_alien56,0
	je print_prox34d           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox34d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,105 
	cmp cor_alien17,0
	je print_prox35d          
printar	ALIEN1, 0,BX,cx,8,64
	print_prox35d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,105
	cmp cor_alien27,0
	je print_prox36d          
printar	ALIEN2, 0,bx,cx,8,64
	print_prox36d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,105 
	cmp cor_alien37,0
	je print_prox37d          
printar	ALIEN2, 0,bx,cx,8,64
	print_prox37d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,105
	cmp cor_alien47,0
	je print_prox38d
printar	ALIEN3, 0,bx,cx,8,64
	print_prox38d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,105
	cmp cor_alien57,0
	je print_prox39d           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox39d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,120 
	cmp cor_alien18,0
	je print_prox40d          
printar	ALIEN1, 0,BX,cx,8,64
	print_prox40d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,120 
	cmp cor_alien28,0
	je print_prox41d          
printar	ALIEN2, 0,bx,cx,8,64
	print_prox41d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,120  
	cmp cor_alien38,0
	je print_prox42d          
printar	ALIEN2, 0,bx,cx,8,64
	print_prox42d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,120
	cmp cor_alien48,0
	je print_prox43d            
printar	ALIEN3, 0,bx,cx,8,64
	print_prox43d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,120  
	cmp cor_alien58,0
	je print_prox44d        
printar	ALIEN3, 0,bx,cx,8,64
	print_prox44d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,135 
	cmp cor_alien19,0
	je print_prox45d          
printar	ALIEN1, 0,BX,cx,8,64
	print_prox45d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,135
	cmp cor_alien29,0
	je print_prox46d           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox46d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,135  
	cmp cor_alien39,0
	je print_prox47d         
printar	ALIEN2, 0,bx,cx,8,64
	print_prox47d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,135 
	cmp cor_alien49,0
	je print_prox48d          
printar	ALIEN3, 0,bx,cx,8,64
	print_prox48d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,135
	cmp cor_alien59,0
	je print_prox49d           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox49d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien  
add bx,150
	cmp cor_alien110,0
	je print_prox50d            
printar	ALIEN1, 0,BX,cx,8,64
	print_prox50d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien  
add bx,150   
    cmp cor_alien210,0
	je print_prox51d
printar	ALIEN2, 0,bx,cx,8,64
	print_prox51d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien  
add bx,150
    cmp cor_alien310,0
	je print_prox52d           
printar	ALIEN2, 0,bx,cx,8,64
	print_prox52d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien  
add bx,150 
    cmp cor_alien410,0
	je print_prox53d           
printar	ALIEN3, 0,bx,cx,8,64
	print_prox53d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien  
add bx,150
	cmp cor_alien510,0
	je print_prox54d
printar	ALIEN3, 0,bx,cx,8,64
print_prox54d:
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
cmp eixo_x_alien,0
je baixo_coluna1

;direita_coluna

jmp pular1
baixo_coluna1:
mov CX,eixo_y_alien1
add CX,2
mov eixo_y_alien1,CX
mov CX,eixo_y_alien2
add CX,2
mov eixo_y_alien2,CX
mov CX,eixo_y_alien22
add CX,2
mov eixo_y_alien22,CX
mov CX,eixo_y_alien3
add CX,2
mov eixo_y_alien3,CX
mov CX,eixo_y_alien32
add CX,2
mov eixo_y_alien32,CX
pular1:

call delay
mov CX,eixo_y_alien1
mov BX,eixo_x_alien
add CONT2,2
add BX,CONT2
mov eixo_x_alien,bx
mov CX,eixo_y_alien1
mov ah,cor_alien10
cmp cor_alien10,0
je printa_bd_
jmp segue19
	printa_bd_:
	jmp printa_bd
	segue19:
	cmp cor_alien20,0
	je atira_13
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien10 
printar	ALIEN1, ah,bx,cx,8,64
	jmp sem_atirar_12
atira_13:
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien10 
printar	ALIEN1, ah,bx,cx,8,64
	call alien_atira
sem_atirar_12:
mov CX,eixo_y_alien1
cmp cx,172
je fim1d
jmp printa_bd
fim1d:
	mov fim_de_jogo,1
printa_bd:             
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien
mov ah,cor_alien20 
	cmp cor_alien20,0
	je printa_b1d_
	jmp segue18
	printa_b1d_:
	jmp printa_b1d
	segue18:
	cmp cor_alien30,0
	je atira_12
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien20 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_11
atira_12:
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien20 
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira
sem_atirar_11:
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim2d
	jmp printa_b1d
	fim2d:
		mov fim_de_jogo,1
	printa_b1d:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien 
mov ah,cor_alien30 
	cmp cor_alien30,0
	je printa_b2d_
jmp segue17
printa_b2d_:
	jmp printa_b2d
	segue17:
	cmp cor_alien40,0
	je atira_11
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien30 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_1
atira_11:
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien30 
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira
sem_atirar_1:	
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim3d
	jmp printa_b2d
	fim3d:
		mov fim_de_jogo,1
	printa_b2d:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien 
mov ah,cor_alien40 
	cmp cor_alien40,0
	je printa_b3d_
	jmp segue7	
printa_b3d_:
	jmp printa_b3d
segue7:
	cmp cor_alien50,0
	je atira_
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien40 
printar	ALIEN3, ah,bx,cx,8,64
	jmp sem_atirar_
atira_:
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien40 
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira
sem_atirar_:	
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim4d
	jmp printa_b3d
	fim4d:
		mov fim_de_jogo,1
	printa_b3d:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien 
mov ah,cor_alien50 
	cmp cor_alien50,0
	je printa_b4d  
	mov tiro_alien_x,bx
	mov tiro_alien_y,cx
	mov ah,cor_alien50 
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim5d
	jmp printa_b4d
	fim5d:
		mov fim_de_jogo,1
	printa_b4d:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,15 
mov ah,cor_alien11 
	cmp cor_alien11,0
	je printa_b5d         
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim6d
	jmp printa_b5d
	fim6d:
		mov fim_de_jogo,1
	printa_b5d:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,15   
mov ah,cor_alien21
	cmp cor_alien21,0
	je printa_b6d            
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim7d
	jmp printa_b6d
	fim7d:
		mov fim_de_jogo,1
	printa_b6d:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,15         
mov ah,cor_alien31     
	cmp cor_alien31,0
	je printa_b7d
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim8d
	jmp printa_b7d
	fim8d:
		mov fim_de_jogo,1
	printa_b7d:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,15   
mov ah,cor_alien41  
	cmp cor_alien41,0
	je printa_b8d         
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim9d
	jmp printa_b8d
	fim9d:
		mov fim_de_jogo,1
	printa_b8d:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,15    
mov ah,cor_alien51   
	cmp cor_alien51,0
	je printa_b9d       
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim10d
	jmp printa_b9d
	fim10d:
		mov fim_de_jogo,1
	printa_b9d:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,30
mov ah,cor_alien12  
	cmp cor_alien12,0
	je printa_b10d     
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim11d
	jmp printa_b10d
	fim11d:
		mov fim_de_jogo,1
	printa_b10d:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,30       
mov ah,cor_alien22  
	cmp cor_alien22,0
	je printa_b11d     
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim12d
	jmp printa_b11d
	fim12d:
		mov fim_de_jogo,1
	printa_b11d:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,30        
mov ah,cor_alien32 
	cmp cor_alien32,0
	je printa_b12d      
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim13d
	jmp printa_b12d
	fim13d:
		mov fim_de_jogo,1
	printa_b12d:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,30        
mov ah,cor_alien42  
	cmp cor_alien42,0
	je printa_b13d    
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim14d
	jmp printa_b13d
	fim14d:
		mov fim_de_jogo,1
	printa_b13d:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,30        
mov ah,cor_alien52   
	cmp cor_alien52,0
	je printa_b14d    
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim15d
	jmp printa_b14d
	fim15d:
		mov fim_de_jogo,1
	printa_b14d:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,45        
mov ah,cor_alien13 
	cmp cor_alien13,0
	je printa_b15d_
	jmp segue16
printa_b15d_:	
	jmp printa_b15d
	segue16:
	cmp cor_alien23,0
	je atira_16
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien13 
printar	ALIEN1, ah,bx,cx,8,64
	jmp sem_atirar_15
atira_16:
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien13 
printar	ALIEN1, ah,bx,cx,8,64
	call alien_atira1
sem_atirar_15:
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim16d
	jmp printa_b15d
	fim16d:
		mov fim_de_jogo,1
	printa_b15d:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,45       
mov ah,cor_alien23  
	cmp cor_alien23,0
	je printa_b16d_
jmp segue15
printa_b16d_:
	jmp printa_b16d
	segue15:
	cmp cor_alien33,0
	je atira_15
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien23 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_14
atira_15:
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien23 
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira1
sem_atirar_14:
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim17d
	jmp printa_b16d
	fim17d:
		mov fim_de_jogo,1
	printa_b16d:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,45    
mov ah,cor_alien33    
	cmp cor_alien33,0
	je printa_b17d_
jmp segue14
printa_b17d_:
	jmp printa_b17d
	segue14:
	cmp cor_alien43,0
	je atira_14
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien33 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_13
atira_14:
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien33 
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira1
sem_atirar_13:
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim18d
	jmp printa_b17d
	fim18d:
		mov fim_de_jogo,1
	printa_b17d:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,45    
mov ah,cor_alien43 
	cmp cor_alien43,0
	je printa_b18d_
	jmp segue6
printa_b18d_:
	jmp printa_b18d
segue6:
	cmp cor_alien53,0
	je atira_1
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien43 
printar	ALIEN3, ah,bx,cx,8,64
	jmp sem_atirar_10
atira_1:
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien43 
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira1
sem_atirar_10:
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim19d
	jmp printa_b18d
	fim19d:
	mov fim_de_jogo,1
	printa_b18d:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,45  
mov ah,cor_alien53  
	cmp cor_alien53,0
	je printa_b19d          
	mov tiro_alien_x1,bx
	mov tiro_alien_y1,cx
	mov ah,cor_alien53 
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira1
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim20d
	jmp printa_b19d
	fim20d:
		mov fim_de_jogo,1
	printa_b19d:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,60     
mov ah,cor_alien14  
	cmp cor_alien14,0
	je printa_b20d     
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim21d
	jmp printa_b20d
	fim21d:
		mov fim_de_jogo,1
	printa_b20d:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,60    
mov ah,cor_alien24  
	cmp cor_alien24,0
	je printa_b21d         
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim22d
	jmp printa_b21d
	fim22d:
		mov fim_de_jogo,1
	printa_b21d:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,60        
mov ah,cor_alien34      
	cmp cor_alien34,0
	je printa_b22d  
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim23d
	jmp printa_b22d
	fim23d:
		mov fim_de_jogo,1
	printa_b22d:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,60        
mov ah,cor_alien44   
	cmp cor_alien44,0
	je printa_b23d 
	mov ah,cor_alien44 	
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim24d
	jmp printa_b23d
	fim24d:
		mov fim_de_jogo,1
	printa_b23d:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,60        
mov ah,cor_alien54    
	cmp cor_alien54,0
	je printa_b24d    
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim25d
	jmp printa_b24d
	fim25d:
		mov fim_de_jogo,1
	printa_b24d:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,75        
mov ah,cor_alien15  
	cmp cor_alien15,0
	je printa_b25d     
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim26d
	jmp printa_b25d
	fim26d:
		mov fim_de_jogo,1
	printa_b25d:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien   
add bx,75  
mov ah,cor_alien25  
	cmp cor_alien25,0
	je printa_b26d         
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim27d
	jmp printa_b26d
	fim27d:
		mov fim_de_jogo,1
	printa_b26d:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien    
add bx,75    
mov ah,cor_alien35     
	cmp cor_alien35,0
	je printa_b27d        
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim28d
	jmp printa_b27d
	fim28d:
		mov fim_de_jogo,1
	printa_b27d:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,75        
mov ah,cor_alien45      
	cmp cor_alien45,0
	je printa_b28d
printar	ALIEN3, ah,BX,cx,8,64 
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim29d
	jmp printa_b28d
	fim29d:
		mov fim_de_jogo,1
	printa_b28d:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,75        
mov ah,cor_alien55   
	cmp cor_alien55,0
	je printa_b29d   
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim30d
	jmp printa_b29d
	fim30d:
		mov fim_de_jogo,1
	printa_b29d:
mov CX,eixo_y_alien1   
mov bx,eixo_x_alien    
add bx,90        
mov ah,cor_alien16  
	cmp cor_alien16,0
	je printa_b30d_
jmp segue13
printa_b30d_:
	jmp printa_b30d
	segue13:
	cmp cor_alien26,0
	je atira_19
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien16 
printar	ALIEN1, ah,bx,cx,8,64
	jmp sem_atirar_18
atira_19:
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien16
printar	ALIEN1, ah,bx,cx,8,64
	call alien_atira2
sem_atirar_18:
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim31d
	jmp printa_b30d
	fim31d:
		mov fim_de_jogo,1
	printa_b30d:
mov CX,eixo_y_alien2   
mov bx,eixo_x_alien    
add bx,90     
mov ah,cor_alien26 
	cmp cor_alien26,0
	je printa_b31d_
	jmp segue12
printa_b31d_:
	jmp printa_b31d
	segue12:
	cmp cor_alien36,0
	je atira_18
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien26 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_17
atira_18:
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien26
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira2
sem_atirar_17:
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim32d
	jmp printa_b31d
	fim32d:
		mov fim_de_jogo,1
	printa_b31d:
mov CX,eixo_y_alien22  
mov bx,eixo_x_alien
add bx,90  
mov ah,cor_alien36       
	cmp cor_alien36,0
	je printa_b32d_
jmp segue11
printa_b32d_:
	jmp printa_b32d
	segue11:
	cmp cor_alien46,0
	je atira_17
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien36 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_16
atira_17:
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien36
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira2
sem_atirar_16:	
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim33d
	jmp printa_b32d
	fim33d:
		mov fim_de_jogo,1
	printa_b32d:
mov CX,eixo_y_alien3   
mov bx,eixo_x_alien    
add bx,90  
mov ah,cor_alien46   
	cmp cor_alien46,0
	je printa_b33d_ 
	jmp segue5
printa_b33d_:	
	jmp printa_b33d
segue5:
	cmp cor_alien56,0
	je atira_2
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien46 
printar	ALIEN3, ah,bx,cx,8,64
	jmp sem_atirar_2
atira_2:
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien46
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira2
sem_atirar_2:	
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim34d
	jmp printa_b33d
	fim34d:
		mov fim_de_jogo,1
	printa_b33d:
mov CX,eixo_y_alien32  
mov bx,eixo_x_alien    
add bx,90    
mov ah,cor_alien56  
	cmp cor_alien56,0
	je printa_b34d        
	mov tiro_alien_x2,bx
	mov tiro_alien_y2,cx
	mov ah,cor_alien56 
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira2 
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim35d
	jmp printa_b34d
	fim35d:
		mov fim_de_jogo,1
	printa_b34d:                
mov CX,eixo_y_alien1					  
mov bx,eixo_x_alien    
add bx,105    
mov ah,cor_alien17      
	cmp cor_alien17,0
	je printa_b35d     
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim36d
	jmp printa_b35d
	fim36d:
		mov fim_de_jogo,1
	printa_b35d: 
mov CX,eixo_y_alien2
mov bx,eixo_x_alien    
add bx,105  
mov ah,cor_alien27   
	cmp cor_alien27,0
	je printa_b36d         
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim37d
	jmp printa_b36d
	fim37d:
		mov fim_de_jogo,1
	printa_b36d: 
mov CX,eixo_y_alien22
mov bx,eixo_x_alien    
add bx,105    
mov ah,cor_alien37
	cmp cor_alien37,0
	je printa_b37d           
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim38d
	jmp printa_b37d
	fim38d:
		mov fim_de_jogo,1
	printa_b37d: 
mov CX,eixo_y_alien3
mov bx,eixo_x_alien    
add bx,105  
mov ah,cor_alien47   
	cmp cor_alien47,0
	je printa_b38d          
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim39d
	jmp printa_b38d
	fim39d:
		mov fim_de_jogo,1
	printa_b38d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien    
add bx,105        
mov ah,cor_alien57    
	cmp cor_alien57,0
	je printa_b39d  
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim40d
	jmp printa_b39d
	fim40d:
		mov fim_de_jogo,1
	printa_b39d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien    
add bx,120      
mov ah,cor_alien18 
	cmp cor_alien18,0
	je printa_b40d        
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim41d
	jmp printa_b40d
	fim41d:
		mov fim_de_jogo,1
	printa_b40d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien    
add bx,120    
mov ah,cor_alien28 
	cmp cor_alien28,0
	je printa_b41d          
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim42d
	jmp printa_b41d
	fim42d:
		mov fim_de_jogo,1
	printa_b41d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien   
add bx,120       
mov ah,cor_alien38      
	cmp cor_alien38,0
	je printa_b42d 
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim43d
	jmp printa_b42d
	fim43d:
		mov fim_de_jogo,1
	printa_b42d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien    
add bx,120      
mov ah,cor_alien48  
	cmp cor_alien48,0
	je printa_b43d      
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim44d
	jmp printa_b43d
	fim44d:
		mov fim_de_jogo,1
	printa_b43d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien    
add bx,120    
mov ah,cor_alien58    
	cmp cor_alien58,0
	je printa_b44d     
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim45d
	jmp printa_b44d
	fim45d:
		mov fim_de_jogo,1
	printa_b44d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien    
add bx,135      
mov ah,cor_alien19  
	cmp cor_alien19,0
	je printa_b45d_   
	jmp segue10
printa_b45d_:
	jmp printa_b45d
	segue10:
	cmp cor_alien29,0
	je atira_22
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien19 
printar	ALIEN1, ah,bx,cx,8,64
	jmp sem_atirar_21
atira_22:
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
printar	ALIEN1, ah,bx,cx,8,64
	call alien_atira3
sem_atirar_21:
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim46d
	jmp printa_b45d
	fim46d:
		mov fim_de_jogo,1
	printa_b45d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien    
add bx,135    
mov ah,cor_alien29   
	cmp cor_alien29,0
	je printa_b46d_
jmp segue9
printa_b46d_:
	jmp printa_b46d
segue9:
	cmp cor_alien39,0
	je atira_21
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien29 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_20
atira_21:
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira3
sem_atirar_20:
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim47d
	jmp printa_b46d
	fim47d:
		mov fim_de_jogo,1
	printa_b46d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien    
add bx,135   
mov ah,cor_alien39 
	cmp cor_alien39,0
	je printa_b47d_    
	jmp segue8
printa_b47d_:
	jmp printa_b47d
segue8:	
	cmp cor_alien49,0
	je atira_20
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien39 
printar	ALIEN2, ah,bx,cx,8,64
	jmp sem_atirar_19
atira_20:
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
printar	ALIEN2, ah,bx,cx,8,64
	call alien_atira3
sem_atirar_19:
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim48d
	jmp printa_b47d
	fim48d:
		mov fim_de_jogo,1
	printa_b47d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien    
add bx,135   
mov ah,cor_alien49  
	cmp cor_alien49,0
	je printa_b48d_ 
	jmp segue4
printa_b48d_:
	jmp printa_b48d
segue4:
	cmp cor_alien59,0
	je atira_3
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien49 
printar	ALIEN3, ah,bx,cx,8,64
	jmp sem_atirar_3
atira_3:
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira3
sem_atirar_3:
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim49d
	jmp printa_b48d
	fim49d:
		mov fim_de_jogo,1
	printa_b48d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien    
add bx,135   
mov ah,cor_alien59   
	cmp cor_alien59,0
	je printa_b49d       
	mov tiro_alien_x3,bx
	mov tiro_alien_y3,cx
	mov ah,cor_alien59
printar	ALIEN3, ah,bx,cx,8,64
	call alien_atira3
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim50d
	jmp printa_b49d
	fim50d:
		mov fim_de_jogo,1
	printa_b49d:
mov CX,eixo_y_alien1
mov bx,eixo_x_alien    
add bx,150      
mov ah,cor_alien110 
	cmp cor_alien110,0
	je printa_b50d       
printar	ALIEN1, ah,BX,cx,8,64
	mov CX,eixo_y_alien1
	cmp cx,172
	je fim51d
	jmp printa_b50d
	fim51d:
		mov fim_de_jogo,1
	printa_b50d:
mov CX,eixo_y_alien2
mov bx,eixo_x_alien    
add bx,150     
mov ah,cor_alien210  
	cmp cor_alien210,0
	je printa_b51d      
printar	ALIEN2, ah,bx,cx,8,64
	mov CX,eixo_y_alien2
	cmp cx,172
	je fim52d
	jmp printa_b51d
	fim52d:
		mov fim_de_jogo,1
	printa_b51d:
mov CX,eixo_y_alien22
mov bx,eixo_x_alien    
add bx,150   
mov ah,cor_alien310 
	cmp cor_alien310,0
	je printa_b52d          
printar	ALIEN2, ah,BX,cx,8,64
	mov CX,eixo_y_alien22
	cmp cx,172
	je fim53d
	jmp printa_b52d
	fim53d:
		mov fim_de_jogo,1
	printa_b52d:
mov CX,eixo_y_alien3
mov bx,eixo_x_alien    
add bx,150  
mov ah,cor_alien410 
	cmp cor_alien410,0
	je printa_b53d           
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien3
	cmp cx,172
	je fim54d
	jmp printa_b53d
	fim54d:
		mov fim_de_jogo,1
	printa_b53d:
mov CX,eixo_y_alien32
mov bx,eixo_x_alien    
add bx,150    
mov ah,cor_alien510      
	cmp cor_alien510,0
	je printa_b54d      
printar	ALIEN3, ah,BX,cx,8,64
	mov CX,eixo_y_alien32
	cmp cx,172
	je fim55d
	jmp printa_b54d
	fim55d:
		mov fim_de_jogo,1
	printa_b54d:
mov CONT_AUX1,1
;cmp eixo_y_alien32,172
;je verific2	
	ret
	
;verific2:
	;mov fim_de_jogo,1
	;ret

movimento_aliens endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
printa_aliens proc

	;<matriz, cor, xi, yi, largura, total>
	printar	ALIEN1, 0fh,80, 46,8,64
	printar	ALIEN1, 0fh,95, 46,8,64
	printar	ALIEN1, 0fh,110,46,8,64
	printar	ALIEN1, 0fh,125,46,8,64
	printar	ALIEN1, 0fh,140,46,8,64
	printar	ALIEN1, 0fh,155,46,8,64
	printar	ALIEN1, 0fh,170,46,8,64
	printar	ALIEN1, 0fh,185,46,8,64
	printar	ALIEN1, 0fh,200,46,8,64
	printar	ALIEN1, 0fh,215,46,8,64
	printar	ALIEN1, 0fh,230,46,8,64

	printar	ALIEN2, 0fh,80,60,8,64
	printar	ALIEN2, 0fh,95,60,8,64
	printar	ALIEN2, 0fh,110,60,8,64
	printar	ALIEN2, 0fh,125,60,8,64
	printar	ALIEN2, 0fh,140,60,8,64
	printar	ALIEN2, 0fh,155,60,8,64
	printar	ALIEN2, 0fh,170,60,8,64
	printar	ALIEN2, 0fh,185,60,8,64
	printar	ALIEN2, 0fh,200,60,8,64
	printar	ALIEN2, 0fh,215,60,8,64
	printar	ALIEN2, 0fh,230,60,8,64

	printar	ALIEN2,  0fh,80,76,8,64
	printar	ALIEN2,  0fh,95,76,8,64
	printar	ALIEN2, 0fh,110,76,8,64
	printar	ALIEN2, 0fh,125,76,8,64
	printar	ALIEN2, 0fh,140,76,8,64
	printar	ALIEN2, 0fh,155,76,8,64
	printar	ALIEN2, 0fh,170,76,8,64
	printar	ALIEN2, 0fh,185,76,8,64
	printar	ALIEN2, 0fh,200,76,8,64
	printar	ALIEN2, 0fh,215,76,8,64
	printar	ALIEN2, 0fh,230,76,8,64

	printar	ALIEN3,  0fh,80,90,8,64
	printar	ALIEN3,  0fh,95,90,8,64
	printar	ALIEN3, 0fh,110,90,8,64
	printar	ALIEN3, 0fh,125,90,8,64
	printar	ALIEN3, 0fh,140,90,8,64
	printar	ALIEN3, 0fh,155,90,8,64
	printar	ALIEN3, 0fh,170,90,8,64
	printar	ALIEN3, 0fh,185,90,8,64
	printar	ALIEN3, 0fh,200,90,8,64
	printar	ALIEN3, 0fh,215,90,8,64
	printar	ALIEN3, 0fh,230,90,8,64

	printar	ALIEN3,  0fh,80,106,8,64
	printar	ALIEN3,  0fh,95,106,8,64
	printar	ALIEN3, 0fh,110,106,8,64
	printar	ALIEN3, 0fh,125,106,8,64
	printar	ALIEN3, 0fh,140,106,8,64
	printar	ALIEN3, 0fh,155,106,8,64
	printar	ALIEN3, 0fh,170,106,8,64
	printar	ALIEN3, 0fh,185,106,8,64
	printar	ALIEN3, 0fh,200,106,8,64
	printar	ALIEN3, 0fh,215,106,8,64
	printar	ALIEN3, 0fh,230,106,8,64

ret

printa_aliens endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
msg_iniciais proc

mov ax, 1300h
	mov bx, 09H
	mov dh, 10 ;linha
	mov dl, MSG_INICIO_CENTER ; coluna
	mov cx, MSG_INICIO_LEN
	lea bp, MSG_INICIO
	int 10h

	mov ax, 1300h
	mov bx, 0Fh
	mov dh, 13 ;linha
	mov dl, MSG_INICIO3_CENTER ; coluna
	mov cx, MSG_INICIO3_LEN
	lea bp, MSG_INICIO3
	int 10h

	mov ax, 1300h
	mov bx, 0Fh
	mov dh, 18 ;linha
	mov dl, MSG_INICIO4_CENTER ; coluna
	mov cx, MSG_INICIO4_LEN
	lea bp, MSG_INICIO4
	int 10h
	
	colorido:
	
	mov ax, 0100h 
	int 16h
	jz continua_cor
	
	mov ah, 07H
	int 21h
	jmp volta_main

continua_cor:	
	mov ax, 1300h
	mov bx, cor_xastre
	mov dh, 11 ;linha
	mov dl, MSG_INICIO2_CENTER ; coluna
	mov cx, MSG_INICIO2_LEN
	lea bp, MSG_INICIO2
	int 10h
	cmp cor_xastre,15
	je volta_cor
	inc cor_xastre
	jmp colorido
	
volta_cor:
	sub cor_xastre,14
	jmp colorido

volta_main:
ret
msg_iniciais endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
pixel	proc
	mov count, 0
	mov lado_y, 0
	mov lado_x, 0

comeco:

	mov cx, eixo_x
	add cx, lado_x
	inc lado_x
	mov dx, eixo_y
	add dx, lado_y

	mov bl, [si]

	cmp bl, 0
	je continua

	mov ah, 0Ch
	int 10h

continua:
	inc si
	inc count

	mov bx, largura_total
	cmp lado_x, bx
	jl continua2

	mov lado_x, 0
	inc lado_y

continua2:
	mov bx, dimensao
	cmp count, bx
	jl comeco

	ret

pixel endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
modo_de_video proc
	mov ax, 0013h
	int 10h

	ret

modo_de_video endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
delay proc

    mov     cx, 003H
delRep: push    cx
    mov     cx, 1024H
delDec: dec     cx
    jnz     delDec
    pop     cx
    dec     cx
    jnz     delRep
 ret

delay endp
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
alien_atira proc
	mov conta_nave,0
	cmp aux4_tiro_,0
	je pega_valor_
	jmp sem_apertar_
	
pega_valor_:
	mov bx,tiro_alien_x
	mov aux3_tiro_,bx
	mov cx,tiro_alien_y
	mov aux6_tiro,cx
	
sem_apertar_:
	cmp cor_alien50,0
	je preto
	cmp aux_tiro_,1
	je atirar3_
	jmp atirar_
preto:
	mov cx,aux_y
	mov bx, aux3_tiro_
	PRINTAR PROJETIL,0,bx,cx,1,2
	
atirar3_:
	jmp atirar2_
	
atirar_:
mov bx,aux3_tiro_
mov cx,aux6_tiro
add cx,CNT_TIROS_
mov aux_y,cx
PRINTAR PROJETIL,0fh,bx,cx,1,2
mov aux_tiro_,1
mov aux4_tiro_,1
cmp aux_y,160
je pedra_deg1_1
cmp aux_y,178
je verifica_vida
ret	
pedra_deg1_1:
jmp pedra_deg1
verifica_vida:
mov bx,eixo_x_nave
add bx, conta_nave
cmp bx,aux3_tiro_
je perder_vida
inc conta_nave
cmp conta_nave,10
je sai
jmp verifica_vida
sai:
ret

perder_vida:
call menos_vida
mov bx,aux3_tiro_
mov cx,aux6_tiro
add cx,CNT_TIROS_
PRINTAR PROJETIL,0,bx,cx,1,2
mov bx,eixo_x_nave
printar NAVE,0,bx,180,9,81
mov bx,eixo_x_nave
PRINTAR NAVE_DANIF,0fh,bx,180,9,81
jmp voltar_

pedra_deg1:
cmp aux3_tiro_,40
jge	compara_hit_box
ret

compara_hit_box:
cmp aux3_tiro_,56
jbe degrada1

cmp aux3_tiro_,120
jae nex1
jmp nex2

nex1:
cmp aux3_tiro_,136
jbe degrada2_cont

nex2:
cmp aux3_tiro_,200
jae nex3
jmp nex4

degrada2_cont:
jmp degrada2

nex3:
cmp aux3_tiro_,216
jbe degrada3_

nex4:
cmp aux3_tiro_,280
jae nex5
ret

nex5:
cmp aux3_tiro_,296
jbe degrada4_
ret

degrada3_:
jmp degrada3

degrada4_:
jmp degrada4

degrada1:
mov bx,aux3_tiro_
mov cx,aux6_tiro
add cx,CNT_TIROS_
PRINTAR PROJETIL,0,bx,cx,1,2
cmp deg_pedra,1
je deg_prox__1
cmp deg_pedra,2
je deg_prox1__1
cmp deg_pedra,3
je deg_prox2__1
cmp deg_pedra,4
je deg_prox3__1
cmp deg_pedra,5
je deg_prox4__1
cmp deg_pedra,5
ja continuar
inc deg_pedra
	jmp voltar_
deg_prox__1:
jmp deg_prox
deg_prox1__1:
jmp deg_prox1
deg_prox2__1:
jmp deg_prox2
deg_prox3__1:
jmp deg_prox3
deg_prox4__1:
jmp deg_prox4
continuar:
jmp atirar2_
deg_prox:
printar	PEDRA, 0,40,160,16,128
printar	PEDRA1, 02H,40,160,16,128
inc deg_pedra
inc deg_pedra2
jmp voltar_
deg_prox1:
printar	PEDRA1, 0,40,160,16,128
printar	PEDRA2, 02H,40,160,16,128
inc deg_pedra
inc deg_pedra2
jmp voltar_
deg_prox2:
printar	PEDRA2, 0,40,160,16,128
printar	PEDRA3, 02H,40,160,16,128
inc deg_pedra
inc deg_pedra2
jmp voltar_
deg_prox3:
printar	PEDRA3, 0,40,160,16,128
printar	PEDRA4, 02H,40,160,16,128
inc deg_pedra
inc deg_pedra2
jmp voltar_
deg_prox4:
printar	PEDRA4, 0,40,160,16,128
inc deg_pedra
inc deg_pedra2
jmp voltar_

degrada2:
mov bx,aux3_tiro_
mov cx,aux6_tiro
add cx,CNT_TIROS_
PRINTAR PROJETIL,0,bx,cx,1,2
cmp deg_pedra1,1
je deg_prox_
cmp deg_pedra1,2
je deg_prox1___
cmp deg_pedra1,3
je deg_prox2__
cmp deg_pedra1,4
je deg_prox3__
cmp deg_pedra1,5
je deg_prox4__
cmp deg_pedra1,5
ja continuar1
inc deg_pedra1
	jmp voltar_
deg_prox1___:
jmp deg_prox1_
deg_prox2__:
jmp deg_prox2_
deg_prox3__:
jmp deg_prox3_
deg_prox4__:
jmp deg_prox4_
continuar1:
jmp atirar2_
deg_prox_:
printar	PEDRA, 0,120,160,16,128
printar	PEDRA1, 02H,120,160,16,128
inc deg_pedra1
inc deg_pedra3
inc deg_pedra5
jmp voltar_
deg_prox1_:
printar	PEDRA1, 0,120,160,16,128
printar	PEDRA2, 02H,120,160,16,128
inc deg_pedra1
inc deg_pedra3
inc deg_pedra5
jmp voltar_
deg_prox2_:
printar	PEDRA2, 0,120,160,16,128
printar	PEDRA3, 02H,120,160,16,128
inc deg_pedra1
inc deg_pedra3
inc deg_pedra5
jmp voltar_
deg_prox3_:
printar	PEDRA3, 0,120,160,16,128
printar	PEDRA4, 02H,120,160,16,128
inc deg_pedra1
inc deg_pedra3
inc deg_pedra5
jmp voltar_
deg_prox4_:
printar	PEDRA4, 0,120,160,16,128
inc deg_pedra1
inc deg_pedra3
inc deg_pedra5
jmp voltar_

degrada3:
mov bx,aux3_tiro_
mov cx,aux6_tiro
add cx,CNT_TIROS_
PRINTAR PROJETIL,0,bx,cx,1,2
	jmp voltar_
	
degrada4:
mov bx,aux3_tiro_
mov cx,aux6_tiro
add cx,CNT_TIROS_
PRINTAR PROJETIL,0,bx,cx,1,2
	jmp voltar_
	
atirar2_:
mov bx,aux3_tiro_
mov cx,aux6_tiro
add cx,CNT_TIROS_
PRINTAR PROJETIL,0,bx,cx,1,2
add CNT_TIROS_,2
mov aux_tiro_,0
mov cx,aux6_tiro
add cx,CNT_TIROS_
mov aux_y,cx
cmp aux_y,198
jae voltar_
jmp atirar_

voltar_:
mov CNT_TIROS_,0
mov aux_tiro_,0
mov aux4_tiro_,0

ret

alien_atira endp  
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
alien_atira1 proc
	mov conta_nave1,0
	cmp aux4_tiro_1,0
	je pega_valor_1
	jmp sem_apertar_1
	
pega_valor_1:
	mov bx,tiro_alien_x1
	mov aux3_tiro_1,bx
	mov cx,tiro_alien_y1
	mov aux6_tiro1,cx
	
sem_apertar_1:
	cmp cor_alien53,0
	je preto1
	cmp aux_tiro_1,1
	je atirar3_1
	jmp atirar_1
preto1:
	mov cx,aux_y1
	mov bx, aux3_tiro_1
	PRINTAR PROJETIL,0,bx,cx,1,2		
	
atirar3_1:
	jmp atirar2_1
	
atirar_1:
mov bx,aux3_tiro_1
mov cx,aux6_tiro1
add cx,CNT_TIROS_1
mov aux_y1,cx
PRINTAR PROJETIL,0fh,bx,cx,1,2
mov aux_tiro_1,1
mov aux4_tiro_1,1
cmp aux_y1,160
je pedra_deg1_2
cmp aux_y1,178
je verifica_vida1
ret	
pedra_deg1_2:
jmp pedra_deg1_
verifica_vida1:
mov bx,eixo_x_nave
add bx, conta_nave1
cmp bx,aux3_tiro_1
je perder_vida1
inc conta_nave1
cmp conta_nave1,10
je sai1
jmp verifica_vida1
sai1:
ret

perder_vida1:
call menos_vida
mov bx,aux3_tiro_1
mov cx,aux6_tiro1
add cx,CNT_TIROS_1
PRINTAR PROJETIL,0,bx,cx,1,2
mov bx,eixo_x_nave
printar NAVE,0,bx,180,9,81
mov bx,eixo_x_nave
PRINTAR NAVE_DANIF,0fh,bx,180,9,81
jmp voltar_1

pedra_deg1_:
cmp aux3_tiro_1,40
jge	compara_hit_box1
ret

compara_hit_box1:
cmp aux3_tiro_1,56
jbe degrada1_

cmp aux3_tiro_1,120
jae nex1_
jmp nex2_

nex1_:
cmp aux3_tiro_1,136
jbe degrada2__

nex2_:
cmp aux3_tiro_1,200
jae nex3_
jmp nex4_

degrada2__:
jmp degrada2_
nex3_:
cmp aux3_tiro_1,216
jbe degrada3_1

nex4_:
cmp aux3_tiro_1,280
jae nex5_
ret

nex5_:
cmp aux3_tiro_1,296
jbe degrada4_1
ret

degrada3_1:
jmp degrada3_0

degrada4_1:
jmp degrada4_0

degrada1_:
mov bx,aux3_tiro_1
mov cx,aux6_tiro1
add cx,CNT_TIROS_1
PRINTAR PROJETIL,0,bx,cx,1,2
cmp deg_pedra2,1
je deg_prox_1
cmp deg_pedra2,2
je deg_prox1___1
cmp deg_pedra2,3
je deg_prox2__1_
cmp deg_pedra2,4
je deg_prox3__1_
cmp deg_pedra2,5
je deg_prox4__1_
cmp deg_pedra2,5
ja continuar3
inc deg_pedra2
	jmp voltar_1
deg_prox1___1:
jmp deg_prox1__
deg_prox2__1_:
jmp deg_prox2_2_
deg_prox3__1_:
jmp deg_prox3_2_
deg_prox4__1_:
jmp deg_prox4_2_
continuar3:
jmp atirar2_1
deg_prox_1:
printar	PEDRA, 0,40,160,16,128
printar	PEDRA1, 02H,40,160,16,128
inc deg_pedra2
inc deg_pedra
jmp voltar_1
deg_prox1__:
printar	PEDRA1, 0,40,160,16,128
printar	PEDRA2, 02H,40,160,16,128
inc deg_pedra2
inc deg_pedra
jmp voltar_1
deg_prox2_2_:
printar	PEDRA2, 0,40,160,16,128
printar	PEDRA3, 02H,40,160,16,128
inc deg_pedra2
inc deg_pedra
jmp voltar_1
deg_prox3_2_:
printar	PEDRA3, 0,40,160,16,128
printar	PEDRA4, 02H,40,160,16,128
inc deg_pedra2
inc deg_pedra
jmp voltar_1
deg_prox4_2_:
printar	PEDRA4, 0,40,160,16,128
inc deg_pedra2
inc deg_pedra
jmp voltar_1

degrada2_:
mov bx,aux3_tiro_1
mov cx,aux6_tiro1
add cx,CNT_TIROS_1
PRINTAR PROJETIL,0,bx,cx,1,2
	cmp deg_pedra3,1
je deg_prox_1_
cmp deg_pedra3,2
je deg_prox1__1_1
cmp deg_pedra3,3
je deg_prox2_1_1
cmp deg_pedra3,4
je deg_prox3_1_1
cmp deg_pedra3,5
je deg_prox4_1_1
cmp deg_pedra3,5
ja continuar4
inc deg_pedra3
	jmp voltar_1
deg_prox1__1_1:
jmp deg_prox1_1_
deg_prox2_1_1:
jmp deg_prox2_1_
deg_prox3_1_1:
jmp deg_prox3_1_
deg_prox4_1_1:
jmp deg_prox4_1_
continuar4:
jmp atirar2_1
deg_prox_1_:
printar	PEDRA, 0,120,160,16,128
printar	PEDRA1, 02H,120,160,16,128
inc deg_pedra3
inc deg_pedra1
inc deg_pedra5
jmp voltar_1
deg_prox1_1_:
printar	PEDRA1, 0,120,160,16,128
printar	PEDRA2, 02H,120,160,16,128
inc deg_pedra3
inc deg_pedra1
inc deg_pedra5
jmp voltar_1
deg_prox2_1_:
printar	PEDRA2, 0,120,160,16,128
printar	PEDRA3, 02H,120,160,16,128
inc deg_pedra3
inc deg_pedra1
inc deg_pedra5
jmp voltar_1
deg_prox3_1_:
printar	PEDRA3, 0,120,160,16,128
printar	PEDRA4, 02H,120,160,16,128
inc deg_pedra3
inc deg_pedra1
inc deg_pedra5
jmp voltar_1
deg_prox4_1_:
printar	PEDRA4, 0,120,160,16,128
inc deg_pedra3
inc deg_pedra1
inc deg_pedra5
jmp voltar_1

degrada3_0:
mov bx,aux3_tiro_1
mov cx,aux6_tiro1
add cx,CNT_TIROS_1
PRINTAR PROJETIL,0,bx,cx,1,2
	cmp deg_pedra4,1
je deg_prox_1_1
cmp deg_pedra4,2
je deg_prox1_1_1_1
cmp deg_pedra4,3
je deg_prox2_1_1_
cmp deg_pedra4,4
je deg_prox3_1_1_
cmp deg_pedra4,5
je deg_prox4_1_1_
cmp deg_pedra4,5
ja continuar5
inc deg_pedra4
	jmp voltar_1
deg_prox1_1_1_1:
jmp deg_prox1_1_1
deg_prox2_1_1_:
jmp deg_prox2_2_1
deg_prox3_1_1_:
jmp deg_prox3_2_1
deg_prox4_1_1_:
jmp deg_prox4_2_1
continuar5:
jmp atirar2_1
deg_prox_1_1:
printar	PEDRA, 0,200,160,16,128
printar	PEDRA1, 02H,200,160,16,128
inc deg_pedra4
inc deg_pedra6
inc deg_pedra7
jmp voltar_1
deg_prox1_1_1:
printar	PEDRA1, 0,200,160,16,128
printar	PEDRA2, 02H,200,160,16,128
inc deg_pedra4
inc deg_pedra6
inc deg_pedra7
jmp voltar_1
deg_prox2_2_1:
printar	PEDRA2, 0,200,160,16,128
printar	PEDRA3, 02H,200,160,16,128
inc deg_pedra4
inc deg_pedra6
inc deg_pedra7
jmp voltar_1
deg_prox3_2_1:
printar	PEDRA3, 0,200,160,16,128
printar	PEDRA4, 02H,200,160,16,128
inc deg_pedra4
inc deg_pedra6
inc deg_pedra7
jmp voltar_1
deg_prox4_2_1:
printar	PEDRA4, 0,200,160,16,128
inc deg_pedra4
inc deg_pedra6
inc deg_pedra7
jmp voltar_1

degrada4_0:
mov bx,aux3_tiro_1
mov cx,aux6_tiro1
add cx,CNT_TIROS_1
PRINTAR PROJETIL,0,bx,cx,1,2
	jmp voltar_1
	
atirar2_1:
mov bx,aux3_tiro_1
mov cx,aux6_tiro1
add cx,CNT_TIROS_1
PRINTAR PROJETIL,0,bx,cx,1,2
add CNT_TIROS_1,2
mov aux_tiro_1,0
mov cx,aux6_tiro1
add cx,CNT_TIROS_1
mov aux_y1,cx
cmp aux_y1,198
jae voltar_1
jmp atirar_1

voltar_1:
mov CNT_TIROS_1,0
mov aux_tiro_1,0
mov aux4_tiro_1,0

ret

alien_atira1 endp  
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
alien_atira2 proc
	mov conta_nave2,0
	cmp aux4_tiro_2,0
	je pega_valor_2
	jmp sem_apertar_2
	
pega_valor_2:
	mov bx,tiro_alien_x2
	mov aux3_tiro_2,bx
	mov cx,tiro_alien_y2
	mov aux6_tiro2,cx
	
sem_apertar_2:
	cmp cor_alien56,0
	je preto2
	cmp aux_tiro_2,1
	je atirar3_2
	jmp atirar_2
preto2:
	mov cx,aux_y2
	mov bx, aux3_tiro_2
	PRINTAR PROJETIL,0,bx,cx,1,2		
	
atirar3_2:
	jmp atirar2_2
	
atirar_2:
mov bx,aux3_tiro_2
mov cx,aux6_tiro2
add cx,CNT_TIROS_2
mov aux_y2,cx
PRINTAR PROJETIL,0fh,bx,cx,1,2
mov aux_tiro_2,1
mov aux4_tiro_2,1
cmp aux_y2,160
je pedra_deg1__2
cmp aux_y2,178
je verifica_vida2
ret	
pedra_deg1__2:
jmp pedra_deg1__
verifica_vida2:
mov bx,eixo_x_nave
add bx, conta_nave2
cmp bx,aux3_tiro_2
je perder_vida2
inc conta_nave2
cmp conta_nave2,10
je sai2
jmp verifica_vida2
sai2:
ret

perder_vida2:
call menos_vida
mov bx,aux3_tiro_2
mov cx,aux6_tiro2
add cx,CNT_TIROS_2
PRINTAR PROJETIL,0,bx,cx,1,2
mov bx,eixo_x_nave
printar NAVE,0,bx,180,9,81
mov bx,eixo_x_nave
PRINTAR NAVE_DANIF,0fh,bx,180,9,81
jmp voltar_2

pedra_deg1__:
cmp aux3_tiro_2,40
jge	compara_hit_box2
ret

compara_hit_box2:
cmp aux3_tiro_2,56
jbe degrada1__

cmp aux3_tiro_2,120
jae nex1__
jmp nex2__

nex1__:
cmp aux3_tiro_2,136
jbe degrada2_3_

nex2__:
cmp aux3_tiro_2,200
jae nex3__
jmp nex4__

nex3__:
cmp aux3_tiro_2,216
jbe degrada3_2

nex4__:
cmp aux3_tiro_2,280
jae nex5__
ret

nex5__:
cmp aux3_tiro_2,296
jbe degrada4_2
ret

degrada3_2:
jmp degrada3__

degrada4_2:
jmp degrada4__

degrada1__:
mov bx,aux3_tiro_2
mov cx,aux6_tiro2
add cx,CNT_TIROS_2
PRINTAR PROJETIL,0,bx,cx,1,2
	jmp voltar_2
	
degrada2_3_:
mov bx,aux3_tiro_2
mov cx,aux6_tiro2
add cx,CNT_TIROS_2
PRINTAR PROJETIL,0,bx,cx,1,2
	cmp deg_pedra5,1
je deg_prox_1_2
cmp deg_pedra5,2
je deg_prox1_2_1_1
cmp deg_pedra5,3
je deg_prox2_2_1_
cmp deg_pedra5,4
je deg_prox3_2_1_
cmp deg_pedra5,5
je deg_prox4_2_1_
cmp deg_pedra5,5
ja continuar6
inc deg_pedra5
	jmp voltar_2
deg_prox1_2_1_1:
jmp deg_prox1_1_2
deg_prox2_2_1_:
jmp deg_prox2_2_2
deg_prox3_2_1_:
jmp deg_prox3_2_2
deg_prox4_2_1_:
jmp deg_prox4_2_2
continuar6:
jmp atirar2_2
deg_prox_1_2:
printar	PEDRA, 0,120,160,16,128
printar	PEDRA1, 02H,120,160,16,128
inc deg_pedra5
inc deg_pedra1
inc deg_pedra3
jmp voltar_2
deg_prox1_1_2:
printar	PEDRA1, 0,120,160,16,128
printar	PEDRA2, 02H,120,160,16,128
inc deg_pedra5
inc deg_pedra1
inc deg_pedra3
jmp voltar_2
deg_prox2_2_2:
printar	PEDRA2, 0,120,160,16,128
printar	PEDRA3, 02H,120,160,16,128
inc deg_pedra5
inc deg_pedra1
inc deg_pedra3
jmp voltar_2
deg_prox3_2_2:
printar	PEDRA3, 0,120,160,16,128
printar	PEDRA4, 02H,120,160,16,128
inc deg_pedra5
inc deg_pedra1
inc deg_pedra3
jmp voltar_2
deg_prox4_2_2:
printar	PEDRA4, 0,120,160,16,128
inc deg_pedra5
inc deg_pedra1
inc deg_pedra3
jmp voltar_2

degrada3__:
mov bx,aux3_tiro_2
mov cx,aux6_tiro2
add cx,CNT_TIROS_2
PRINTAR PROJETIL,0,bx,cx,1,2
	cmp deg_pedra6,1
je deg_prox_1_3
cmp deg_pedra6,2
je deg_prox1_2_2_1
cmp deg_pedra6,3
je deg_prox2_2_2_
cmp deg_pedra6,4
je deg_prox3_2_2_
cmp deg_pedra6,5
je deg_prox4_2_2_
cmp deg_pedra6,5
ja continuar7
inc deg_pedra6
	jmp voltar_2
deg_prox1_2_2_1:
jmp deg_prox1_1_3
deg_prox2_2_2_:
jmp deg_prox2_2_3
deg_prox3_2_2_:
jmp deg_prox3_2_3
deg_prox4_2_2_:
jmp deg_prox4_2_3
continuar7:
jmp atirar2_2
deg_prox_1_3:
printar	PEDRA, 0,200,160,16,128
printar	PEDRA1, 02H,200,160,16,128
inc deg_pedra6
inc deg_pedra4
inc deg_pedra7
jmp voltar_2
deg_prox1_1_3:
printar	PEDRA1, 0,200,160,16,128
printar	PEDRA2, 02H,200,160,16,128
inc deg_pedra6
inc deg_pedra4
inc deg_pedra7
jmp voltar_2
deg_prox2_2_3:
printar	PEDRA2, 0,200,160,16,128
printar	PEDRA3, 02H,200,160,16,128
inc deg_pedra6
inc deg_pedra4
inc deg_pedra7
jmp voltar_2
deg_prox3_2_3:
printar	PEDRA3, 0,200,160,16,128
printar	PEDRA4, 02H,200,160,16,128
inc deg_pedra6
inc deg_pedra4
inc deg_pedra7
jmp voltar_2
deg_prox4_2_3:
printar	PEDRA4, 0,200,160,16,128
inc deg_pedra6
inc deg_pedra4
inc deg_pedra7
jmp voltar_2

degrada4__:
mov bx,aux3_tiro_2
mov cx,aux6_tiro2
add cx,CNT_TIROS_2
PRINTAR PROJETIL,0,bx,cx,1,2
	jmp voltar_2
	
atirar2_2:
mov bx,aux3_tiro_2
mov cx,aux6_tiro2
add cx,CNT_TIROS_2
PRINTAR PROJETIL,0,bx,cx,1,2
add CNT_TIROS_2,2
mov aux_tiro_2,0
mov cx,aux6_tiro2
add cx,CNT_TIROS_2
mov aux_y2,cx
cmp aux_y2,198
jae voltar_2
jmp atirar_2

voltar_2:
mov CNT_TIROS_2,0
mov aux_tiro_2,0
mov aux4_tiro_2,0

ret

alien_atira2 endp  
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
alien_atira3 proc
	mov conta_nave3,0
	cmp aux4_tiro_3,0
	je pega_valor_3
	jmp sem_apertar_3
	
pega_valor_3:
	mov bx,tiro_alien_x3
	mov aux3_tiro_3,bx
	mov cx,tiro_alien_y3
	mov aux6_tiro3,cx
	
sem_apertar_3:
	cmp cor_alien59,0
	je preto3
	cmp aux_tiro_3,1
	je atirar3_3
	jmp atirar_3
preto3:
	mov cx,aux_y3
	mov bx, aux3_tiro_3
	PRINTAR PROJETIL,0,bx,cx,1,2	
	
atirar3_3:
	jmp atirar2_3
	
atirar_3:
mov bx,aux3_tiro_3
mov cx,aux6_tiro3
add cx,CNT_TIROS_3
mov aux_y3,cx
PRINTAR PROJETIL,0fh,bx,cx,1,2
mov aux_tiro_3,1
mov aux4_tiro_3,1
cmp aux_y3,160
je pedra_deg1__3
cmp aux_y3,178
je verifica_vida3
ret	
pedra_deg1__3:
jmp pedra_deg1__1
verifica_vida3:
mov bx,eixo_x_nave
add bx, conta_nave3
cmp bx,aux3_tiro_3
je perder_vida3
inc conta_nave3
cmp conta_nave3,10
je sai3
jmp verifica_vida3
sai3:
ret

perder_vida3:
call menos_vida
mov bx,aux3_tiro_3
mov cx,aux6_tiro3
add cx,CNT_TIROS_3
PRINTAR PROJETIL,0,bx,cx,1,2
mov bx,eixo_x_nave
printar NAVE,0,bx,180,9,81
mov bx,eixo_x_nave
PRINTAR NAVE_DANIF,0fh,bx,180,9,81
jmp voltar_3

pedra_deg1__1:
cmp aux3_tiro_3,40
jge	compara_hit_box3
ret

compara_hit_box3:
cmp aux3_tiro_3,56
jbe degrada1__1

cmp aux3_tiro_3,120
jae nex1__1
jmp nex2__1

nex1__1:
cmp aux3_tiro_3,136
jbe degrada2__1

nex2__1:
cmp aux3_tiro_3,200
jae nex3__1
jmp nex4__1

nex3__1:
cmp aux3_tiro_3,216
jbe degrada3_3

nex4__1:
cmp aux3_tiro_3,280
jae nex5__1
ret

nex5__1:
cmp aux3_tiro_3,296
jbe degrada4_3
ret

degrada3_3:
jmp degrada3__1

degrada4_3:
jmp degrada4__1

degrada1__1:
mov bx,aux3_tiro_3
mov cx,aux6_tiro3
add cx,CNT_TIROS_3
PRINTAR PROJETIL,0,bx,cx,1,2
	jmp voltar_3
degrada2__1:
mov bx,aux3_tiro_3
mov cx,aux6_tiro3
add cx,CNT_TIROS_3
PRINTAR PROJETIL,0,bx,cx,1,2
	jmp voltar_3
degrada3__1:
mov bx,aux3_tiro_3
mov cx,aux6_tiro3
add cx,CNT_TIROS_3
PRINTAR PROJETIL,0,bx,cx,1,2
	cmp deg_pedra7,1
je deg_prox_1_4
cmp deg_pedra7,2
je deg_prox1_2_2_2
cmp deg_pedra7,3
je deg_prox2_2_3_
cmp deg_pedra7,4
je deg_prox3_2_3_
cmp deg_pedra7,5
je deg_prox4_2_3_
cmp deg_pedra7,5
ja continuar8
inc deg_pedra7
	jmp voltar_3
deg_prox1_2_2_2:
jmp deg_prox1_1_4
deg_prox2_2_3_:
jmp deg_prox2_2_4
deg_prox3_2_3_:
jmp deg_prox3_2_4
deg_prox4_2_3_:
jmp deg_prox4_2_4
continuar8:
jmp atirar2_3
deg_prox_1_4:
printar	PEDRA, 0,200,160,16,128
printar	PEDRA1, 02H,200,160,16,128
inc deg_pedra7
jmp voltar_3
deg_prox1_1_4:
printar	PEDRA1, 0,200,160,16,128
printar	PEDRA2, 02H,200,160,16,128
inc deg_pedra7
jmp voltar_3
deg_prox2_2_4:
printar	PEDRA2, 0,200,160,16,128
printar	PEDRA3, 02H,200,160,16,128
inc deg_pedra7
jmp voltar_3
deg_prox3_2_4:
printar	PEDRA3, 0,200,160,16,128
printar	PEDRA4, 02H,200,160,16,128
inc deg_pedra7
jmp voltar_3
deg_prox4_2_4:
printar	PEDRA4, 0,200,160,16,128
inc deg_pedra7
jmp voltar_3

degrada4__1:
mov bx,aux3_tiro_3
mov cx,aux6_tiro3
add cx,CNT_TIROS_3
PRINTAR PROJETIL,0,bx,cx,1,2
	cmp deg_pedra8,1
je deg_prox_1_5
cmp deg_pedra8,2
je deg_prox1_2_2_3
cmp deg_pedra8,3
je deg_prox2_2_4_
cmp deg_pedra8,4
je deg_prox3_2_4_
cmp deg_pedra8,5
je deg_prox4_2_4_
cmp deg_pedra8,5
ja continuar9
inc deg_pedra8
	jmp voltar_3
deg_prox1_2_2_3:
jmp deg_prox1_1_5
deg_prox2_2_4_:
jmp deg_prox2_2_5
deg_prox3_2_4_:
jmp deg_prox3_2_5
deg_prox4_2_4_:
jmp deg_prox4_2_5
continuar9:
jmp atirar2_3
deg_prox_1_5:
printar	PEDRA, 0,280,160,16,128
printar	PEDRA1, 02H,280,160,16,128
inc deg_pedra8
jmp voltar_3
deg_prox1_1_5:
printar	PEDRA1, 0,280,160,16,128
printar	PEDRA2, 02H,280,160,16,128
inc deg_pedra8
jmp voltar_3
deg_prox2_2_5:
printar	PEDRA2, 0,280,160,16,128
printar	PEDRA3, 02H,280,160,16,128
inc deg_pedra8
jmp voltar_3
deg_prox3_2_5:
printar	PEDRA3, 0,280,160,16,128
printar	PEDRA4, 02H,280,160,16,128
inc deg_pedra8
jmp voltar_3
deg_prox4_2_5:
printar	PEDRA4, 0,280,160,16,128
inc deg_pedra8
jmp voltar_3
	
atirar2_3:
mov bx,aux3_tiro_3
mov cx,aux6_tiro3
add cx,CNT_TIROS_3
PRINTAR PROJETIL,0,bx,cx,1,2
add CNT_TIROS_3,2
mov aux_tiro_3,0
mov cx,aux6_tiro3
add cx,CNT_TIROS_3
mov aux_y3,cx
cmp aux_y3,198
jae voltar_3
jmp atirar_3

voltar_3:
mov CNT_TIROS_3,0
mov aux_tiro_3,0
mov aux4_tiro_3,0

ret

alien_atira3 endp  

end start
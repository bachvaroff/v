;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module walk
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _int0
	.globl _srand
	.globl _rand
	.globl _puts
	.globl _printf
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_i0:
	.ds 1
_OE76:
	.ds 1
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_RND	=	0x8000
_g:
	.ds 9216
_queue:
	.ds 36864
_hp:
	.ds 2
_tp:
	.ds 2
_OEreg	=	0xf006
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_neigh:
	.ds 64
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_int0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'int0'
;------------------------------------------------------------
;	walk.c:12: void int0(void) __interrupt IE0_VECTOR __using 1 {
;	-----------------------------------------
;	 function int0
;	-----------------------------------------
_int0:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	psw
	mov	psw,#0x08
;	walk.c:13: i0 = 0u;
	mov	r0,#_i0
	mov	@r0,#0x00
;	walk.c:14: }
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'bang'
;------------------------------------------------------------
;	walk.c:20: static void bang(void) {
;	-----------------------------------------
;	 function bang
;	-----------------------------------------
_bang:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	walk.c:21: (void)puts("Memory error");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_puts
;	walk.c:17: PCON |= 2;
	orl	_PCON,#0x02
;	walk.c:24: return;
;	walk.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setOE'
;------------------------------------------------------------
;mask                      Allocated to registers r7 
;------------------------------------------------------------
;	walk.c:67: static void setOE(uint8_t mask) {
;	-----------------------------------------
;	 function setOE
;	-----------------------------------------
_setOE:
	mov	r7,dpl
;	walk.c:68: OE76 |= mask;
	mov	r0,#_OE76
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
;	walk.c:69: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	walk.c:74: __endasm;
	nop
	nop
	nop
;	walk.c:75: OEreg = OE76;
	mov	r0,#_OE76
	mov	dptr,#_OEreg
	mov	a,@r0
	movx	@dptr,a
;	walk.c:76: P1_7 = 1;
;	assignBit
	setb	_P1_7
;	walk.c:81: __endasm;
	nop
	nop
	nop
;	walk.c:83: return;
;	walk.c:84: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unsetOE'
;------------------------------------------------------------
;mask                      Allocated to registers r7 
;------------------------------------------------------------
;	walk.c:86: static void unsetOE(uint8_t mask) {
;	-----------------------------------------
;	 function unsetOE
;	-----------------------------------------
_unsetOE:
;	walk.c:87: OE76 &= ~mask;
	mov	a,dpl
	cpl	a
	mov	r7,a
	mov	r0,#_OE76
	anl	a,@r0
	mov	@r0,a
;	walk.c:88: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	walk.c:93: __endasm;
	nop
	nop
	nop
;	walk.c:94: OEreg = OE76;
	mov	r0,#_OE76
	mov	dptr,#_OEreg
	mov	a,@r0
	movx	@dptr,a
;	walk.c:95: P1_7 = 1;
;	assignBit
	setb	_P1_7
;	walk.c:100: __endasm;
	nop
	nop
	nop
;	walk.c:102: return;
;	walk.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flipOE'
;------------------------------------------------------------
;mask                      Allocated to registers r7 
;------------------------------------------------------------
;	walk.c:105: static void flipOE(uint8_t mask) {
;	-----------------------------------------
;	 function flipOE
;	-----------------------------------------
_flipOE:
	mov	r7,dpl
;	walk.c:106: OE76 ^= mask;
	mov	r0,#_OE76
	mov	a,r7
	xrl	a,@r0
	mov	@r0,a
;	walk.c:107: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	walk.c:112: __endasm;
	nop
	nop
	nop
;	walk.c:113: OEreg = OE76;
	mov	r0,#_OE76
	mov	dptr,#_OEreg
	mov	a,@r0
	movx	@dptr,a
;	walk.c:114: P1_7 = 1;
;	assignBit
	setb	_P1_7
;	walk.c:119: __endasm;
	nop
	nop
	nop
;	walk.c:121: return;
;	walk.c:122: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update'
;------------------------------------------------------------
;cur                       Allocated to stack - _bp -5
;j                         Allocated to stack - _bp -6
;t                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	walk.c:124: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
;	-----------------------------------------
;	 function update
;	-----------------------------------------
_update:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	walk.c:125: t->r = cur->r + neigh[j].r;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	b,#0x04
	mul	ab
	mov	@r1,a
	inc	r1
	mov	@r1,b
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,#_neigh
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_neigh >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	walk.c:126: t->c = cur->c + neigh[j].c;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,#_neigh
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,#(_neigh >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	walk.c:128: if (t->r < 0) t->r += ROWS;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r6
	jnb	acc.7,00104$
	mov	a,#0x30
	add	a,r5
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	sjmp	00105$
00104$:
;	walk.c:129: else if (t->r >= ROWS) t->r -= ROWS;
	clr	c
	mov	a,r5
	subb	a,#0x30
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00105$:
;	walk.c:130: if (t->c < 0) t->c += COLS;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	jnb	acc.7,00109$
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0xc0
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	sjmp	00110$
00109$:
;	walk.c:131: else if (t->c >= COLS) t->c -= COLS;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0xc0
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00110$
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r6
	add	a,#0x40
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00110$:
;	walk.c:133: if (g[t->r][t->c] == 0xaau) return 0u;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar6
	push	ar7
	mov	dptr,#0x00c0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	add	a,#_g
	mov	r6,a
	mov	a,r7
	addc	a,#(_g >> 8)
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xaa,00114$
	mov	dpl,#0x00
	sjmp	00116$
00114$:
;	walk.c:134: else if (g[t->r][t->c] != 0x55u) bang();
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar6
	push	ar7
	mov	dptr,#0x00c0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	add	a,#_g
	mov	r6,a
	mov	a,r7
	addc	a,#(_g >> 8)
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x55,00148$
	sjmp	00115$
00148$:
	lcall	_bang
00115$:
;	walk.c:136: return 1u;
	mov	dpl,#0x01
00116$:
;	walk.c:137: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'walk'
;------------------------------------------------------------
;nstart                    Allocated to registers r5 r6 r7 
;cur                       Allocated to stack - _bp +7
;t                         Allocated to stack - _bp +11
;scramble                  Allocated to stack - _bp +15
;ti                        Allocated to registers r2 
;tj                        Allocated to registers r6 
;tx                        Allocated to stack - _bp +31
;j                         Allocated to stack - _bp +32
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;sloc2                     Allocated to stack - _bp +35
;sloc3                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	walk.c:139: static void walk(struct node *nstart) {
;	-----------------------------------------
;	 function walk
;	-----------------------------------------
_walk:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x20
	mov	sp,a
;	walk.c:144: if (!qadd(nstart)) bang();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_qadd
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00102$
	push	ar7
	push	ar6
	push	ar5
	lcall	_bang
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	walk.c:145: g[nstart->r][nstart->c] = 0xaau;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	dptr,#0x00c0
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_g
	mov	r3,a
	mov	a,r4
	addc	a,#(_g >> 8)
	mov	r4,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r5
	add	a,r3
	mov	dpl,a
	mov	a,r6
	addc	a,r4
	mov	dph,a
	mov	a,#0xaa
	movx	@dptr,a
;	walk.c:147: process:
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar1
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r5,a
00103$:
;	walk.c:148: unsetOE(OE76_MASK7 | OE76_MASK6);
	mov	dpl,#0xc0
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	lcall	_unsetOE
	pop	ar0
	pop	ar1
	pop	ar5
;	walk.c:150: if (!qget(&cur)) goto term;
	mov	ar2,r5
	mov	r3,#0x00
	mov	r4,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar5
	push	ar1
	push	ar0
	lcall	_qget
	mov	a,dpl
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar7
	jnz	00184$
	ljmp	00119$
00184$:
;	walk.c:152: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
	mov	a,#0x02
	add	a,r5
	mov	r4,a
	push	ar0
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	r1,ar4
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar1
	mov	r0,ar5
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	pop	ar0
	push	ar7
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar6
	mov	dptr,#_tp
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_hp
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar7
;	walk.c:154: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
	push	ar0
	mov	r0,ar4
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	pop	ar0
	inc	r4
	cjne	r4,#0x00,00185$
	inc	r6
00185$:
	push	ar0
	mov	r0,ar5
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	pop	ar0
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	push	ar4
	push	ar6
	push	ar2
	push	ar3
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	walk.c:155: setOE(OE76_MASK6);
	mov	dpl,#0x40
	lcall	_setOE
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar7
;	walk.c:157: for (j = 0u; j < NMAX; j++)
	mov	r6,#0x00
;	walk.c:184: return;
;	walk.c:157: for (j = 0u; j < NMAX; j++)
00120$:
;	walk.c:158: scramble[j] = j;
	mov	a,r6
	add	a,r7
	push	ar0
	mov	r0,a
	mov	@r0,ar6
	pop	ar0
;	walk.c:157: for (j = 0u; j < NMAX; j++)
	inc	r6
	cjne	r6,#0x10,00186$
00186$:
	jc	00120$
;	walk.c:160: do ti = (uint8_t)(rand() % NMAX);
	mov	r4,#0x00
00107$:
	push	ar7
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	_rand
	mov	r2,dpl
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar7
	anl	ar2,#0x0f
	mov	r3,#0x00
;	walk.c:161: while (ti == j);
	mov	a,r2
	cjne	a,ar4,00188$
	sjmp	00107$
00188$:
;	walk.c:162: do tj = (uint8_t)(rand() % NMAX);
00110$:
	push	ar5
	push	ar7
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	lcall	_rand
	mov	r3,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar7
	anl	ar3,#0x0f
	mov	ar6,r3
;	walk.c:163: while (ti == tj);
	mov	a,r2
	cjne	a,ar6,00189$
	pop	ar5
	sjmp	00110$
00189$:
;	walk.c:164: tx = scramble[ti];
	mov	a,r2
	add	a,r7
	mov	r3,a
	push	ar0
	mov	a,_bp
	add	a,#0x1f
	mov	r0,a
	push	ar1
	mov	r1,ar3
	mov	a,@r1
	mov	@r0,a
;	walk.c:165: scramble[ti] = scramble[tj];
	mov	a,r6
	add	a,r7
	mov	r5,a
	mov	r0,ar5
	mov	ar2,@r0
	mov	r0,ar3
	mov	@r0,ar2
;	walk.c:166: scramble[tj] = tx;
	mov	r0,ar5
	mov	a,_bp
	add	a,#0x1f
	mov	r1,a
	mov	a,@r1
	mov	@r0,a
	pop	ar0
	pop	ar1
;	walk.c:159: for (j = 0u; j < NMAX; j++) {
	inc	r4
	cjne	r4,#0x10,00190$
00190$:
	pop	ar5
	jc	00107$
;	walk.c:169: for (j = 0u; j < NMAX; j++) {
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	@r0,#0x00
	pop	ar0
00124$:
;	walk.c:170: unsetOE(OE76_MASK7);
	push	ar5
	mov	dpl,#0x80
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	lcall	_unsetOE
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar7
;	walk.c:172: if (update(&t, &cur, scramble[j])) {
	push	ar0
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	a,@r0
	add	a,r7
	mov	r2,a
	mov	r0,ar2
	mov	ar3,@r0
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	pop	ar0
	mov	ar2,r1
	mov	r4,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	push	ar3
	mov	b,ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r4
	mov	b,r6
	lcall	_update
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar7
	pop	ar5
	mov	a,r6
	jnz	00192$
	ljmp	00125$
00192$:
;	walk.c:173: if (!qadd(&t)) bang();
	push	ar0
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	r6,#0x40
	pop	ar0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	lcall	_qadd
	mov	a,dpl
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar7
	jnz	00115$
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	lcall	_bang
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar7
00115$:
;	walk.c:174: g[t.r][t.c] = 0xaau;
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	push	ar4
	push	ar6
	mov	dptr,#0x00c0
	lcall	__mulint
	mov	r4,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar0
	mov	a,r4
	add	a,#_g
	mov	r4,a
	mov	a,r6
	addc	a,#(_g >> 8)
	mov	r6,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r6
	mov	dph,a
	mov	a,#0xaa
	movx	@dptr,a
;	walk.c:176: setOE(OE76_MASK7);
	mov	dpl,#0x80
	push	ar0
	lcall	_setOE
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar7
;	walk.c:177: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	dec	r0
	inc	r4
	cjne	r4,#0x00,00194$
	inc	r6
00194$:
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	push	ar4
	push	ar6
	push	ar2
	push	ar3
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar7
00125$:
;	walk.c:169: for (j = 0u; j < NMAX; j++) {
	push	ar0
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	cjne	@r0,#0x10,00195$
00195$:
	pop	ar0
	jnc	00196$
	ljmp	00124$
00196$:
;	walk.c:181: goto process;
	ljmp	00103$
;	walk.c:183: term:
00119$:
;	walk.c:184: return;
;	walk.c:185: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;initial                   Allocated to stack - _bp +5
;N                         Allocated to stack - _bp +9
;i                         Allocated to stack - _bp +11
;j                         Allocated to registers r2 r6 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;sloc2                     Allocated to stack - _bp +15
;------------------------------------------------------------
;	walk.c:187: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0c
	mov	sp,a
;	walk.c:192: i0 = 1u;
	mov	r0,#_i0
	mov	@r0,#0x01
;	walk.c:194: P1_7 = 1;
;	assignBit
	setb	_P1_7
;	walk.c:195: IT0 = 1;
;	assignBit
	setb	_IT0
;	walk.c:196: EX0 = 1;
;	assignBit
	setb	_EX0
;	walk.c:197: EA = 1;
;	assignBit
	setb	_EA
;	walk.c:199: srand(RND);
	mov	dptr,#_RND
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_srand
;	walk.c:200: qinit();
	lcall	_qinit
;	walk.c:202: puts("\033[2J\033[?25l");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_puts
;	walk.c:204: while (i0) {
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00108$:
	mov	r0,#_i0
	mov	a,@r0
	jnz	00182$
	ljmp	00110$
00182$:
;	walk.c:205: for (i = 0; i < ROWS; i++)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	walk.c:206: for (j = 0; j < COLS; j++)
00125$:
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	add	a,#_g
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,#(_g >> 8)
	inc	r1
	mov	@r1,a
	pop	ar1
	mov	r2,#0x00
	mov	r6,#0x00
00112$:
;	walk.c:207: g[i][j] = 0x55u;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	dpl,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	dph,a
	mov	a,#0x55
	movx	@dptr,a
;	walk.c:206: for (j = 0; j < COLS; j++)
	inc	r2
	cjne	r2,#0x00,00183$
	inc	r6
00183$:
	clr	c
	mov	a,r2
	subb	a,#0xc0
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00112$
;	walk.c:205: for (i = 0; i < ROWS; i++)
	mov	r0,_bp
	inc	r0
	mov	a,#0xc0
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r3
	cjne	r3,#0x00,00185$
	inc	r4
00185$:
	clr	c
	mov	a,r3
	subb	a,#0x30
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00125$
;	walk.c:209: initial.r = rand() % ROWS;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	push	ar7
	push	ar1
	push	ar0
	lcall	_rand
	mov	r5,dpl
	mov	r6,dph
	mov	a,#0x30
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	dec	r0
;	walk.c:210: initial.c = rand() % COLS;
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	push	ar1
	push	ar0
	lcall	_rand
	mov	r5,dpl
	mov	r6,dph
	mov	a,#0xc0
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	dec	r0
;	walk.c:212: puts("\033[2J\033[?25l");
	mov	dptr,#___str_4
	mov	b,#0x80
	push	ar0
	lcall	_puts
	pop	ar0
	pop	ar1
;	walk.c:213: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	dec	r0
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	dec	r1
	push	ar1
	push	ar5
	push	ar6
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar1
	pop	ar7
;	walk.c:215: for (i = 0; i < REG; i++) {
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00116$:
;	walk.c:216: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
	push	ar7
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	r3,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r3
	add	a,#_neigh
	mov	@r0,a
	mov	a,r4
	addc	a,#(_neigh >> 8)
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar6,@r0
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	F0
	mov	b,#0x04
	mov	a,r6
	jnb	acc.7,00187$
	cpl	F0
	cpl	a
	inc	a
00187$:
	mul	ab
	jnb	F0,00188$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00188$:
	mov	r6,a
	mov	r5,b
	add	a,#_neigh
	mov	dpl,a
	mov	a,r5
	addc	a,#(_neigh >> 8)
	mov	dph,a
	mov	r0,_bp
	inc	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	lcall	_rand
	mov	r2,dpl
	mov	r7,dph
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r7
	lcall	__modsint
	mov	r2,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	inc	r2
	cjne	r2,#0x00,00189$
	inc	r7
00189$:
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	push	ar2
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__mulint
	mov	r2,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	walk.c:217: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
	mov	a,r3
	add	a,#_neigh
	mov	r3,a
	mov	a,r4
	addc	a,#(_neigh >> 8)
	mov	r4,a
	mov	a,#0x02
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,r6
	add	a,#_neigh
	mov	r6,a
	mov	a,r5
	addc	a,#(_neigh >> 8)
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_rand
	mov	r5,dpl
	mov	r6,dph
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	inc	r5
	cjne	r5,#0x00,00190$
	inc	r6
00190$:
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar5
	push	ar6
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	dpl,r2
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	walk.c:218: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar1
	push	ar5
	push	ar6
	push	ar3
	push	ar4
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar7
;	walk.c:215: for (i = 0; i < REG; i++) {
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00191$
	inc	r0
	inc	@r0
00191$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	subb	a,#0x00
	pop	ar7
	jnc	00192$
	ljmp	00116$
00192$:
;	walk.c:221: OE76 = OE76_0;
	mov	r0,#_OE76
	mov	@r0,#0x3f
;	walk.c:222: setOE(OE76_NC);
	mov	dpl,#0x00
	push	ar7
	push	ar1
	lcall	_setOE
	pop	ar1
	pop	ar7
;	walk.c:224: walk(&initial);
	mov	ar4,r7
	mov	r5,#0x00
	mov	r6,#0x40
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	push	ar1
	lcall	_walk
	pop	ar1
	pop	ar7
;	walk.c:226: for (i = 0; i < ROWS; i++)
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r3,#0x00
	mov	r4,#0x00
;	walk.c:227: for (j = 0; j < COLS; j++)
00132$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r3
	add	a,#_g
	mov	@r0,a
	mov	a,r4
	addc	a,#(_g >> 8)
	inc	r0
	mov	@r0,a
	mov	r2,#0x00
	mov	r6,#0x00
00118$:
;	walk.c:228: if (g[i][j] != 0xaau) bang();
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	dpl,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0xaa,00193$
	sjmp	00119$
00193$:
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_bang
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
00119$:
;	walk.c:227: for (j = 0; j < COLS; j++)
	inc	r2
	cjne	r2,#0x00,00194$
	inc	r6
00194$:
	clr	c
	mov	a,r2
	subb	a,#0xc0
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00118$
;	walk.c:226: for (i = 0; i < ROWS; i++)
	mov	a,#0xc0
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00196$
	inc	r0
	inc	@r0
00196$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x30
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00132$
;	walk.c:230: N++;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00198$
	inc	r0
	inc	@r0
00198$:
	ljmp	00108$
00110$:
;	walk.c:233: EA = 0;
;	assignBit
	clr	_EA
;	walk.c:235: puts("\033[2J\033[?25h");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_puts
;	walk.c:17: PCON |= 2;
	orl	_PCON,#0x02
;	walk.c:239: return;
;	walk.c:240: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qinit'
;------------------------------------------------------------
;	walk.c:242: static void qinit(void) {
;	-----------------------------------------
;	 function qinit
;	-----------------------------------------
_qinit:
;	walk.c:243: hp = tp = 0;
	mov	dptr,#_tp
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hp
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	walk.c:244: return;
;	walk.c:245: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qadd'
;------------------------------------------------------------
;t                         Allocated to registers r7 r5 r6 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;sloc2                     Allocated to stack - _bp +5
;sloc3                     Allocated to stack - _bp +10
;------------------------------------------------------------
;	walk.c:247: static uint8_t qadd(struct node *t) {
;	-----------------------------------------
;	 function qadd
;	-----------------------------------------
_qadd:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r7,dpl
	mov	r5,dph
	mov	r6,b
;	walk.c:248: if (((hp + 1) % QMAX) == tp) return 0u;
	mov	dptr,#_hp
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	clr	a
	push	acc
	mov	a,#0x24
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__modsint
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_tp
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00109$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00109$
	sjmp	00110$
00109$:
	sjmp	00102$
00110$:
	mov	dpl,#0x00
	sjmp	00103$
00102$:
;	walk.c:249: queue[hp] = *t;
	mov	ar2,r7
	mov	ar7,r6
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,#_queue
	mov	r3,a
	mov	a,r4
	addc	a,#(_queue >> 8)
	mov	r4,a
	mov	r6,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar5
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	walk.c:250: hp = (hp + 1) % QMAX;
	mov	dptr,#_hp
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	r5
	cjne	r5,#0x00,00111$
	inc	r6
00111$:
	clr	a
	push	acc
	mov	a,#0x24
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	mov	dptr,#_hp
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	walk.c:251: return 1u;
	mov	dpl,#0x01
00103$:
;	walk.c:252: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qget'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	walk.c:254: static uint8_t qget(struct node *t) {
;	-----------------------------------------
;	 function qget
;	-----------------------------------------
_qget:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	walk.c:255: if (hp == tp) return 0u;
	mov	dptr,#_hp
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_tp
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r3
	cjne	a,ar1,00102$
	mov	a,r4
	cjne	a,ar2,00102$
	mov	dpl,#0x00
	ret
00102$:
;	walk.c:256: *t = queue[tp];
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,#_queue
	mov	r1,a
	mov	a,r2
	addc	a,#(_queue >> 8)
	mov	r2,a
	mov	r4,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar1
	push	ar2
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	walk.c:257: tp = (tp + 1) % QMAX;
	mov	dptr,#_tp
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
00111$:
	clr	a
	push	acc
	mov	a,#0x24
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dptr,#_tp
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	walk.c:258: return 1u;
	mov	dpl,#0x01
;	walk.c:259: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Memory error"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x1b
	.ascii "[2;1H% 8d% 8d% 8d% 8d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x1b
	.ascii "[%d;%dH."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x1b
	.ascii "[%d;%dHo"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x1b
	.ascii "[2J"
	.db 0x1b
	.ascii "[?25l"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x1b
	.ascii "[1;1H% 8u% 8d% 8d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "% 8d% 8d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x1b
	.ascii "[2J"
	.db 0x1b
	.ascii "[?25h"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__neigh:
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0xff, #0xff	; -1
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0xff, #0xff	; -1
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x01, #0x00	;  1
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0xff, #0xff	; -1
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0xff, #0xff	; -1
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0xff, #0xff	; -1
	.byte #0x01, #0x00	;  1
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x01, #0x00	;  1
	.area CABS    (ABS,CODE)

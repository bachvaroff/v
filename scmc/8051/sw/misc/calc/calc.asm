;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module calc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _getchar_poll
	.globl _stack_iter_peek
	.globl _stack_peek
	.globl _stack_pop
	.globl _stack_push
	.globl _stack_init
	.globl _state_exec
	.globl _state_init
	.globl _isxdigit
	.globl _printf
	.globl _strtol
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
	.globl _putchar
	.globl _getchar
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
_s:
	.ds 12
_c:
	.ds 8205
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_deltas:
	.ds 160
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
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	calc.c:15: int putchar(int c) __naked {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	naked function: no prologue.
;	calc.c:20: __endasm;
	mov	a, dpl
	ljmp	0x0030
;	calc.c:21: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	calc.c:23: int getchar(void) __naked {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	naked function: no prologue.
;	calc.c:29: __endasm;
	lcall	0x0032
	mov	dpl, a
	mov	dph, #0
	ret
;	calc.c:30: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_poll'
;------------------------------------------------------------
;	calc.c:32: int getchar_poll(void) __naked {
;	-----------------------------------------
;	 function getchar_poll
;	-----------------------------------------
_getchar_poll:
;	naked function: no prologue.
;	calc.c:44: __endasm;
	mov	a, #0xff
	mov	b, a
	jnb	ri, nochar
	clr	ri
	mov	a, sbuf
	mov	b, #0
	nochar:
	mov	dpl, a
	mov	dph, b
	ret
;	calc.c:45: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'printstr'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	calc.c:47: static inline void printstr(const char *s) {
;	-----------------------------------------
;	 function printstr
;	-----------------------------------------
_printstr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:50: return;
00103$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00101$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00101$:
;	calc.c:50: return;
;	calc.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printbin'
;------------------------------------------------------------
;d                         Allocated to stack - _bp +1
;mask                      Allocated to stack - _bp +5
;------------------------------------------------------------
;	calc.c:53: static inline void printbin(long d) {
;	-----------------------------------------
;	 function printbin
;	-----------------------------------------
_printbin:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00102$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00107$
00106$:
	mov	r6,#0x30
	mov	r7,#0x00
00107$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	calc.c:59: return;
;	calc.c:60: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'accumulate'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +8
;d                         Allocated to stack - _bp +11
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	calc.c:84: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function accumulate
;	-----------------------------------------
_accumulate:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0e
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:85: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:90: if (!ctx->acc_valid) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00102$
;	calc.c:91: ctx->acc_valid = 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	calc.c:92: ctx->acc = 0l;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00102$:
;	calc.c:95: d = strtol(ctx->digit, NULL, ctx->base);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar3
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_strtol
	xch	a,r0
	mov	a,_bp
	add	a,#0x0b
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	calc.c:96: ctx->acc = ctx->acc * (long)ctx->base + d;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	r1,_bp
	inc	r1
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	calc.c:98: return 1;
	mov	dptr,#0x0001
;	calc.c:99: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_pop'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +5
;d                         Allocated to stack - _bp +8
;r                         Allocated to stack - _bp +2
;__1310720001              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080003              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;__1966080005              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;__1966080007              Allocated to registers r3 r4 r5 r6 
;d                         Allocated to stack - _bp +12
;mask                      Allocated to stack - _bp +16
;__1966080009              Allocated to registers 
;s                         Allocated to registers r4 r5 r6 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +2
;------------------------------------------------------------
;	calc.c:101: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function dump_pop
;	-----------------------------------------
_dump_pop:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x13
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:102: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0x07,00102$
	cjne	r7,#0x00,00102$
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00122$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00102$
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x00
	mov	dpl,r3
	mov	dph,r4
	lcall	_putchar
	inc	r5
	cjne	r5,#0x00,00210$
	inc	r6
00210$:
	pop	ar4
	pop	ar3
	pop	ar2
;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
	sjmp	00122$
00102$:
;	calc.c:108: r = stack_pop(&ctx->s, &d);
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x08
	mov	r7,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	_stack_pop
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	calc.c:109: if (!r) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	orl	a,r6
	jnz	00154$
;	calc.c:110: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x07,00212$
	cjne	r3,#0x00,00212$
	ljmp	00110$
00212$:
	mov	r4,#___str_1
	mov	r5,#(___str_1 >> 8)
	mov	r6,#0x80
;	calc.c:50: return;
00125$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jnz	00213$
	ljmp	00110$
00213$:
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
	inc	r4
;	calc.c:111: } else while (r > 0) {
	cjne	r4,#0x00,00125$
	inc	r5
	sjmp	00125$
00154$:
00105$:
	mov	r0,_bp
	inc	r0
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00215$
	ljmp	00110$
00215$:
;	calc.c:112: printstr("VA ");
	mov	r4,#___str_2
	mov	r5,#(___str_2 >> 8)
	mov	r6,#0x80
;	calc.c:50: return;
00128$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jz	00116$
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
	inc	r4
;	calc.c:112: printstr("VA ");
	cjne	r4,#0x00,00128$
	inc	r5
	sjmp	00128$
00116$:
;	calc.c:113: printf("% 11ld / ", d);
	push	ar7
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
;	calc.c:114: printf("%08lx / ", d);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar7
;	calc.c:115: printbin(d);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00130$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	push	ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r3
	orl	a,r5
	orl	a,r6
	orl	a,r7
	pop	ar7
	jz	00137$
	mov	r5,#0x31
	mov	r6,#0x00
	sjmp	00138$
00137$:
	mov	r5,#0x30
	mov	r6,#0x00
00138$:
	mov	dpl,r5
	mov	dph,r6
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00130$
;	calc.c:116: printstr("\r\n");
	mov	r4,#___str_0
	mov	r5,#(___str_0 >> 8)
	mov	r6,#0x80
;	calc.c:50: return;
00133$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jz	00120$
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_putchar
	inc	r4
;	calc.c:116: printstr("\r\n");
	cjne	r4,#0x00,00133$
	inc	r5
	sjmp	00133$
00120$:
;	calc.c:117: r = stack_pop(&ctx->s, &d);
	mov	ar4,r7
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	pop	ar7
	ljmp	00105$
00110$:
;	calc.c:120: return 1;
	mov	dptr,#0x0001
;	calc.c:121: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_peek'
;------------------------------------------------------------
;d                         Allocated to stack - _bp -6
;_ctx                      Allocated to registers 
;__1310720011              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720013              Allocated to registers r4 r5 r6 r7 
;d                         Allocated to stack - _bp +1
;mask                      Allocated to stack - _bp +5
;__1310720015              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:123: static int dump_peek(void *_ctx, long d) __reentrant {
;	-----------------------------------------
;	 function dump_peek
;	-----------------------------------------
_dump_peek:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
;	calc.c:126: printstr("PA ");
	mov	r5,#___str_5
	mov	r6,#(___str_5 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00108$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00102$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:126: printstr("PA ");
	cjne	r5,#0x00,00108$
	inc	r6
	sjmp	00108$
00102$:
;	calc.c:127: printf("% 11ld / ", d);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
;	calc.c:128: printf("%08lx / ", d);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:129: printbin(d);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00110$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00117$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00118$
00117$:
	mov	r6,#0x30
	mov	r7,#0x00
00118$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00110$
;	calc.c:130: printstr("\r\n");
	mov	r5,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00113$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00106$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:130: printstr("\r\n");
	cjne	r5,#0x00,00113$
	inc	r6
	sjmp	00113$
00106$:
;	calc.c:132: return 1;
	mov	dptr,#0x0001
;	calc.c:133: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'operator'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to stack - _bp +1
;ctx                       Allocated to stack - _bp +12
;d0                        Allocated to stack - _bp +15
;d1                        Allocated to stack - _bp +19
;__1966080017              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080019              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440021              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440023              Allocated to registers r7 r6 r5 r4 
;d                         Allocated to stack - _bp +23
;mask                      Allocated to stack - _bp +27
;__2621440025              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080027              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080029              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080031              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080033              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440035              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440037              Allocated to registers r7 r6 r5 r4 
;d                         Allocated to stack - _bp +23
;mask                      Allocated to stack - _bp +27
;__2621440039              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080041              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080043              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440045              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080047              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440049              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080051              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440053              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080055              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440057              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080059              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440061              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440063              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080065              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440067              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__2621440069              Allocated to registers 
;s                         Allocated to registers r7 r6 r5 
;__1966080071              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440073              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080075              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440077              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080079              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440081              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080083              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440085              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080087              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440089              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080091              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__2621440093              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1966080095              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +267
;sloc1                     Allocated to stack - _bp +268
;sloc2                     Allocated to stack - _bp +4
;sloc3                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	calc.c:135: static int operator(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function operator
;	-----------------------------------------
_operator:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x1b
	mov	sp,a
;	calc.c:136: struct ctx *ctx = (struct ctx *)_ctx;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	calc.c:139: switch (ctx->digit[0]) {
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x23,00996$
	ljmp	00157$
00996$:
	cjne	r4,#0x25,00997$
	ljmp	00157$
00997$:
	cjne	r4,#0x26,00998$
	ljmp	00170$
00998$:
	cjne	r4,#0x2a,00999$
	ljmp	00135$
00999$:
	cjne	r4,#0x2b,01000$
	ljmp	00121$
01000$:
	cjne	r4,#0x2d,01001$
	ljmp	00128$
01001$:
	cjne	r4,#0x2e,01002$
	ljmp	00109$
01002$:
	cjne	r4,#0x2f,01003$
	ljmp	00143$
01003$:
	cjne	r4,#0x3c,01004$
	ljmp	00205$
01004$:
	cjne	r4,#0x3e,01005$
	ljmp	00191$
01005$:
	cjne	r4,#0x50,01006$
	ljmp	00105$
01006$:
	cjne	r4,#0x56,01007$
	ljmp	00113$
01007$:
	cjne	r4,#0x5c,01008$
	ljmp	00143$
01008$:
	cjne	r4,#0x5d,01009$
	ljmp	00198$
01009$:
	cjne	r4,#0x5e,01010$
	ljmp	00184$
01010$:
	cjne	r4,#0x70,01011$
	sjmp	00101$
01011$:
	cjne	r4,#0x76,01012$
	ljmp	00109$
01012$:
	cjne	r4,#0x78,01013$
	ljmp	00114$
01013$:
	cjne	r4,#0x7c,01014$
	ljmp	00177$
01014$:
	cjne	r4,#0x7e,01015$
	ljmp	00212$
01015$:
	ljmp	00216$
;	calc.c:140: case 'p':
00101$:
;	calc.c:141: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00299$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00219$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:141: printstr("\r\n");
	cjne	r7,#0x00,00299$
	inc	r6
	sjmp	00299$
00219$:
;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_peek
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00103$
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00302$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01019$
	ljmp	00217$
01019$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
	cjne	r7,#0x00,00302$
	inc	r6
	sjmp	00302$
00103$:
;	calc.c:144: printstr("PT ");
	mov	r7,#___str_6
	mov	r6,#(___str_6 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00305$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00223$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:144: printstr("PT ");
	cjne	r7,#0x00,00305$
	inc	r6
	sjmp	00305$
00223$:
;	calc.c:145: printf("% 11ld / ", d0);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
;	calc.c:146: printf("%08lx / ", d0);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:147: printbin(d0);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	ar2,r4
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00307$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
	mov	a,@r1
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00418$
	mov	r3,#0x31
	mov	r4,#0x00
	sjmp	00419$
00418$:
	mov	r3,#0x30
	mov	r4,#0x00
00419$:
	mov	dpl,r3
	mov	dph,r4
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00307$
;	calc.c:148: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00310$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01025$
	ljmp	00217$
01025$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:151: case 'P':
	cjne	r7,#0x00,00310$
	inc	r6
	sjmp	00310$
00105$:
;	calc.c:152: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00313$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00229$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:152: printstr("\r\n");
	cjne	r7,#0x00,00313$
	inc	r6
	sjmp	00313$
00229$:
;	calc.c:153: if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_dump_peek
	push	acc
	mov	a,#(_dump_peek >> 8)
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_iter_peek
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r3
	orl	a,r4
	jz	01029$
	ljmp	00217$
01029$:
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00316$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01030$
	ljmp	00217$
01030$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:156: case 'v':
	cjne	r7,#0x00,00316$
	inc	r6
	sjmp	00316$
00109$:
;	calc.c:157: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00319$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00233$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:157: printstr("\r\n");
	cjne	r7,#0x00,00319$
	inc	r6
	sjmp	00319$
00233$:
;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00111$
	mov	r7,#___str_1
	mov	r6,#(___str_1 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00322$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01035$
	ljmp	00217$
01035$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
	cjne	r7,#0x00,00322$
	inc	r6
	sjmp	00322$
00111$:
;	calc.c:160: printstr("VT ");
	mov	r7,#___str_7
	mov	r6,#(___str_7 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00325$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00237$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:160: printstr("VT ");
	cjne	r7,#0x00,00325$
	inc	r6
	sjmp	00325$
00237$:
;	calc.c:161: printf("% 11ld / ", d0);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
;	calc.c:162: printf("%08lx / ", d0);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:163: printbin(d0);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	ar2,r4
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00327$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
	mov	a,@r1
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00420$
	mov	r3,#0x31
	mov	r4,#0x00
	sjmp	00421$
00420$:
	mov	r3,#0x30
	mov	r4,#0x00
00421$:
	mov	dpl,r3
	mov	dph,r4
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00327$
;	calc.c:164: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00330$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01041$
	ljmp	00217$
01041$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:167: case 'V':
	cjne	r7,#0x00,00330$
	inc	r6
	sjmp	00330$
00113$:
;	calc.c:168: printstr("\r\n");
	mov	r7,#___str_0
	mov	r6,#(___str_0 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00333$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jz	00243$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:168: printstr("\r\n");
	cjne	r7,#0x00,00333$
	inc	r6
	sjmp	00333$
00243$:
;	calc.c:169: (void)dump_pop(_ctx, delta);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_dump_pop
	dec	sp
	dec	sp
	dec	sp
;	calc.c:170: break;
	ljmp	00217$
;	calc.c:171: case 'x':
00114$:
;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00119$
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00336$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01046$
	ljmp	00217$
01046$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00336$
	inc	r6
	sjmp	00336$
00119$:
;	calc.c:173: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00116$
;	calc.c:174: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:175: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00339$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01049$
	ljmp	00217$
01049$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:175: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00339$
	inc	r6
	sjmp	00339$
00116$:
;	calc.c:177: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:178: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:180: break;
	ljmp	00217$
;	calc.c:181: case '+':
00121$:
;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00126$
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00342$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01052$
	ljmp	00217$
01052$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00342$
	inc	r6
	sjmp	00342$
00126$:
;	calc.c:183: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00123$
;	calc.c:184: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:185: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00345$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01055$
	ljmp	00217$
01055$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:185: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00345$
	inc	r6
	sjmp	00345$
00123$:
;	calc.c:187: d1 += d0;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	calc.c:188: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:190: break;
	ljmp	00217$
;	calc.c:191: case '-':
00128$:
;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00133$
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00348$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01058$
	ljmp	00217$
01058$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00348$
	inc	r6
	sjmp	00348$
00133$:
;	calc.c:193: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00130$
;	calc.c:194: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:195: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00351$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01061$
	ljmp	00217$
01061$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:195: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00351$
	inc	r6
	sjmp	00351$
00130$:
;	calc.c:197: d1 -= d0;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
;	calc.c:198: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:200: break;
	ljmp	00217$
;	calc.c:201: case '*':
00135$:
;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00140$
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00354$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01064$
	ljmp	00217$
01064$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00354$
	inc	r6
	sjmp	00354$
00140$:
;	calc.c:203: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00137$
;	calc.c:204: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:205: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00357$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01067$
	ljmp	00217$
01067$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:205: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00357$
	inc	r6
	sjmp	00357$
00137$:
;	calc.c:207: d1 *= d0;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	calc.c:208: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:210: break;
	ljmp	00217$
;	calc.c:212: case '\\':
00143$:
;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0f
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00154$
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00360$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01070$
	ljmp	00217$
01070$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00360$
	inc	r6
	sjmp	00360$
00154$:
;	calc.c:214: else if (!stack_pop(&ctx->s, &d1)) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x13
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00151$
;	calc.c:215: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:216: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00363$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01073$
	ljmp	00217$
01073$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:216: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00363$
	inc	r6
	sjmp	00363$
00151$:
;	calc.c:217: } else if (!d0) {
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	01075$
	ljmp	00148$
01075$:
;	calc.c:218: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:219: (void)stack_push(&ctx->s, d0);			
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:220: printstr("\r\ndivision by zero\r\n");
	mov	r7,#___str_9
	mov	r6,#(___str_9 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00366$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01076$
	ljmp	00217$
01076$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:220: printstr("\r\ndivision by zero\r\n");
	cjne	r7,#0x00,00366$
	inc	r6
	sjmp	00366$
00148$:
;	calc.c:222: if (ctx->digit[0] == '/') d1 /= d0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2f,00145$
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divslong
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
	sjmp	00146$
00145$:
;	calc.c:223: else d1 = (unsigned long)d1 / (unsigned long)d0;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	__divulong
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
00146$:
;	calc.c:224: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:226: break;
	ljmp	00217$
;	calc.c:228: case '#':
00157$:
;	calc.c:229: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0f
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00168$
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00369$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01081$
	ljmp	00217$
01081$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:229: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00369$
	inc	r6
	sjmp	00369$
00168$:
;	calc.c:230: else if (!stack_pop(&ctx->s, &d1)) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x13
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00165$
;	calc.c:231: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:232: printstr("\r\nstack underflow\r\n");
	mov	r7,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00372$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01084$
	ljmp	00217$
01084$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:232: printstr("\r\nstack underflow\r\n");
	cjne	r7,#0x00,00372$
	inc	r6
	sjmp	00372$
00165$:
;	calc.c:233: } else if (!d0) {
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	01086$
	ljmp	00162$
01086$:
;	calc.c:234: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:235: (void)stack_push(&ctx->s, d0);			
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:236: printstr("\r\ndivision by zero\r\n");
	mov	r7,#___str_9
	mov	r6,#(___str_9 >> 8)
	mov	r5,#0x80
;	calc.c:50: return;
00375$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	jnz	01087$
	ljmp	00217$
01087$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r7
;	calc.c:236: printstr("\r\ndivision by zero\r\n");
	cjne	r7,#0x00,00375$
	inc	r6
	sjmp	00375$
00162$:
;	calc.c:238: if (ctx->digit[0] == '%') d1 %= d0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x25,00159$
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	sjmp	00160$
00159$:
;	calc.c:239: else d1 = (unsigned long)d1 % (unsigned long)d0;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00160$:
;	calc.c:240: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:242: break;
	ljmp	00217$
;	calc.c:243: case '&':
00170$:
;	calc.c:244: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00175$
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00378$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01092$
	ljmp	00217$
01092$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:244: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00378$
	inc	r6
	sjmp	00378$
00175$:
;	calc.c:245: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00172$
;	calc.c:246: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:247: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00381$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01095$
	ljmp	00217$
01095$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:247: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00381$
	inc	r6
	sjmp	00381$
00172$:
;	calc.c:249: d1 &= d0;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r1
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	anl	a,@r0
	mov	@r0,a
;	calc.c:250: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:252: break;
	ljmp	00217$
;	calc.c:253: case '|':
00177$:
;	calc.c:254: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00182$
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00384$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01098$
	ljmp	00217$
01098$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:254: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00384$
	inc	r6
	sjmp	00384$
00182$:
;	calc.c:255: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00179$
;	calc.c:256: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:257: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00387$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01101$
	ljmp	00217$
01101$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:257: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00387$
	inc	r6
	sjmp	00387$
00179$:
;	calc.c:259: d1 |= d0;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r1
	orl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	@r0,a
;	calc.c:260: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:262: break;
	ljmp	00217$
;	calc.c:263: case '^':
00184$:
;	calc.c:264: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00189$
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00390$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01104$
	ljmp	00217$
01104$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:264: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00390$
	inc	r6
	sjmp	00390$
00189$:
;	calc.c:265: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00186$
;	calc.c:266: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:267: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00393$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01107$
	ljmp	00217$
01107$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:267: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00393$
	inc	r6
	sjmp	00393$
00186$:
;	calc.c:269: d1 ^= d0;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r1
	xrl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	xrl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	xrl	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	xrl	a,@r0
	mov	@r0,a
;	calc.c:270: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:272: break;
	ljmp	00217$
;	calc.c:273: case '>':
00191$:
;	calc.c:274: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00196$
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00396$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01110$
	ljmp	00217$
01110$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:274: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00396$
	inc	r6
	sjmp	00396$
00196$:
;	calc.c:275: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00193$
;	calc.c:276: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:277: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00399$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01113$
	ljmp	00217$
01113$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:277: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00399$
	inc	r6
	sjmp	00399$
00193$:
;	calc.c:279: d1 = (unsigned long)d1 >> ((unsigned long)d0 & 0x0000001flu);
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar3,@r0
	anl	ar3,#0x1f
	mov	b,r3
	inc	b
	sjmp	01116$
01115$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
01116$:
	djnz	b,01115$
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:280: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:282: break;
	ljmp	00217$
;	calc.c:283: case ']':
00198$:
;	calc.c:284: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00203$
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00402$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01118$
	ljmp	00217$
01118$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:284: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00402$
	inc	r6
	sjmp	00402$
00203$:
;	calc.c:285: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00200$
;	calc.c:286: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:287: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00405$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01121$
	ljmp	00217$
01121$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:287: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00405$
	inc	r6
	sjmp	00405$
00200$:
;	calc.c:289: d1 >>= ((unsigned long)d0 & 0x0000001flu);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar7,@r0
	anl	ar7,#0x1f
	mov	b,r7
	inc	b
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	rlc	a
	mov	ov,c
	dec	r0
	dec	r0
	dec	r0
	sjmp	01124$
01123$:
	mov	c,ov
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
01124$:
	djnz	b,01123$
;	calc.c:290: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:292: break;
	ljmp	00217$
;	calc.c:293: case '<':
00205$:
;	calc.c:294: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00210$
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00408$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01126$
	ljmp	00217$
01126$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:294: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00408$
	inc	r6
	sjmp	00408$
00210$:
;	calc.c:295: else if (!stack_pop(&ctx->s, &d1)) {
	mov	a,_bp
	add	a,#0x13
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00207$
;	calc.c:296: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:297: printstr("\r\nstack underflow\r\n");
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00411$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	01129$
	ljmp	00217$
01129$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:297: printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00411$
	inc	r6
	sjmp	00411$
00207$:
;	calc.c:299: d1 <<= ((unsigned long)d0 & 0x0000001flu);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar7,@r0
	anl	ar7,#0x1f
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	b,r7
	inc	b
	sjmp	01132$
01131$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
01132$:
	djnz	b,01131$
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	calc.c:300: (void)stack_push(&ctx->s, d1);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:302: break;
	ljmp	00217$
;	calc.c:303: case '~':
00212$:
;	calc.c:304: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_stack_pop
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00214$
	mov	r5,#___str_8
	mov	r6,#(___str_8 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00414$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00217$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:304: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
	cjne	r5,#0x00,00414$
	inc	r6
	sjmp	00414$
00214$:
;	calc.c:306: d0 = ~d0;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	cpl	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	cpl	a
	mov	@r0,a
;	calc.c:307: (void)stack_push(&ctx->s, d0);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_stack_push
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	calc.c:309: break;
;	calc.c:310: default:
	sjmp	00217$
00216$:
;	calc.c:311: return UNDEF;
	mov	dptr,#0x8000
;	calc.c:312: }
	sjmp	00416$
00217$:
;	calc.c:314: return 1;
	mov	dptr,#0x0001
00416$:
;	calc.c:315: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'push_acc'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to stack - _bp +1
;ctx                       Allocated to registers r2 r3 r4 
;__1310720097              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	calc.c:317: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function push_acc
;	-----------------------------------------
_push_acc:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	calc.c:318: struct ctx *ctx = (struct ctx *)_ctx;
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	calc.c:322: ctx->acc_valid = 0;
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	calc.c:323: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
	mov	a,#0x02
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,#0x09
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar7,r4
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
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_stack_push
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jnz	00102$
	mov	r5,#___str_10
	mov	r6,#(___str_10 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00109$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00102$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:323: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00102$:
;	calc.c:325: if (delta->event == EVENT_OP) return operator(_ctx, delta);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x02,00104$
	cjne	r3,#0x00,00104$
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_operator
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
	sjmp	00111$
00104$:
;	calc.c:326: else return 1;
	mov	dptr,#0x0001
00111$:
;	calc.c:327: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_acc'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:329: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_acc
;	-----------------------------------------
_reset_acc:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:330: struct ctx *ctx = (struct ctx *)_ctx;
;	calc.c:332: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
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
	cjne	r2,#0x06,00102$
	cjne	r3,#0x00,00102$
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
00102$:
;	calc.c:333: ctx->acc = 0l;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	calc.c:335: return 1;
	mov	dptr,#0x0001
;	calc.c:336: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_base'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	calc.c:338: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function reset_base
;	-----------------------------------------
_reset_base:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:339: struct ctx *ctx = (struct ctx *)_ctx;
;	calc.c:343: switch (ctx->digit[0]) {
	mov	a,#0x07
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x48,00124$
	sjmp	00101$
00124$:
	cjne	r4,#0x4f,00125$
	sjmp	00103$
00125$:
	cjne	r4,#0x68,00126$
	sjmp	00102$
00126$:
;	calc.c:344: case 'H':
	cjne	r4,#0x6f,00105$
	sjmp	00104$
00101$:
;	calc.c:345: ctx->base = 16;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:346: break;
;	calc.c:347: case 'h':
	sjmp	00105$
00102$:
;	calc.c:348: ctx->base = 10;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:349: break;
;	calc.c:350: case 'O':
	sjmp	00105$
00103$:
;	calc.c:351: ctx->base = 8;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:352: break;
;	calc.c:353: case 'o':
	sjmp	00105$
00104$:
;	calc.c:354: ctx->base = 2;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	calc.c:356: }
00105$:
;	calc.c:358: return 1;
	mov	dptr,#0x0001
;	calc.c:359: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'help'
;------------------------------------------------------------
;delta                     Allocated to stack - _bp -5
;_ctx                      Allocated to registers r5 r6 r7 
;ctx                       Allocated to stack - _bp +4
;__1310720099              Allocated to registers 
;d                         Allocated to stack - _bp +7
;mask                      Allocated to stack - _bp +11
;__1310720101              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720103              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720105              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720107              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720109              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720111              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720113              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720115              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720117              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720119              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720121              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720123              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720125              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720127              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720129              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720131              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720133              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720135              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720137              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720139              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720141              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720143              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720145              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;__1310720147              Allocated to registers 
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	calc.c:361: static int help(void *_ctx, delta_t *delta) __reentrant {
;	-----------------------------------------
;	 function help
;	-----------------------------------------
_help:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0e
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	calc.c:362: struct ctx *ctx = (struct ctx *)_ctx;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	calc.c:365: printf("\r\nbase = %d, ", ctx->base);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar3
	push	ar4
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	calc.c:366: printf("acc = %ld / ", ctx->acc);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
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
	mov	r0,_bp
	inc	r0
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:367: printf("%08lx / ", ctx->acc);
	mov	r0,_bp
	inc	r0
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	calc.c:368: printbin(ctx->acc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
00151$:
;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00227$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00228$
00227$:
	mov	r6,#0x30
	mov	r7,#0x00
00228$:
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00151$
;	calc.c:369: printf(", acc_valid = %d\r\n\r\n", (int)ctx->acc_valid);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	calc.c:370: printstr("HhOo\tbase 16 10 8 2\r\n");
	mov	r5,#___str_14
	mov	r6,#(___str_14 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00154$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:370: printstr("HhOo\tbase 16 10 8 2\r\n");
	cjne	r5,#0x00,00154$
	inc	r6
	sjmp	00154$
00104$:
;	calc.c:371: printstr("p\tpeek top\r\n");
	mov	r5,#___str_15
	mov	r6,#(___str_15 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00157$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00106$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:371: printstr("p\tpeek top\r\n");
	cjne	r5,#0x00,00157$
	inc	r6
	sjmp	00157$
00106$:
;	calc.c:372: printstr("P\tprint stack\r\n");
	mov	r5,#___str_16
	mov	r6,#(___str_16 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00160$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:372: printstr("P\tprint stack\r\n");
	cjne	r5,#0x00,00160$
	inc	r6
	sjmp	00160$
00108$:
;	calc.c:373: printstr("v.\tpop top\r\n");
	mov	r5,#___str_17
	mov	r6,#(___str_17 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00163$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00110$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:373: printstr("v.\tpop top\r\n");
	cjne	r5,#0x00,00163$
	inc	r6
	sjmp	00163$
00110$:
;	calc.c:374: printstr("V\tpop all\r\n");
	mov	r5,#___str_18
	mov	r6,#(___str_18 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00166$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00112$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:374: printstr("V\tpop all\r\n");
	cjne	r5,#0x00,00166$
	inc	r6
	sjmp	00166$
00112$:
;	calc.c:375: printstr("i\treset acc\r\n");
	mov	r5,#___str_19
	mov	r6,#(___str_19 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00169$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00114$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:375: printstr("i\treset acc\r\n");
	cjne	r5,#0x00,00169$
	inc	r6
	sjmp	00169$
00114$:
;	calc.c:376: printstr("I\treset and discard acc\r\n");
	mov	r5,#___str_20
	mov	r6,#(___str_20 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00172$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00116$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:376: printstr("I\treset and discard acc\r\n");
	cjne	r5,#0x00,00172$
	inc	r6
	sjmp	00172$
00116$:
;	calc.c:377: printstr("x\texchange top 2\r\n");
	mov	r5,#___str_21
	mov	r6,#(___str_21 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00175$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00118$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:377: printstr("x\texchange top 2\r\n");
	cjne	r5,#0x00,00175$
	inc	r6
	sjmp	00175$
00118$:
;	calc.c:378: printstr("+\tadd top 2\r\n");
	mov	r5,#___str_22
	mov	r6,#(___str_22 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00178$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00120$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:378: printstr("+\tadd top 2\r\n");
	cjne	r5,#0x00,00178$
	inc	r6
	sjmp	00178$
00120$:
;	calc.c:379: printstr("-\tsubtract top 2\r\n");
	mov	r5,#___str_23
	mov	r6,#(___str_23 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00181$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00122$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:379: printstr("-\tsubtract top 2\r\n");
	cjne	r5,#0x00,00181$
	inc	r6
	sjmp	00181$
00122$:
;	calc.c:380: printstr("*\tmultiply top 2\r\n");
	mov	r5,#___str_24
	mov	r6,#(___str_24 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00184$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00124$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:380: printstr("*\tmultiply top 2\r\n");
	cjne	r5,#0x00,00184$
	inc	r6
	sjmp	00184$
00124$:
;	calc.c:381: printstr("/\tdivide top 2\r\n");
	mov	r5,#___str_25
	mov	r6,#(___str_25 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00187$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00126$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:381: printstr("/\tdivide top 2\r\n");
	cjne	r5,#0x00,00187$
	inc	r6
	sjmp	00187$
00126$:
;	calc.c:382: printstr("\\\tdivide top 2 unsigned\r\n");	
	mov	r5,#___str_26
	mov	r6,#(___str_26 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00190$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00128$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:382: printstr("\\\tdivide top 2 unsigned\r\n");	
	cjne	r5,#0x00,00190$
	inc	r6
	sjmp	00190$
00128$:
;	calc.c:383: printstr("%\tmodulus top 2\r\n");
	mov	r5,#___str_27
	mov	r6,#(___str_27 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00193$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00130$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:383: printstr("%\tmodulus top 2\r\n");
	cjne	r5,#0x00,00193$
	inc	r6
	sjmp	00193$
00130$:
;	calc.c:384: printstr("#\tmodulus top 2 unsigned\r\n");
	mov	r5,#___str_28
	mov	r6,#(___str_28 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00196$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00132$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:384: printstr("#\tmodulus top 2 unsigned\r\n");
	cjne	r5,#0x00,00196$
	inc	r6
	sjmp	00196$
00132$:
;	calc.c:385: printstr("&\tand top 2\r\n");
	mov	r5,#___str_29
	mov	r6,#(___str_29 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00199$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00134$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:385: printstr("&\tand top 2\r\n");
	cjne	r5,#0x00,00199$
	inc	r6
	sjmp	00199$
00134$:
;	calc.c:386: printstr("|\tor top 2\r\n");
	mov	r5,#___str_30
	mov	r6,#(___str_30 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00202$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00136$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:386: printstr("|\tor top 2\r\n");
	cjne	r5,#0x00,00202$
	inc	r6
	sjmp	00202$
00136$:
;	calc.c:387: printstr("^\txor top 2\r\n");
	mov	r5,#___str_31
	mov	r6,#(___str_31 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00205$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00138$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:387: printstr("^\txor top 2\r\n");
	cjne	r5,#0x00,00205$
	inc	r6
	sjmp	00205$
00138$:
;	calc.c:388: printstr(">\tshift right top 2\r\n");
	mov	r5,#___str_32
	mov	r6,#(___str_32 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00208$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00140$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:388: printstr(">\tshift right top 2\r\n");
	cjne	r5,#0x00,00208$
	inc	r6
	sjmp	00208$
00140$:
;	calc.c:389: printstr("]\tarithmetic shift right top 2\r\n");
	mov	r5,#___str_33
	mov	r6,#(___str_33 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00211$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00142$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:389: printstr("]\tarithmetic shift right top 2\r\n");
	cjne	r5,#0x00,00211$
	inc	r6
	sjmp	00211$
00142$:
;	calc.c:390: printstr("<\tshift left top 2\r\n");
	mov	r5,#___str_34
	mov	r6,#(___str_34 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00214$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00144$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:390: printstr("<\tshift left top 2\r\n");
	cjne	r5,#0x00,00214$
	inc	r6
	sjmp	00214$
00144$:
;	calc.c:391: printstr("~\tbitwise not top\r\n");
	mov	r5,#___str_35
	mov	r6,#(___str_35 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00217$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00146$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:391: printstr("~\tbitwise not top\r\n");
	cjne	r5,#0x00,00217$
	inc	r6
	sjmp	00217$
00146$:
;	calc.c:392: printstr("?\thelp\r\n");
	mov	r5,#___str_36
	mov	r6,#(___str_36 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00220$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00148$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:392: printstr("?\thelp\r\n");
	cjne	r5,#0x00,00220$
	inc	r6
	sjmp	00220$
00148$:
;	calc.c:393: printstr("q\tquit\r\n");
	mov	r5,#___str_37
	mov	r6,#(___str_37 >> 8)
	mov	r7,#0x80
;	calc.c:50: return;
00223$:
;	calc.c:48: for (; *s; s++) putchar(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00150$
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	lcall	_putchar
	inc	r5
;	calc.c:393: printstr("q\tquit\r\n");
	cjne	r5,#0x00,00223$
	inc	r6
	sjmp	00223$
00150$:
;	calc.c:395: return 1;
	mov	dptr,#0x0001
;	calc.c:396: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	calc.c:425: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	calc.c:428: c.base = 10;
	mov	dptr,#_c
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	calc.c:429: c.acc = 0l;
	mov	dptr,#(_c + 0x0002)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	calc.c:430: c.acc_valid = (char)0;
	mov	dptr,#(_c + 0x0006)
	movx	@dptr,a
;	calc.c:431: c.digit[0] = c.digit[1] = '\0';
	mov	dptr,#(_c + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_c + 0x0007)
	movx	@dptr,a
;	calc.c:432: stack_init(&c.s);	
	mov	dptr,#(_c + 0x0009)
	mov	b,#0x00
	lcall	_stack_init
;	calc.c:433: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
	mov	a,#_c
	push	acc
	mov	a,#(_c >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_deltas
	push	acc
	mov	a,#(_deltas >> 8)
	push	acc
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_init
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
;	calc.c:435: while (1) {
00173$:
;	calc.c:436: input = getchar();
	lcall	_getchar
;	calc.c:437: (void)putchar(input);
	mov	r6,dpl
	mov  r7,dph
	lcall	_putchar
;	calc.c:438: c.digit[0] = (char)input;
	mov	ar5,r6
	mov	dptr,#(_c + 0x0007)
	mov	a,r5
	movx	@dptr,a
;	calc.c:440: if ((char)input == 'q') {
	cjne	r5,#0x71,00170$
;	calc.c:441: if (state_exec(&s, EVENT_TERM) <= 0) break;
	mov	a,#0x07
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00173$
	ljmp	00174$
00170$:
;	calc.c:442: } else if ((char)input == '?') {
	cjne	r5,#0x3f,00167$
;	calc.c:443: if (state_exec(&s, EVENT_HELP) <= 0) break;
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00173$
	ljmp	00174$
00167$:
;	calc.c:444: } else if ((char)input == 'i') {
	cjne	r5,#0x69,00164$
;	calc.c:445: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00325$
	ljmp	00173$
00325$:
	ljmp	00174$
00164$:
;	calc.c:446: } else if ((char)input == 'I') {
	cjne	r5,#0x49,00161$
;	calc.c:447: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00328$
	ljmp	00173$
00328$:
	ljmp	00174$
00161$:
;	calc.c:449: ((char)input == 'h') || ((char)input == 'H') ||
	cjne	r5,#0x68,00329$
	sjmp	00154$
00329$:
	cjne	r5,#0x48,00330$
	sjmp	00154$
00330$:
;	calc.c:450: ((char)input == 'o') || ((char)input == 'O')
	cjne	r5,#0x6f,00331$
	sjmp	00154$
00331$:
	cjne	r5,#0x4f,00155$
00154$:
;	calc.c:452: if (state_exec(&s, EVENT_BASE) <= 0) break;
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00334$
	ljmp	00173$
00334$:
	ljmp	00174$
00155$:
;	calc.c:453: } else if (isxdigit(input)) {
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	lcall	_isxdigit
	mov	a,dpl
	mov	b,dph
	pop	ar5
	orl	a,b
	jz	00152$
;	calc.c:454: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00336$
	ljmp	00173$
00336$:
	ljmp	00174$
00152$:
;	calc.c:456: ((char)input == 'p') || ((char)input == 'P') ||
	cjne	r5,#0x70,00337$
	sjmp	00143$
00337$:
	cjne	r5,#0x50,00338$
	sjmp	00143$
00338$:
;	calc.c:457: ((char)input == 'v') || ((char)input == 'V') ||
	cjne	r5,#0x76,00339$
	sjmp	00143$
00339$:
	cjne	r5,#0x56,00340$
	sjmp	00143$
00340$:
;	calc.c:458: ((char)input == '.') ||
	cjne	r5,#0x2e,00341$
	sjmp	00143$
00341$:
;	calc.c:459: ((char)input == 'x')
	cjne	r5,#0x78,00144$
00143$:
;	calc.c:461: if (state_exec(&s, EVENT_OP) <= 0) break;
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00344$
	ljmp	00173$
00344$:
	ljmp	00174$
00144$:
;	calc.c:463: ((char)input == '+') || ((char)input == '-')
	cjne	r5,#0x2b,00345$
	sjmp	00139$
00345$:
	cjne	r5,#0x2d,00140$
00139$:
;	calc.c:465: if (state_exec(&s, EVENT_OP) <= 0) break;
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00348$
	ljmp	00173$
00348$:
	ljmp	00174$
00140$:
;	calc.c:467: ((char)input == '*') ||
	cjne	r5,#0x2a,00349$
	sjmp	00132$
00349$:
;	calc.c:468: ((char)input == '/') || ((char)input == '\\') ||
	cjne	r5,#0x2f,00350$
	sjmp	00132$
00350$:
	cjne	r5,#0x5c,00351$
	sjmp	00132$
00351$:
;	calc.c:469: ((char)input == '%') || ((char)input == '#')
	cjne	r5,#0x25,00352$
	sjmp	00132$
00352$:
	cjne	r5,#0x23,00133$
00132$:
;	calc.c:471: if (state_exec(&s, EVENT_OP) <= 0) break;
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00174$
	ljmp	00173$
00133$:
;	calc.c:473: ((char)input == '&') ||
	cjne	r5,#0x26,00356$
	sjmp	00123$
00356$:
;	calc.c:474: ((char)input == '|') || ((char)input == '^') ||
	cjne	r5,#0x7c,00357$
	sjmp	00123$
00357$:
	cjne	r5,#0x5e,00358$
	sjmp	00123$
00358$:
;	calc.c:475: ((char)input == '~') ||
	cjne	r5,#0x7e,00359$
	sjmp	00123$
00359$:
;	calc.c:476: ((char)input == '>') || ((char)input == ']') ||
	cjne	r5,#0x3e,00360$
	sjmp	00123$
00360$:
	cjne	r5,#0x5d,00361$
	sjmp	00123$
00361$:
;	calc.c:477: ((char)input == '<')
	cjne	r5,#0x3c,00124$
00123$:
;	calc.c:479: if (state_exec(&s, EVENT_OP) <= 0) break;
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00174$
	ljmp	00173$
00124$:
;	calc.c:481: if (state_exec(&s, EVENT_DELIM) <= 0) break;
	clr	a
	push	acc
	push	acc
	mov	dptr,#_s
	mov	b,#0x00
	lcall	_state_exec
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00365$
	ljmp	00173$
00365$:
00174$:
;	calc.c:487: __endasm;
	orl	pcon, #2
;	calc.c:488: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "VA "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "% 11ld / "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "%08lx / "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "PA "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "PT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "VT "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0d
	.db 0x0a
	.ascii "stack underflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii "division by zero"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "stack overflow"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii "base = %d, "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "acc = %ld / "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii ", acc_valid = %d"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "HhOo"
	.db 0x09
	.ascii "base 16 10 8 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "p"
	.db 0x09
	.ascii "peek top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "P"
	.db 0x09
	.ascii "print stack"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "v."
	.db 0x09
	.ascii "pop top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "V"
	.db 0x09
	.ascii "pop all"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "i"
	.db 0x09
	.ascii "reset acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "I"
	.db 0x09
	.ascii "reset and discard acc"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "x"
	.db 0x09
	.ascii "exchange top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "+"
	.db 0x09
	.ascii "add top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "-"
	.db 0x09
	.ascii "subtract top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "*"
	.db 0x09
	.ascii "multiply top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "/"
	.db 0x09
	.ascii "divide top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x5c
	.db 0x09
	.ascii "divide top 2 unsigned"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "%"
	.db 0x09
	.ascii "modulus top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "#"
	.db 0x09
	.ascii "modulus top 2 unsigned"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "&"
	.db 0x09
	.ascii "and top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "|"
	.db 0x09
	.ascii "or top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "^"
	.db 0x09
	.ascii "xor top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii ">"
	.db 0x09
	.ascii "shift right top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "]"
	.db 0x09
	.ascii "arithmetic shift right top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "<"
	.db 0x09
	.ascii "shift left top 2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "~"
	.db 0x09
	.ascii "bitwise not top"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "?"
	.db 0x09
	.ascii "help"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "q"
	.db 0x09
	.ascii "quit"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__deltas:
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x00, #0x00	;  0
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x00,#0x00
	.byte _accumulate, (_accumulate >> 8)
	.byte #0x00, #0x00	;  0
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x00,#0x00
	.byte _operator, (_operator >> 8)
	.byte #0x01, #0x00	;  1
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x00,#0x00
	.byte _operator, (_operator >> 8)
	.byte #0x01, #0x00	;  1
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x00,#0x00
	.byte _accumulate, (_accumulate >> 8)
	.byte #0x02, #0x00	;  2
	.byte #0x00, #0x00	;  0
	.byte #0x00, #0x00	;  0
	.byte #0x00,#0x00
	.byte _push_acc, (_push_acc >> 8)
	.byte #0x02, #0x00	;  2
	.byte #0x06, #0x00	;  6
	.byte #0x00, #0x00	;  0
	.byte #0x00,#0x00
	.byte _reset_acc, (_reset_acc >> 8)
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x00,#0x00
	.byte _accumulate, (_accumulate >> 8)
	.byte #0x02, #0x00	;  2
	.byte #0x02, #0x00	;  2
	.byte #0x01, #0x00	;  1
	.byte #0x00,#0x00
	.byte _push_acc, (_push_acc >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x05, #0x00	;  5
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _reset_acc, (_reset_acc >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x06, #0x00	;  6
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.byte #0xff, #0x7f	;  32767
	.byte #0x04, #0x00	;  4
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _reset_base, (_reset_base >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x03, #0x00	;  3
	.byte #0xff, #0x7f	;  32767
	.byte #0x00,#0x00
	.byte _help, (_help >> 8)
	.byte #0xff, #0x7f	;  32767
	.byte #0x07, #0x00	;  7
	.byte #0x03, #0x00	;  3
	.byte #0x00,#0x00
	.byte _dump_pop, (_dump_pop >> 8)
	.byte #0x00, #0x80	; -32768
	.byte #0x00, #0x80	; -32768
	.byte #0x00, #0x80	; -32768
	.byte #0x00,#0x00
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)

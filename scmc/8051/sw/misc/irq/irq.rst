                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module irq
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int1
                                     13 	.globl _int0
                                     14 	.globl _getchar
                                     15 	.globl _printf
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _FL
                                     23 	.globl _P
                                     24 	.globl _TF2
                                     25 	.globl _EXF2
                                     26 	.globl _RCLK
                                     27 	.globl _TCLK
                                     28 	.globl _EXEN2
                                     29 	.globl _TR2
                                     30 	.globl _C_T2
                                     31 	.globl _CP_RL2
                                     32 	.globl _T2CON_7
                                     33 	.globl _T2CON_6
                                     34 	.globl _T2CON_5
                                     35 	.globl _T2CON_4
                                     36 	.globl _T2CON_3
                                     37 	.globl _T2CON_2
                                     38 	.globl _T2CON_1
                                     39 	.globl _T2CON_0
                                     40 	.globl _PT2
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ET2
                                     64 	.globl _ES
                                     65 	.globl _ET1
                                     66 	.globl _EX1
                                     67 	.globl _ET0
                                     68 	.globl _EX0
                                     69 	.globl _P2_7
                                     70 	.globl _P2_6
                                     71 	.globl _P2_5
                                     72 	.globl _P2_4
                                     73 	.globl _P2_3
                                     74 	.globl _P2_2
                                     75 	.globl _P2_1
                                     76 	.globl _P2_0
                                     77 	.globl _SM0
                                     78 	.globl _SM1
                                     79 	.globl _SM2
                                     80 	.globl _REN
                                     81 	.globl _TB8
                                     82 	.globl _RB8
                                     83 	.globl _TI
                                     84 	.globl _RI
                                     85 	.globl _T2EX
                                     86 	.globl _T2
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _B
                                    112 	.globl _A
                                    113 	.globl _ACC
                                    114 	.globl _PSW
                                    115 	.globl _TH2
                                    116 	.globl _TL2
                                    117 	.globl _RCAP2H
                                    118 	.globl _RCAP2L
                                    119 	.globl _T2MOD
                                    120 	.globl _T2CON
                                    121 	.globl _IP
                                    122 	.globl _P3
                                    123 	.globl _IE
                                    124 	.globl _P2
                                    125 	.globl _SBUF
                                    126 	.globl _SCON
                                    127 	.globl _P1
                                    128 	.globl _TH1
                                    129 	.globl _TH0
                                    130 	.globl _TL1
                                    131 	.globl _TL0
                                    132 	.globl _TMOD
                                    133 	.globl _TCON
                                    134 	.globl _PCON
                                    135 	.globl _DPH
                                    136 	.globl _DPL
                                    137 	.globl _SP
                                    138 	.globl _P0
                                    139 	.globl _intr
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000C8   163 _T2CON	=	0x00c8
                           0000C9   164 _T2MOD	=	0x00c9
                           0000CA   165 _RCAP2L	=	0x00ca
                           0000CB   166 _RCAP2H	=	0x00cb
                           0000CC   167 _TL2	=	0x00cc
                           0000CD   168 _TH2	=	0x00cd
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000E0   171 _A	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0_0	=	0x0080
                           000081   179 _P0_1	=	0x0081
                           000082   180 _P0_2	=	0x0082
                           000083   181 _P0_3	=	0x0083
                           000084   182 _P0_4	=	0x0084
                           000085   183 _P0_5	=	0x0085
                           000086   184 _P0_6	=	0x0086
                           000087   185 _P0_7	=	0x0087
                           000088   186 _IT0	=	0x0088
                           000089   187 _IE0	=	0x0089
                           00008A   188 _IT1	=	0x008a
                           00008B   189 _IE1	=	0x008b
                           00008C   190 _TR0	=	0x008c
                           00008D   191 _TF0	=	0x008d
                           00008E   192 _TR1	=	0x008e
                           00008F   193 _TF1	=	0x008f
                           000090   194 _P1_0	=	0x0090
                           000091   195 _P1_1	=	0x0091
                           000092   196 _P1_2	=	0x0092
                           000093   197 _P1_3	=	0x0093
                           000094   198 _P1_4	=	0x0094
                           000095   199 _P1_5	=	0x0095
                           000096   200 _P1_6	=	0x0096
                           000097   201 _P1_7	=	0x0097
                           000090   202 _T2	=	0x0090
                           000091   203 _T2EX	=	0x0091
                           000098   204 _RI	=	0x0098
                           000099   205 _TI	=	0x0099
                           00009A   206 _RB8	=	0x009a
                           00009B   207 _TB8	=	0x009b
                           00009C   208 _REN	=	0x009c
                           00009D   209 _SM2	=	0x009d
                           00009E   210 _SM1	=	0x009e
                           00009F   211 _SM0	=	0x009f
                           0000A0   212 _P2_0	=	0x00a0
                           0000A1   213 _P2_1	=	0x00a1
                           0000A2   214 _P2_2	=	0x00a2
                           0000A3   215 _P2_3	=	0x00a3
                           0000A4   216 _P2_4	=	0x00a4
                           0000A5   217 _P2_5	=	0x00a5
                           0000A6   218 _P2_6	=	0x00a6
                           0000A7   219 _P2_7	=	0x00a7
                           0000A8   220 _EX0	=	0x00a8
                           0000A9   221 _ET0	=	0x00a9
                           0000AA   222 _EX1	=	0x00aa
                           0000AB   223 _ET1	=	0x00ab
                           0000AC   224 _ES	=	0x00ac
                           0000AD   225 _ET2	=	0x00ad
                           0000AF   226 _EA	=	0x00af
                           0000B0   227 _P3_0	=	0x00b0
                           0000B1   228 _P3_1	=	0x00b1
                           0000B2   229 _P3_2	=	0x00b2
                           0000B3   230 _P3_3	=	0x00b3
                           0000B4   231 _P3_4	=	0x00b4
                           0000B5   232 _P3_5	=	0x00b5
                           0000B6   233 _P3_6	=	0x00b6
                           0000B7   234 _P3_7	=	0x00b7
                           0000B0   235 _RXD	=	0x00b0
                           0000B1   236 _TXD	=	0x00b1
                           0000B2   237 _INT0	=	0x00b2
                           0000B3   238 _INT1	=	0x00b3
                           0000B4   239 _T0	=	0x00b4
                           0000B5   240 _T1	=	0x00b5
                           0000B6   241 _WR	=	0x00b6
                           0000B7   242 _RD	=	0x00b7
                           0000B8   243 _PX0	=	0x00b8
                           0000B9   244 _PT0	=	0x00b9
                           0000BA   245 _PX1	=	0x00ba
                           0000BB   246 _PT1	=	0x00bb
                           0000BC   247 _PS	=	0x00bc
                           0000BD   248 _PT2	=	0x00bd
                           0000C8   249 _T2CON_0	=	0x00c8
                           0000C9   250 _T2CON_1	=	0x00c9
                           0000CA   251 _T2CON_2	=	0x00ca
                           0000CB   252 _T2CON_3	=	0x00cb
                           0000CC   253 _T2CON_4	=	0x00cc
                           0000CD   254 _T2CON_5	=	0x00cd
                           0000CE   255 _T2CON_6	=	0x00ce
                           0000CF   256 _T2CON_7	=	0x00cf
                           0000C8   257 _CP_RL2	=	0x00c8
                           0000C9   258 _C_T2	=	0x00c9
                           0000CA   259 _TR2	=	0x00ca
                           0000CB   260 _EXEN2	=	0x00cb
                           0000CC   261 _TCLK	=	0x00cc
                           0000CD   262 _RCLK	=	0x00cd
                           0000CE   263 _EXF2	=	0x00ce
                           0000CF   264 _TF2	=	0x00cf
                           0000D0   265 _P	=	0x00d0
                           0000D1   266 _FL	=	0x00d1
                           0000D2   267 _OV	=	0x00d2
                           0000D3   268 _RS0	=	0x00d3
                           0000D4   269 _RS1	=	0x00d4
                           0000D5   270 _F0	=	0x00d5
                           0000D6   271 _AC	=	0x00d6
                           0000D7   272 _CY	=	0x00d7
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable register banks
                                    275 ;--------------------------------------------------------
                                    276 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        277 	.ds 8
                                    278 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        279 	.ds 8
                                    280 ;--------------------------------------------------------
                                    281 ; internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area DSEG    (DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable items in internal ram 
                                    286 ;--------------------------------------------------------
                                    287 ;--------------------------------------------------------
                                    288 ; Stack segment in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 	.area	SSEG
      000021                        291 __start__stack:
      000021                        292 	.ds	1
                                    293 
                                    294 ;--------------------------------------------------------
                                    295 ; indirectly addressable internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area ISEG    (DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area IABS    (ABS,DATA)
                                    302 	.area IABS    (ABS,DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; bit data
                                    305 ;--------------------------------------------------------
                                    306 	.area BSEG    (BIT)
                                    307 ;--------------------------------------------------------
                                    308 ; paged external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area PSEG    (PAG,XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XSEG    (XDATA)
      004000                        315 _intr::
      004000                        316 	.ds 2
                                    317 ;--------------------------------------------------------
                                    318 ; absolute external ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XABS    (ABS,XDATA)
                                    321 ;--------------------------------------------------------
                                    322 ; external initialized ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area XISEG   (XDATA)
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT0 (CODE)
                                    327 	.area GSINIT1 (CODE)
                                    328 	.area GSINIT2 (CODE)
                                    329 	.area GSINIT3 (CODE)
                                    330 	.area GSINIT4 (CODE)
                                    331 	.area GSINIT5 (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.area GSFINAL (CODE)
                                    334 	.area CSEG    (CODE)
                                    335 ;--------------------------------------------------------
                                    336 ; interrupt vector 
                                    337 ;--------------------------------------------------------
                                    338 	.area HOME    (CODE)
      002000                        339 __interrupt_vect:
      002000 02 20 19         [24]  340 	ljmp	__sdcc_gsinit_startup
      002003 02 20 75         [24]  341 	ljmp	_int0
      002006                        342 	.ds	5
      00200B 32               [24]  343 	reti
      00200C                        344 	.ds	7
      002013 02 20 89         [24]  345 	ljmp	_int1
                                    346 ;--------------------------------------------------------
                                    347 ; global & static initialisations
                                    348 ;--------------------------------------------------------
                                    349 	.area HOME    (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area GSINIT  (CODE)
                                    353 	.globl __sdcc_gsinit_startup
                                    354 	.globl __sdcc_program_startup
                                    355 	.globl __start__stack
                                    356 	.globl __mcs51_genXINIT
                                    357 	.globl __mcs51_genXRAMCLEAR
                                    358 	.globl __mcs51_genRAMCLEAR
                                    359 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  360 	ljmp	__sdcc_program_startup
                                    361 ;--------------------------------------------------------
                                    362 ; Home
                                    363 ;--------------------------------------------------------
                                    364 	.area HOME    (CODE)
                                    365 	.area HOME    (CODE)
      002016                        366 __sdcc_program_startup:
      002016 02 20 9F         [24]  367 	ljmp	_main
                                    368 ;	return from main will return to caller
                                    369 ;--------------------------------------------------------
                                    370 ; code
                                    371 ;--------------------------------------------------------
                                    372 	.area CSEG    (CODE)
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'int0'
                                    375 ;------------------------------------------------------------
                                    376 ;	irq.c:8: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    377 ;	-----------------------------------------
                                    378 ;	 function int0
                                    379 ;	-----------------------------------------
      002075                        380 _int0:
                           00000F   381 	ar7 = 0x0f
                           00000E   382 	ar6 = 0x0e
                           00000D   383 	ar5 = 0x0d
                           00000C   384 	ar4 = 0x0c
                           00000B   385 	ar3 = 0x0b
                           00000A   386 	ar2 = 0x0a
                           000009   387 	ar1 = 0x09
                           000008   388 	ar0 = 0x08
      002075 C0 E0            [24]  389 	push	acc
      002077 C0 82            [24]  390 	push	dpl
      002079 C0 83            [24]  391 	push	dph
                                    392 ;	irq.c:9: intr = 0;
      00207B 90 40 00         [24]  393 	mov	dptr,#_intr
      00207E E4               [12]  394 	clr	a
      00207F F0               [24]  395 	movx	@dptr,a
      002080 A3               [24]  396 	inc	dptr
      002081 F0               [24]  397 	movx	@dptr,a
                                    398 ;	irq.c:10: }
      002082 D0 83            [24]  399 	pop	dph
      002084 D0 82            [24]  400 	pop	dpl
      002086 D0 E0            [24]  401 	pop	acc
      002088 32               [24]  402 	reti
                                    403 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    404 ;	eliminated unneeded push/pop psw
                                    405 ;	eliminated unneeded push/pop b
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'int1'
                                    408 ;------------------------------------------------------------
                                    409 ;	irq.c:12: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    410 ;	-----------------------------------------
                                    411 ;	 function int1
                                    412 ;	-----------------------------------------
      002089                        413 _int1:
      002089 C0 E0            [24]  414 	push	acc
      00208B C0 82            [24]  415 	push	dpl
      00208D C0 83            [24]  416 	push	dph
                                    417 ;	irq.c:13: intr = 1;
      00208F 90 40 00         [24]  418 	mov	dptr,#_intr
      002092 74 01            [12]  419 	mov	a,#0x01
      002094 F0               [24]  420 	movx	@dptr,a
      002095 E4               [12]  421 	clr	a
      002096 A3               [24]  422 	inc	dptr
      002097 F0               [24]  423 	movx	@dptr,a
                                    424 ;	irq.c:14: }
      002098 D0 83            [24]  425 	pop	dph
      00209A D0 82            [24]  426 	pop	dpl
      00209C D0 E0            [24]  427 	pop	acc
      00209E 32               [24]  428 	reti
                                    429 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    430 ;	eliminated unneeded push/pop psw
                                    431 ;	eliminated unneeded push/pop b
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'main'
                                    434 ;------------------------------------------------------------
                                    435 ;i                         Allocated to registers r6 r7 
                                    436 ;------------------------------------------------------------
                                    437 ;	irq.c:16: void main(void) {
                                    438 ;	-----------------------------------------
                                    439 ;	 function main
                                    440 ;	-----------------------------------------
      00209F                        441 _main:
                           000007   442 	ar7 = 0x07
                           000006   443 	ar6 = 0x06
                           000005   444 	ar5 = 0x05
                           000004   445 	ar4 = 0x04
                           000003   446 	ar3 = 0x03
                           000002   447 	ar2 = 0x02
                           000001   448 	ar1 = 0x01
                           000000   449 	ar0 = 0x00
                                    450 ;	irq.c:19: intr = -1;
      00209F 90 40 00         [24]  451 	mov	dptr,#_intr
      0020A2 74 FF            [12]  452 	mov	a,#0xff
      0020A4 F0               [24]  453 	movx	@dptr,a
      0020A5 A3               [24]  454 	inc	dptr
      0020A6 F0               [24]  455 	movx	@dptr,a
                                    456 ;	irq.c:22: IT0 = 1;
                                    457 ;	assignBit
      0020A7 D2 88            [12]  458 	setb	_IT0
                                    459 ;	irq.c:23: IT1 = 1;
                                    460 ;	assignBit
      0020A9 D2 8A            [12]  461 	setb	_IT1
                                    462 ;	irq.c:25: EX0 = 1;
                                    463 ;	assignBit
      0020AB D2 A8            [12]  464 	setb	_EX0
                                    465 ;	irq.c:26: EX1 = 1;
                                    466 ;	assignBit
      0020AD D2 AA            [12]  467 	setb	_EX1
                                    468 ;	irq.c:27: EA = 1;
                                    469 ;	assignBit
      0020AF D2 AF            [12]  470 	setb	_EA
                                    471 ;	irq.c:29: for (i = 0; ; i++) {
      0020B1 7E 00            [12]  472 	mov	r6,#0x00
      0020B3 7F 00            [12]  473 	mov	r7,#0x00
      0020B5                        474 00104$:
                                    475 ;	irq.c:30: if (intr >= 0) break;
      0020B5 90 40 00         [24]  476 	mov	dptr,#_intr
      0020B8 E0               [24]  477 	movx	a,@dptr
      0020B9 FC               [12]  478 	mov	r4,a
      0020BA A3               [24]  479 	inc	dptr
      0020BB E0               [24]  480 	movx	a,@dptr
      0020BC FD               [12]  481 	mov	r5,a
      0020BD 30 E7 28         [24]  482 	jnb	acc.7,00103$
                                    483 ;	irq.c:31: printf("working %d...\r\n", i);
      0020C0 C0 07            [24]  484 	push	ar7
      0020C2 C0 06            [24]  485 	push	ar6
      0020C4 C0 06            [24]  486 	push	ar6
      0020C6 C0 07            [24]  487 	push	ar7
      0020C8 74 4A            [12]  488 	mov	a,#___str_0
      0020CA C0 E0            [24]  489 	push	acc
      0020CC 74 37            [12]  490 	mov	a,#(___str_0 >> 8)
      0020CE C0 E0            [24]  491 	push	acc
      0020D0 74 80            [12]  492 	mov	a,#0x80
      0020D2 C0 E0            [24]  493 	push	acc
      0020D4 12 21 50         [24]  494 	lcall	_printf
      0020D7 E5 81            [12]  495 	mov	a,sp
      0020D9 24 FB            [12]  496 	add	a,#0xfb
      0020DB F5 81            [12]  497 	mov	sp,a
      0020DD D0 06            [24]  498 	pop	ar6
      0020DF D0 07            [24]  499 	pop	ar7
                                    500 ;	irq.c:29: for (i = 0; ; i++) {
      0020E1 0E               [12]  501 	inc	r6
      0020E2 BE 00 D0         [24]  502 	cjne	r6,#0x00,00104$
      0020E5 0F               [12]  503 	inc	r7
      0020E6 80 CD            [24]  504 	sjmp	00104$
      0020E8                        505 00103$:
                                    506 ;	irq.c:34: EA = 0;
                                    507 ;	assignBit
      0020E8 C2 AF            [12]  508 	clr	_EA
                                    509 ;	irq.c:35: printf("got interrupt %d\r\n", intr);
      0020EA C0 04            [24]  510 	push	ar4
      0020EC C0 05            [24]  511 	push	ar5
      0020EE 74 5A            [12]  512 	mov	a,#___str_1
      0020F0 C0 E0            [24]  513 	push	acc
      0020F2 74 37            [12]  514 	mov	a,#(___str_1 >> 8)
      0020F4 C0 E0            [24]  515 	push	acc
      0020F6 74 80            [12]  516 	mov	a,#0x80
      0020F8 C0 E0            [24]  517 	push	acc
      0020FA 12 21 50         [24]  518 	lcall	_printf
      0020FD E5 81            [12]  519 	mov	a,sp
      0020FF 24 FB            [12]  520 	add	a,#0xfb
      002101 F5 81            [12]  521 	mov	sp,a
                                    522 ;	irq.c:36: (void)getchar();
      002103 12 21 93         [24]  523 	lcall	_getchar
                                    524 ;	irq.c:38: PCON |= 2;
      002106 43 87 02         [24]  525 	orl	_PCON,#0x02
                                    526 ;	irq.c:40: return;
                                    527 ;	irq.c:41: }
      002109 22               [24]  528 	ret
                                    529 	.area CSEG    (CODE)
                                    530 	.area CONST   (CODE)
                                    531 	.area CONST   (CODE)
      00374A                        532 ___str_0:
      00374A 77 6F 72 6B 69 6E 67   533 	.ascii "working %d..."
             20 25 64 2E 2E 2E
      003757 0D                     534 	.db 0x0d
      003758 0A                     535 	.db 0x0a
      003759 00                     536 	.db 0x00
                                    537 	.area CSEG    (CODE)
                                    538 	.area CONST   (CODE)
      00375A                        539 ___str_1:
      00375A 67 6F 74 20 69 6E 74   540 	.ascii "got interrupt %d"
             65 72 72 75 70 74 20
             25 64
      00376A 0D                     541 	.db 0x0d
      00376B 0A                     542 	.db 0x0a
      00376C 00                     543 	.db 0x00
                                    544 	.area CSEG    (CODE)
                                    545 	.area XINIT   (CODE)
                                    546 	.area CABS    (ABS,CODE)

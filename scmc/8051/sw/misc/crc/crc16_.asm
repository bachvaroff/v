.equ	cin, 0x0032
.equ	phex16, 0x0036
.equ	nl, 0x0048
.equ	icrc16, 0x005e
.equ	ucrc16, 0x0061
.equ	fcrc16, 0x0064

.equ	initial_l, 0xff
.equ	initial_h, 0xff
.equ	final_l, 0x00
.equ	final_h, 0x00
.equ	poly_l, 0x21
.equ	poly_h, 0x10

.org	0x2000

calc_crc16:
	mov	r6, #initial_l
	mov	r7, #initial_h
	lcall	icrc16
	
	mov	dptr, #0x0000
	mov	r6, #poly_l
	mov	r7, #poly_h
next_byte:
	movx	a, @dptr	
	lcall	ucrc16
	inc	dptr
	mov	a, dph
	cjne	a, #0x20, next_byte
	
	mov	r6, #final_l
	mov	r7, #final_h
	lcall	fcrc16
	
	mov	dpl, r2
	mov	dph, r3
	lcall	phex16
	lcall	nl
	lcall	cin
	orl	pcon, #2
	ljmp	0x0000

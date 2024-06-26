.equ	cin, 0x0036
.equ	cout, 0x003c
.equ	phex, 0x003f
.equ	phex16, 0x0045
.equ	crlf, 0x0057

.org	0x2000

main:
	mov	a, #0x40
	mov	p2, a
	mov	r0, #0x00
	mov	dptr, #0x4008
	
	mov	r1, #0x00
	mov	r2, #0xF5
floop:
	mov	a, r2
	movx	@r0, a
	add	a, #0x08
	movx	@dptr, a
	inc	r2
	
	inc	r0
	inc	dptr

	inc	r1
	cjne	r1, #0x08, floop

	mov	r0, #0x00
ploop:
	movx	a, @r0
	lcall	phex
	lcall	crlf
	inc	r0
	cjne	r0, #0x10, ploop
	
	lcall	cin
	
	orl	pcon, #2
; not reached
	ljmp	0x0000

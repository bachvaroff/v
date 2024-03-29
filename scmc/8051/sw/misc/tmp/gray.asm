.equ	cin, 0x0032
.equ	cout, 0x0030
.equ	phex, 0x0034
.equ	phex16, 0x0036
.equ	nl, 0x0048

.org	0x2000

main:
	mov	r7, #0
	
next:
	mov	a, r7
	lcall	phex
	
	mov	a, #' '
	lcall	cout
	
	mov	a, r7
	acall	genc
	lcall	phex
	
	mov	r6, a
	
	mov	a, #' '
	lcall	cout
	
	mov	a, r6
	acall	gdec
	lcall	phex
	
	lcall	nl
	
	inc	r7
	cjne	r7, #0, next
	
	lcall	cin
	
	orl	pcon, #2
; not reached
	ljmp	0x0000
	
;--------
genc:
	mov	r0, a
	clr	c
	rrc	a
	xrl	a, r0
	ret
;--------

;--------
gdec:
	mov	r0, a
gdec_shift_xor:
	clr	c
	rrc	a
	jz	gdec_out
	xch	a, r0
	xrl	a, r0
	xch	a, r0
	sjmp	gdec_shift_xor
gdec_out:
	xch	a, r0
	ret
;--------


#include <mcs51/at89x52.h>
#include <stdint.h>

#include "font8x8.h"

#define pm2_entry_cout 0x0030
#define pm2_entry_cin 0x0032

int putchar(int c) __naked {
	(void)c;
	__asm
		mov a, dpl
		ljmp pm2_entry_cout
	__endasm;
}

int getchar(void) __naked {
	__asm
		lcall pm2_entry_cin
		mov dpl, a
		mov dph, #0
		ret
	__endasm;
}

#ifdef GPO_PDATA
#define GPO_BASE_H	0xf0u
#define GPO_BASE_L	0x00u
#else
#define GPO_BASE	0xf000u
#endif
#define GPO_OE		6

#ifdef GPO_PDATA
__pdata __at(GPO_BASE_L) volatile uint8_t gpo[8];
#else
__xdata __at(GPO_BASE) volatile uint8_t gpo[8];
#endif
__idata const uint8_t dcol[8] = {
	0x80u, 0x40u, 0x20u, 0x10u, 0x08u, 0x04u, 0x02u, 0x01u
};
#define DISP_DATA	4
#define DISP_COL	5
__idata volatile uint8_t ddata[8];
__idata volatile uint8_t column;
__idata uint8_t OE;

#define CLEAR_GPO do { \
	gpo[GPO_OE] = 0x3fu; \
	gpo[0] = 0u; \
	gpo[1] = 0u; \
	gpo[2] = 0u; \
	gpo[3] = 0u; \
	gpo[4] = 0u; \
	gpo[5] = 0u; \
} while (0)

void init_gpo(void) {
	P1_7 = 0;
#ifdef GPO_PDATA
	P2 = GPO_BASE_H;
#endif
	CLEAR_GPO;
	
	return;
}

void clear_gpo(void) {
	CLEAR_GPO;
	
	return;
}

void init_intr(void) {
	TR0 = 0;
	ET0 = 1;
	EA  = 1;
	
	return;
}

void init_timer0(void) {
	TR0 = 0;
	TMOD = 0x01;
	TH0 = 0xf8;
	TL0 = 0x00;
	
	return;
}

void init_disp(void) {
	gpo[DISP_COL] = 0u;
	gpo[DISP_DATA] = 0u;
	OE = 0x0fu; /* 00_001111 */
	gpo[GPO_OE] = OE; /* 00_001111 */
	
	for (column = 0u; column < 8u; column++)
		ddata[column] = 0u;
	column = 0u;
	
	return;
}

void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
	register uint8_t t;
		
	t = column & 7u;
	gpo[DISP_COL] = 0u;
	gpo[DISP_DATA] = ddata[t];
	gpo[DISP_COL] = dcol[t];
	column++;
	
	TR0 = 0;
	TH0 = 0xf8;
	TL0 = 0x00;
	TR0 = 1;
	
	return;
}

inline void delay(void) {
	register uint8_t i, j;
	
	i = 0u;
	do {
		j = 0u;
		do {
			__asm
				nop
				nop
				nop
				nop
#if 0
				nop
				nop
				nop
				nop
#endif
			__endasm;
		} while ((++j) ^ 0x80u);
	} while ((++i) ^ 0x80u);
	
	return;
}

static const uint8_t *msg = "Go fuck yourselves you sons of bitches! ";

void main(void) {
	register uint8_t symbol, bit;
	register uint8_t i, j;
	
	init_gpo();
	clear_gpo();
	init_disp();	
	init_timer0();
	init_intr();
	TR0 = 1;
	
	for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
		if (!bit) {
			symbol = msg[i];
			if (!symbol) {
				i = 0u;
				symbol = msg[i];
			}
			i++;
			OE = 0x8fu;
		} else OE = 0x0fu;
		gpo[GPO_OE] = OE;
		
		delay();
		
		for (j = 0u; j < 8u; j++)
			ddata[j] = ((font8x8[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
	}
	
	__asm
		orl pcon, #2
	__endasm;
}


#include <mcs51/at89x52.h>

#include "libpm21.h"

char intr;

void int0(void) __interrupt IE0_VECTOR __using 1 {
	intr = 1;
}

unsigned char *base;
unsigned int off, col;

void main(void) {
	intr = 0;
	
	IT0 = 1;
	EX0 = 1;	
	EA = 1;
	
	P1_7 = 0; /* activate IO address space from 0xe000 to 0xffff */
	__asm
		nop
		nop
		nop
	__endasm;
	
	for (base = (unsigned char *)0u; !intr; base += 0x400u) {
		for (off = 0u; off < 0x400u; off += 0x20u) {
			print16x((unsigned int)base + off);
			printstr(" : ");
			for (col = 0u; col < 0x20u; col++) {
				print8x(base[off + col]);
				if (col == 0x1fu) {
					putchar('\r'); putchar('\n');
				} else putchar(' ');
			}
		}
		getchar();
		putchar('\r'); putchar('\n');
	}
	
	P1_7 = 1; /* deactivate IO address space from 0xe000 to 0xffff */
	__asm
		nop
		nop
		nop
	__endasm;
	
	PCON |= 2;
	
	return;
}


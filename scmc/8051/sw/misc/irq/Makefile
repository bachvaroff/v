SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21
ASLINKFLAGS=--model-large --stack-auto -L../../pm21 -llibpm21
ASMEMFLAGS=--code-loc 0x2000 --xram-loc 0x4000

%.rel: %.c
	sdcc -c $(SDCCCFLAGS) "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

all: irq

irq.rel: irq.c ../../pm21/libpm21.h

irq.ihx: irq.rel ../../pm21/libpm21.lib
	sdcc $(ASLINKFLAGS) $(ASMEMFLAGS) $^ -o "$@"

irq.hex: irq.ihx

irq: irq.hex
	cat "$@.mem"

clip: irq.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm


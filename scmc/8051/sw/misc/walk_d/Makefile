SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../..
ASLINKFLAGS=--model-large --stack-auto --code-loc 0x2000 --code-size 0x2300 --xram-loc 0x4300

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c "$<"

%.ihx: *.rel
	sdcc $(ASLINKFLAGS) $^

%.hex: %.ihx
	packihx "$<" > "$@"

.PRECIOUS: %.ihx

all: walk

walk: walk.hex
	cat "$@.mem"

clip: walk.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm


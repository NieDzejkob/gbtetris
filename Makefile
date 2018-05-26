all: tetris10.gb

%.2bpp: %.png
	rgbgfx -o $@ $<

main10.o: main.asm bank_*.asm
	rgbasm -o main10.o main.asm

tetris10.gb: main10.o
	rgblink -n tetris10.sym -m tetris10.map -tdp 255 -o $@ $<
	rgbfix -f lh -t TETRIS -n 0 -l 1 $@
	md5sum -c roms.md5

clean:
	rm -f tetris10.o tetris10.gb tetris10.sym tetris10.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +

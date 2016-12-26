BB=2600basic.sh

all: game

devdir:
	mkdir -p bin

helloworld.bas.bin:	clean devdir
	cd src; $(BB) helloworld.bas

helloplayer.bas.bin: clean devdir
	cd src; $(BB) helloplayer.bas

hellomissile.bas.bin: clean devdir
	cd src; $(BB) hellomissile.bas

game:	helloworld.bas.bin helloplayer.bas.bin hellomissile.bas.bin
	cp src/*.bin bin/

clean:
	rm -rf bin; \
	cd src; \
        rm -rf *.bin *.asm *.h *.list.txt *.symbol.txt *.bB \

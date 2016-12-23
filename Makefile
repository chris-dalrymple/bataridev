BB=2600basic.sh

all: game

devdir:
	mkdir -p bin

helloworld.bas.bin:	clean devdir
	cd src; $(BB) helloworld.bas

game:	helloworld.bas.bin
	cp src/*.bin bin/

clean:
	rm -rf bin; \
	cd src; \
        rm -rf *.bin *.asm *.h *.list.txt *.symbol.txt *.bB \

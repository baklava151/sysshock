OBJECTS := res.o lzw.o restypes.o resbuild.o resacc.o refacc.o resload.o resfile.o resmake.o

reslib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o reslib.o

all: $(OBJECTS)

%.o: %.c
ifeq ($(DBG),y)
	gcc -c -fpack-struct -g -m32 -I../../H -I../../LG/Source -Wno-unused-result -o $@ $<
else
	gcc -c -fpack-struct -O2 -m32 -I../../H -I../../LG/Source -Wno-unused-result -o $@ $<
endif

.PHONY: clean

clean:
	rm *.o

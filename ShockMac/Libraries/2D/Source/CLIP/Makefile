OBJECTS := clpclin.o clpf24.o clplin2.o clplin.o clpltab.o clpmono.o clpply.o clppoly.o clprect.o clpslin.o
INCLUDES := -I../../../H -I../../../LG/Source -I../GR -I../../../FIX/Source -I.. -I. -I../../PALETTE/Source -I./CLIP -I./'Flat 8' -I./GEN

cliplib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o cliplib.o

all: $(OBJECTS)

%.o: %.c
ifeq ($(DBG),y)
	gcc $(CFLAGS) $(INCLUDES) -o $@ $<
else
	gcc $(CFLAGS) $(INCLUDES) -o $@ $<
endif

.PHONY: clean

clean:
	rm *.o

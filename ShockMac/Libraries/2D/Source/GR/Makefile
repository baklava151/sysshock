OBJECTS := grd.o grilin.o grmalloc.o grnull.o gruilin.o
INCLUDES := -I../../../H -I../../../LG/Source -I../GR -I../../../FIX/Source -I.. -I. -I../../PALETTE/Source -I../CLIP -I../RSD

grlib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o grlib.o

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

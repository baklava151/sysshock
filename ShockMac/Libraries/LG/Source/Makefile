OBJECTS := memall.o LGmem.o dbg.o lgsprntf.o custom.o tmpalloc.o stack.o

reslib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o lglib.o

all: $(OBJECTS)

%.o: %.c
	gcc $(CFLAGS) -I../../FIX/Source -I../../LG/Source -I../../H -I../../INPUT/Source -o $@ $<

.PHONY: clean

clean:
	rm *.o

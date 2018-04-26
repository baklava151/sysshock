OBJECTS := memall.o LGmem.o dbg.o lgsprntf.o custom.o

reslib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o lglib.o

all: $(OBJECTS)

%.o: %.c
ifeq ($(DBG),y)
	gcc -c -fpack-struct=2 -g -m32 -I../../FIX/Source -I../../LG/Source -I../../H -I../../INPUT/Source -Wno-unused-result -o $@ $<
else
	gcc -c -fpack-struct=2 -O2 -m32 -I../../FIX/Source -I../../LG/Source -I../../H -I../../INPUT/Source -Wno-unused-result -o $@ $<
endif

.PHONY: clean

clean:
	rm *.o

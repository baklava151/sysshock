OBJECTS := rnd.o
ASM_OBJECTS := RndAsm.o

rndlib.o: $(OBJECTS) $(ASM_OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) $(ASM_OBJECTS) -o rndlib.o

all: $(OBJECTS) $(ASM_OBJECTS)

%.o: %.c
	gcc $(CFLAGS) -I../../H -I../../LG/Source -I../../FIX/Source -o $@ $<

%.o: %.s
	nasm -f elf -o $@ $<

.PHONY: clean

clean:
	rm *.o

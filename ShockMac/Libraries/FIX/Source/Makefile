OBJECTS := fix.o f_exp.o fix24.o fixsprnt.o fix_sqrt.o MakeTables.o atofix.o
ASM_OBJECTS := FixAsm.o

fixlib.o: $(OBJECTS) $(ASM_OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) $(ASM_OBJECTS) -o fixlib.o

all: $(OBJECTS) $(ASM_OBJECTS)

%.o: %.c
	gcc $(CFLAGS) -I../../H -I../../LG/Source -o $@ $<

%.o: %.s
	nasm -f elf -o $@ $<

.PHONY: clean

clean:
	rm *.o

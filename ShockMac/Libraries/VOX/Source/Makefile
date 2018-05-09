OBJECTS := vox2d.o vox3d.o voxinit.o

voxlib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o voxlib.o

all: $(OBJECTS)

%.o: %.c
	gcc $(CFLAGS) -I../../H -I../../LG/Source -o $@ $<

.PHONY: clean

clean:
	rm *.o

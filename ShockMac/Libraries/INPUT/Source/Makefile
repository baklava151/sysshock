OBJECTS := mouse.o kbcook.o kbMac.o

CFLAGS += `sdl2-config --cflags --libs`

inputlib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o inputlib.o

all: $(OBJECTS)

%.o: %.c
	gcc $(CFLAGS) -I../../H -I../../LG/Source -o $@ $<

.PHONY: clean

clean:
	rm *.o

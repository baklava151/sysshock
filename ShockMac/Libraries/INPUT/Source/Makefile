OBJECTS := mouse.o kbcook.o kbMac.o

inputlib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o inputlib.o

all: $(OBJECTS)

%.o: %.c
ifeq ($(DBG),y)
	gcc `sdl2-config --cflags --libs` -c -fpack-struct -g -m32 -I../../H -I../../LG/Source -Wno-unused-result -o $@ $<
else
	gcc `sdl2-config --cflags --libs` -c -fpack-struct -O2 -m32 -I../../H -I../../LG/Source -Wno-unused-result -o $@ $<
endif

.PHONY: clean

clean:
	rm *.o

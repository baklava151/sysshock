OBJECTS := alloc.o bitmap.o clip.o detail.o fov.o globalv.o instance.o interp.o light.o matrix.o points.o polygon.o slew.o tmap.o vector.o
INCLUDES := -I../../H -I../../LG/Source -I../../FIX/Source -I. -I../../PALETTE/Source -I../../2D/Source

all: $(OBJECTS)

3dlib.o: $(OBJECTS) $(ASM_OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o 2dlib.o

%.o: %.c
ifeq ($(DBG),y)
	gcc $(CFLAGS) $(INCLUDES) -o $@ $<
else
	gcc $(CFLAGS) $(INCLUDES) -o $@ $<
endif

.PHONY: clean

clean:
	rm *.o

OBJECTS := init.o chrsiz.o bitmap.o blend.o buffer.o canvas.o chain.o chnfuncs.o chrwid.o close.o cnvtab.o context.o detect.o devtab.o fcntab.o invtab.o lintab.o mode.o pal.o permap.o
ASM_OBJECTS := permap_asm.o
INCLUDES := -I../../H -I../../LG/Source -I./GR -I../../FIX/Source -I. -I../../PALETTE/Source -I./CLIP -I./'Flat 8'

2dlib.o: $(OBJECTS) $(ASM_OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) $(ASM_OBJECTS) -o 2dlib.o

all: $(OBJECTS) $(ASM_OBJECTS)

%.o: %.c
ifeq ($(DBG),y)
	gcc -c -fpack-struct -g -m32 $(INCLUDES) -Wno-unused-result -o $@ $<
else
	gcc -c -fpack-struct -O2 -m32 $(INCLUDES) -Wno-unused-result -o $@ $<
endif

%.o: %.s
ifeq ($(DBG),y)
	nasm -g -f elf $< -o $@
else
	nasm -f elf $< -o $@
endif

.PHONY: clean

clean:
	rm *.o

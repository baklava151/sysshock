OBJECTS := butarray.o curdrw.o cursors.o event.o gadgets.o hotkey.o menu.o monofont.o plain.o pushbutt.o qboxgadg.o region.o slab.o slider.o textgadg.o texttool.o tngbarry.o
OBJECTS += tng.o tngfont.o tngmenu.o tngplain.o tngpushb.o tngqbox.o tngslidr.o tngtextg.o uires.o vmouse.o
CFLAGS += `sdl-config --cflags --libs`

uilib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o uilib.o

all: $(OBJECTS)

%.o: %.c
	gcc $(CFLAGS) -I. -I../../H -I../../LG/Source -I../../DSTRUCT/Source -I../../2D/Source -I../../FIX/Source -I../../INPUT/Source -I../../RES/Source -o $@ $<

.PHONY: clean

clean:
	rm *.o

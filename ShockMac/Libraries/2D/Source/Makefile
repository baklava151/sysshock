OBJECTS := init.o chrsiz.o bitmap.o blend.o buffer.o canvas.o chain.o chnfuncs.o chrwid.o close.o cnvtab.o context.o detect.o devtab.o fcntab.o invtab.o lintab.o mode.o pal.o permap.o persetup.o pertol.o pixfill.o rgb.o screen.o
OBJECTS += sscrn.o statestk.o strnsiz.o strscl.o strsiz.o struscl.o strwid.o strwrap.o svgainit.o tempbm.o temptm.o tluctab.o valloc.o vtab.o wirpoly.o
#ASM_OBJECTS := permaploop.o
INCLUDES := -I../../H -I../../LG/Source -I./GR -I../../FIX/Source -I. -I../../PALETTE/Source -I./CLIP -I./Flat8 -I./GEN

SUBDIRS := CLIP Flat8 GEN GR RSD

all: $(OBJECTS) $(ASM_OBJECTS) subdirs

2dlib.o: $(OBJECTS) $(ASM_OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) $(ASM_OBJECTS) -o 2dlib.o

%.o: %.c
ifeq ($(DBG),y)
	gcc $(CFLAGS) $(INCLUDES) -o $@ $<
else
	gcc $(CFLAGS) $(INCLUDES) -o $@ $<
endif

%.o: %.s
ifeq ($(DBG),y)
	nasm -g -f elf $< -o $@
else
	nasm -f elf $< -o $@
endif

.PHONY: clean subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

clean:
	rm *.o

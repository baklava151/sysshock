OBJECTS := genbox.o genchfl8.o genchr.o gencirc.o genclin.o gencnv.o gencwlin.o gendisk.o genel.o general.o genf24.o genfl8.o genfl8c.o gengfl8.o genhfl8.o genhlin.o genlin.o genmono.o genov.o
OBJECTS += genpix.o genrect.o genrsd8.o genrsdbm.o genrsdtm.o genslin.o genstr.o gente.o gentl8.o gentm.o genuchr.o genuclin.o genuhlin.o genulin.o genuslin.o genustr.o genuvlin.o genvcply.o
OBJECTS += genvlin.o genvpoly.o genvrect.o genwclin.o genwlin.o
INCLUDES := -I../../../H -I../../../LG/Source -I../GR -I../../../FIX/Source -I.. -I. -I../../PALETTE/Source -I../CLIP -I../RSD

genlib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o genlib.o

all: $(OBJECTS)

%.o: %.c
ifeq ($(DBG),y)
	gcc $(CFLAGS) $(INCLUDES) -o $@ $<
else
	gcc $(CFLAGS) $(INCLUDES) -o $@ $<
endif

.PHONY: clean

clean:
	rm *.o

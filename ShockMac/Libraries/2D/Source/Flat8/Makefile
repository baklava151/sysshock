OBJECTS := fl8bl.o fl8bldbl.o fl8chfl8.o fl8clear.o fl8clin.o fl8cnv.o fl8cop.o fl8cply.o fl8ctp.o fl8dbl.o fl8f.o fl8fl8.o fl8fl8c.o fl8fl8m.o fl8fltr2.o fl8ft.o fl8g24.o fl8gfl8.o fl8gpix.o fl8hfl8.o fl8hlin.o
OBJECTS += fl8lf.o fl8lin.o fl8ll.o fl8lnop.o fl8lop.o fl8lp.o fl8ltp.o fl8lw.o fl8mono.o fl8mscl.o fl8nl.o fl8ns.o fl8ntrp2.o fl8opl.o fl8p24.o fl8p.o fl8pix.o fl8ply.o fl8pnt.o fl8rect.o fl8row.o fl8rsd8.o fl8s.o
OBJECTS += fl8slin.o fl8sply.o fl8sub.o fl8tl8.o fl8tpl.o fl8tsmap.o fl8vlin.o fl8w.o fl8wclin.o fl8wlin.o
INCLUDES := -I../../../H -I../../../LG/Source -I../GR -I../../../FIX/Source -I.. -I. -I../../PALETTE/Source -I../CLIP -I../GEN -I../RSD

flat8lib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o flat8lib.o

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

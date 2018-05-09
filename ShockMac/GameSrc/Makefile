OBJECTS := ai.o amap.o amaploop.o ammomfd.o audiolog.o
INCLUDES := -I../MacSrc -I../Libraries/RES/Source -I../Libraries/INPUT/Source -I../Libraries/2D/Source -I../Libraries/DSTRUCT/Source -IHeaders -I../Libraries/LG/Source -I../Libraries/H -I../Libraries/FIX/Source
INCLUDES += -I../Libraries/EDMS/Source -I../Libraries/UI/Source -I../ -I../Libraries/SND/Source -I../Libraries/2D/Source/GR

all: $(OBJECTS)

%.o: %.c
	gcc $(CFLAGS) $(INCLUDES) -o $@ $<

.PHONY: clean

clean:
	rm *.o

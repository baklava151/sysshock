OBJECTS := # plain.o region.o uires.o event.o

all: $(OBJECTS)

%.o: %.c
	gcc -m32 -O2 -c -I../../LG/Source -I../../H -I../../INPUT/Source -I../../DSTRUCT/Source -I../../2D/Source -I../../FIX/Source -I../../RES/Source -o $@ $<

.PHONY: clean

clean:
	rm *.o

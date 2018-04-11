OBJECTS := palette.o

all: $(OBJECTS)

%.o: %.c
	gcc -O2 -c -I../../2D/Source/ -I../../FIX/Source -I../../H -I../../3D/Source -I../../LG/Source -o $@ $<

.PHONY: clean

clean:
	rm *.o

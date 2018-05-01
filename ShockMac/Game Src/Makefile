OBJECTS := ai.o

all: $(OBJECTS)

%.o: %.c
	gcc -m32 -O2 -c -I../Mac\ Src/ -I../Libraries/RES/Source -I../Libraries/INPUT/Source -I../Libraries/2D/Source -I../Libraries/DSTRUCT/Source -IHeaders -I../Libraries/LG/Source -I../Libraries/H -I../Libraries/FIX/Source -I../Libraries/EDMS/Source -I../Libraries/UI/Source -o $@ $<

.PHONY: clean

clean:
	rm *.o

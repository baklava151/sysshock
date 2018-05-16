OBJECTS := fixpp.o

fixpplib.o: $(OBJECTS)
	ld -m elf_i386 -r $(OBJECTS) -o fixpplib.o

all: $(OBJECTS)

%.o: %.cc
	g++ -c -m32 -Wno-unused-result -I../../H -I../../LG/Source -I../../FIX/Source -Wno-return-local-addr -o $@ $<

.PHONY: clean

clean:
	rm *.o

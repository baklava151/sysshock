OBJECTS := resfile.o

all: $(OBJECTS)

%.o: %.c
	gcc -m32 -O2 -c -I../../LG/Source -I../../H -D__RESTYPES_H -Wno-unused-result -o $@ $<

.PHONY: clean

clean:
	rm *.o

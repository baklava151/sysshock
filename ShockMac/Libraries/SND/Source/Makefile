OBJECTS := dig_init.o dig_ops.o master.o mid_init.o mid_ops.o snd_util.o

all: $(OBJECTS)

%.o: %.c
	gcc -O2 -c -o $@ $<

.PHONY: clean

clean:
	rm *.o

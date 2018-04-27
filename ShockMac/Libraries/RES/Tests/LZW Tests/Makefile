OBJECTS := lzwtest

all: $(OBJECTS)

ifeq ($(DBG),y)
%: %.c
	gcc -g -m32 -I../../../H -I../../../LG/Source -I../../Source -Wno-unused-result -o $@ $< ../../Source/reslib.o ../../../LG/Source/lglib.o
else
%: %.c
	gcc -O2 -m32 -I../../../H -I../../../LG/Source -I../../Source -Wno-unused-result -o $@ $< ../../Source/reslib.o ../../../LG/Source/lglib.o
endif

.PHONY: clean

clean:
	rm $(OBJECTS)

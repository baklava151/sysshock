OBJECTS := restest

all: $(OBJECTS)

ifeq ($(DBG),y)
%: %.c
	gcc -g -fpack-struct -m32 -I../../../H -I../../../LG/Source -I../../Source -Wno-unused-result -o $@ $< ../../Source/reslib.o ../../../LG/Source/lglib.o
else
%: %.c
	gcc -O2 -fpack-struct -m32 -I../../../H -I../../../LG/Source -I../../Source -Wno-unused-result -o $@ $< ../../Source/reslib.o ../../../LG/Source/lglib.o
endif

.PHONY: clean

clean:
	rm $(OBJECTS)

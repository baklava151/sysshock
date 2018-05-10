CFLAGS := -c -fpack-struct -m32 -Wno-unused-result
export CFLAGS
LIBDIR := ShockMac/Libraries
.LIBS := 2D/Source 3D/Source RES/Source VOX/Source LG/Source INPUT/Source PALETTE/Source UI/Source
LIBS = $(addprefix $(LIBDIR)/, $(.LIBS))

ifeq ($(DBG),y)
        CFLAGS += -g
else
	CFLAGS += -O2
endif

all: subdirs

.PHONY: clean subdirs $(LIBS)

subdirs: $(LIBS)

$(LIBS):
	$(MAKE) -C $@

clean:
	ls

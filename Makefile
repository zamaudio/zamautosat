PREFIX ?= /usr/local
LIBDIR ?= lib
OPTIMIZATIONS ?= -O3 -ffast-math

all: zamautosat.so

zamautosat.so:
	$(CXX) $(OPTIMIZATIONS) -fPIC -shared -Dmydsp=zamautosat zamautosat.dsp.cpp -o zamautosat.so

install:
	install -d $(DESTDIR)$(PREFIX)/$(LIBDIR)/ladspa
	install zamautosat.so -t $(DESTDIR)$(PREFIX)/$(LIBDIR)/ladspa

uninstall:
	rm -f $(DESTDIR)$(PREFIX)$(LIBDIR)/ladspa/zamautosat.so

clean:
	rm -f zamautosat.so

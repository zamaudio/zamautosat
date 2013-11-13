PREFIX=/usr/local

all: zamautosat.so

zamautosat.so:
	g++ -O3 -ffast-math -fPIC -shared -Dmydsp=zamautosat -I/usr/lib zamautosat.dsp.cpp -o zamautosat.so

install:
	mkdir -p $(DESTDIR)$(PREFIX)/lib/ladspa
	cp zamautosat.so $(DESTDIR)$(PREFIX)/lib/ladspa

uninstall:
	rm -f $(PREFIX)/lib/ladspa/zamautosat.so

clean:
	rm -f zamautosat.so

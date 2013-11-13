PREFIX=/usr/local

all: zamautosat.so

zamautosat.so:
	g++ -O3 -ffast-math -fPIC -shared -Dmydsp=zamautosat -I/usr/lib zamautosat.dsp.cpp -o zamautosat.so

install:
	install -d $(DESTDIR)$(PREFIX)/lib/ladspa
	install zamautosat.so $(DESTDIR)$(PREFIX)/lib/ladspa

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/lib/ladspa/zamautosat.so

clean:
	rm -f zamautosat.so

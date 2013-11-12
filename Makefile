PREFIX=/usr

all: zamautosat.so

zamautosat.so:
	g++ -O3 -mfpmath=sse -msse -msse2 -ffast-math -fPIC -shared -Dmydsp=zamautosat -I/usr/lib zamautosat.dsp.cpp -o zamautosat.so

install:
	mkdir -p $(PREFIX)/lib/ladspa
	cp zamautosat.so $(PREFIX)/lib/ladspa

uninstall:
	rm -f $(PREFIX)/lib/ladspa/zamautosat.so

clean:
	rm -f zamautosat.so

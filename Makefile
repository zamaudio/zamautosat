all: ladspa/zamautosat.so

ladspa/zamautosat.so: ladspa/zamautosat.dsp.cpp
	./compileladspa zamautosat.dsp

ladspa/zamautosat.dsp.cpp:
	./genladspa zamautosat.dsp

install:
	mkdir -p /usr/local/lib/ladspa
	cp -a ladspa/zamautosat.so /usr/local/lib/ladspa

uninstall:
	rm -f /usr/local/lib/ladspa/zamautosat.so

clean:
	rm -f ladspa/zamautosat.so

all: lv2/zamautosat.lv2/zamautosat.ttl ladspa/zamautosat.so

ladspa: ladspa/zamautosat.so

lv2: lv2/zamautosat.lv2/zamautosat.ttl

lv2/zamautosat.lv2/zamautosat.ttl: lv2/zamautosat.cpp
	./compilelv2 zamautosat.dsp

lv2/zamautosat.cpp:
	./genlv2 zamautosat.dsp	

ladspa/zamautosat.so: ladspa/zamautosat.dsp.cpp
	./compileladspa zamautosat.dsp

ladspa/zamautosat.dsp.cpp:
	./genladspa zamautosat.dsp

install:
	mkdir -p /usr/local/lib/lv2
	mkdir -p /usr/local/lib/ladspa
	cp -a lv2/zamautosat.lv2 /usr/local/lib/lv2
	cp -a ladspa/zamautosat.so /usr/local/lib/ladspa
	
uninstall:
	rm -fr /usr/local/lib/lv2/zamautosat.lv2
	rm -f /usr/local/lib/ladspa/zamautosat.so

clean:
	rm -fr lv2/zamautosat.lv2
	rm -f ladspa/zamautosat.so

distclean:
	rm -fr lv2/*
	rm -fr ladspa/*

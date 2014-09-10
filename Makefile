MKDARTS = /usr/local/libexec/darts/mkdarts

all: dump_darts

darts.h: /usr/local/include/darts.h darts.patch
	cp $< .
	patch -p1 < darts.patch

dump_darts.o: dump_darts.cc darts.h

dump_darts: dump_darts.o
	g++ -O2 $< -o $@

words.darts: words.txt
	$(MKDARTS) $< $@

words.dump: dump_darts words.darts
	./dump_darts words.darts > $@

words.diff: words.txt words.dump
	diff -u $^ > $@

check: words.diff
	if [ -e $< -a ! -s $< ]; then echo ok ; else echo ng ; fi

install: dump_darts
	cp $< /usr/local/bin/	

clean:
	rm -f *~ *.o dump_darts words.darts words.dump words.diff darts.h


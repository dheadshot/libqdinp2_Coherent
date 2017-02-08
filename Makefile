CC = gcc


distrib/libqdinp2.a: tmp/qdinpm.o
	ar rc distrib/libqdinp2.a tmp/qdinpm.o
	ranlib distrib/libqdinp2.a
	cp source/qdinpm.h distrib/qdinp2.h

tmp/qdinpm.o: source/qdinpm.c source/qdinpm.h
	${CC} ${CFLAGS} -c source/qdinpm.c
	mv qdinpm.o tmp/

clean: tmp/qdinpm.o
	cd tmp; rm -f qdinpm.o

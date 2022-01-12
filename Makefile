BUILDDIR := build/
NAME     := ipvfoobar
VERSION  := 1.0

all: prepare firefox chrome

prepare:
	mkdir -p build

firefox: prepare
	rm -f ${BUILDDIR}${NAME}-${VERSION}.xpi
	cd src && zip -9r ../${BUILDDIR}${NAME}-${VERSION}.xpi *

chrome: prepare
	rm -f ${BUILDDIR}${NAME}-${VERSION}.zip
	zip -9r ${BUILDDIR}${NAME}-${VERSION}.zip src

clean:
	rm -rf ${BUILDDIR}

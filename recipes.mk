build:
	if [ ! -d build ]; then mkdir build; fi

DEPS=$(shell ls -1 *.tex ./*.bib)

%.pdf: %.tex build ${DEPS}
	./compile $*

.PHONY: clean Clean

clean:
	rm -rf build

Clean: clean
	rm -f ${MAIN}.pdf

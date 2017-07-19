PRJ = org1a org tpc sponsors

BUILD = pdflatex ${EXTRA}

.PHONY: all view clean

all : $(PRJ:=.pdf)

%.pdf : %.tex
	${BUILD} $<

clean:
	rm -Rf latex.out
	rm -f *.toc *.aux *.bbl *.blg *.log *~* *.bak *.out *synctex.gz $(PRJ:=.pdf)

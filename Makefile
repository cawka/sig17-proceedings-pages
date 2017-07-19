PRJ = org tpc sponsors

BUILD = pdflatex ${EXTRA}

.PHONY: all view clean

all : $(PRJ:=.pdf)

%_in.tex : data/%.yml
	test -f $< && ruby generate.rb $< > $@

%.pdf : %.tex %_in.tex
	${BUILD} $<

sponsors.pdf : sponsors.tex
	${BUILD} $<

clean:
	rm -Rf latex.out
	rm -f *.toc *.aux *.bbl *.blg *.log *~* *.bak *.out *synctex.gz $(PRJ:=.pdf) $(PRJ:=_in.tex)

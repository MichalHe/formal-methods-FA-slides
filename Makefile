SLIDES=slides

all: $(SLIDES).pdf

pdf: $(SLIDES).pdf

$(SLIDES).pdf: clean
	pdflatex $(SLIDES)
	-bibtex $(SLIDES)
	pdflatex $(SLIDES)
	pdflatex $(SLIDES)

clean:
	rm -f *.dvi *.log $(SLIDES).blg $(SLIDES).bbl $(SLIDES).toc *.aux $(SLIDES).out $(SLIDES).lof $(SLIDES).ptc
	rm -f $(SLIDES).pdf
	rm -f *~

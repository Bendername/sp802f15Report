OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.pdf *.log *.tdo
MAIN = Main

pdflatex: $(MAIN).tex
	@echo "-- compiling"
	@pdflatex --synctex=1 -halt-on-error $(MAIN) | grep "Fatal"
	@pdflatex --synctex=1 -halt-on-error $(MAIN) | grep "Fatal"
	@pdflatex --synctex=1 -halt-on-error $(MAIN) | grep "Fatal"
	@echo "-- running bibtex"
	@bibtex $(MAIN)
	@pdflatex --synctex=1 -halt-on-error $(MAIN) | grep "Fatal"

lite: $(MAIN).tex
	pdflatex --synctex=1 -halt-on-error $(MAIN) | grep "Fatal"

toc: $(MAIN).tex
	pdflatex --synctex=1 -halt-on-error $(MAIN) | grep "Fatal"
	pdflatex --synctex=1 -halt-on-error $(MAIN) | grep "Fatal"
	pdflatex --synctex=1 -halt-on-error $(MAIN) | grep "Fatal"

clean:
	rm -f $(OTHER)

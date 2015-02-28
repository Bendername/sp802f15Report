OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.pdf *.log *.tdo
MAIN = Main

pdflatex: $(MAIN).tex
	pdflatex --synctex=1 $(MAIN)
	pdflatex --synctex=1 $(MAIN)
	pdflatex --synctex=1 $(MAIN)
	bibtex $(MAIN)
	pdflatex --synctex=1 $(MAIN)

lite: $(MAIN).tex
	pdflatex $(MAIN)

toc: $(MAIN).tex
	pdflatex $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

clean:
	rm -f $(OTHER)

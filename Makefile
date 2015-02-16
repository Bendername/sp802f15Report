OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.pdf *.log *.tdo
MAIN = Main.tex

pdflatex: $(MAIN)
	pdflatex --synctex=1 Main.tex
	bibtex Main
	pdflatex --synctex=1 Main.tex
	pdflatex --synctex=1 Main.tex
	pdflatex --synctex=1 Main.tex

lite: $(MAIN)
	pdflatex Main.tex

toc: $(MAIN)
	pdflatex Main.tex
	pdflatex Main.tex
	pdflatex Main.tex

clean:
	rm -f $(OTHER)

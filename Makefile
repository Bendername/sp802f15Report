OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.pdf *.log *.tdo

pdflatex: master.tex
	pdflatex --synctex=1 master.tex
	bibtex master
	pdflatex --synctex=1 master.tex
	pdflatex --synctex=1 master.tex
	pdflatex --synctex=1 master.tex

lite: master.tex
	pdflatex master.tex

toc: master.tex
	pdflatex master.tex
	pdflatex master.tex
	pdflatex master.tex

clean:
	rm -f $(OTHER)

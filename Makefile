OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.pdf *.log *.tdo
MAIN = Main

pdflatex: $(MAIN).tex
	@echo "-- compiling"
	@pdflatex -halt-on-error $(MAIN) | grep "Fatal" || true
	@pdflatex -halt-on-error $(MAIN) | grep "Fatal" || true
	@pdflatex -halt-on-error $(MAIN) | grep "Fatal" || true
	@echo "-- running bibtex"
	@bibtex $(MAIN)
	@pdflatex -halt-on-error $(MAIN) | grep "Fatal" || true

lite: $(MAIN).tex
	@pdflatex -halt-on-error $(MAIN) | grep "Fatal" || true

toc: $(MAIN).tex
	@pdflatex -halt-on-error $(MAIN) | grep "Fatal" || true
	@pdflatex -halt-on-error $(MAIN) | grep "Fatal" || true
	@pdflatex -halt-on-error $(MAIN) | grep "Fatal" || true

clean:
	@echo "-- cleaning shit up"
	@rm -f $(OTHER)

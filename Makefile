.PHONY: clean

lrec-ndt_final.pdf: lrec-ndt_final.tex ndt.bib
	pdflatex $<
	bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

lrec-ndt.pdf: lrec-ndt.tex ndt.bib
	pdflatex $<
	bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

clean:
	rm -f lrec-ndt{,_final}.{aux,bbl,blg,log,pdf}

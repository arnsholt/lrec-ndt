lrec-ndt.pdf: lrec-ndt.tex ndt.bib
	pdflatex $<
	bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

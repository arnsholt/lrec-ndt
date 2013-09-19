lrec-ndt.pdf: lrec-ndt.tex
	pdflatex $<
	bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

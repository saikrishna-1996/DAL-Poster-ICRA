# Name of thesis (without postfix)
dname=poster

#all: $(name).pdf $(name).ps
all: $(dname).pdf

#$(name).pdf: $(dname).tex $(bname).bib $(name).ps
$(dname).pdf: $(dname).pdf $(dname).tex
	pdflatex $(dname)
	bibtex $(dname)
	pdflatex $(dname)
	pdflatex $(dname)
	## figures in PDF-format
	#ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -dSubsetFonts=true $(dname).ps $(dname).pdf

#$(name).ps: $(dname).tex
#	# figures in EPS-format
#	latex $(dname)
#	dvips -o $(dname).ps -G0 -Ppdf $(dname)

clean:
	rm -f $(dname).ps $(dname).aux $(dname).bbl $(dname).blg $(dname).dvi \
	$(dname).log $(dname).out $(dname).toc $(dname).lof \
	$(dname).lot $(dname).pdf a0header.ps

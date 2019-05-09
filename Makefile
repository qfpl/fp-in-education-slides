ALL_TEX = education.tex sicp.tex htdp.tex wadler.tex now.tex
EDUCATION = education.pdf
PDFS = $(EDUCATION)
LATEX = pdflatex -shell-escape
SPELL = aspell check -len_GB

.PHONY: all
all: education

.PHONY: education
education: $(EDUCATION)

.PHONY: open
open: education
	evince $(EDUCATION)

education.pdf: $(ALL_TEX) #images/*
	$(LATEX) $<
	$(LATEX) $<
	$(LATEX) $<

re: clean all

.PHONY: spell
spell: $(ALL_TEX)
	for x in $(ALL_TEX) ; do \
	  $(SPELL) $$x ; \
	done

.PHONY: clean
clean:
	rm -rf $(PDFS) *.loc *.toc *.log *.idx *.aux *.out *.nav *.snm *.vrb *.blg *.bbl *.pdf_tex


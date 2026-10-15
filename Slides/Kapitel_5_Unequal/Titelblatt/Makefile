# Disable the default rules
MAKEFLAGS 	+= --no-builtin-rules --no-builtin-variables

# Document
DOC			:= title_page

# Tools
RSCRIPT		:= Rscript
PDFLATEX	:= pdflatex
BIBTEX		:= bibtex
RM 			:= rm -f
VIEWER		:= okular

# Targets
all: pdflatex

# Pdflatex
pdflatex: $(DOC).tex
	$(PDFLATEX) $(DOC).tex

# pdflatex second pass
pdflatex2: $(DOC).tex
	$(PDFLATEX) $(DOC).tex

# bibtex
bibtex: $(DOC).aux
	$(BIBTEX) $(DOC)

# View document
view:
	$(VIEWER) $(DOC).pdf &

# Housekeeping
.PHONY:
clean:
	$(RM) *.toc *.nav *.log *.snm *.out *.aux *.vrb *.blg *.bbl

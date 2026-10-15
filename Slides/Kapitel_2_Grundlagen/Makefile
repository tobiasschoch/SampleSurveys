# Disable the default rules
MAKEFLAGS 	+= --no-builtin-rules --no-builtin-variables

# Document
DOC			:= 2_Foundations
OUTPUT		:= $(DOC)_final
TITLEPAGE   := Titelblatt/title_page

# Tools
RSCRIPT		:= Rscript
PDFLATEX	:= pdflatex
BIBTEX		:= bibtex
RM 			:= rm -f
VIEWER		:= okular

# Targets
all: pdflatex bibtex pdflatex2

update: pdflatex

title: add_titlepage

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

# Add title page)
add_titlepage:
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
	-sOutputFile=$(OUTPUT).pdf $(TITLEPAGE).pdf $(DOC).pdf

# Housekeeping
.PHONY:
clean:
	$(RM) *.toc *.nav *.log *.snm *.out *.aux *.vrb *.blg *.bbl


 # \ $(DOC).pdf

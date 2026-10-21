# Disable the default rules
MAKEFLAGS	+= --no-builtin-rules --no-builtin-variables

# Tools
SWEAVE		:= R CMD Sweave
PDFLATEX	:= latexmk -pdf
RM			:= rm -f

# Files
RNW_FILES	:= $(wildcard problems/*.Rnw)
PROBLEM_TEX	:= $(RNW_FILES:.Rnw=.tex)

# Main targets
.PHONY: all pdflatex sweave clean

all: problem_set_4.pdf problem_set_4_solutions.pdf

pdflatex: all

# Process all Sweave files
sweave: $(PROBLEM_TEX)

problems/%.tex: problems/%.Rnw
	cd problems && $(SWEAVE) $*.Rnw

# Compile problem set
problem_set_4.pdf: problem_set_4.tex problem_set_source.TEX $(PROBLEM_TEX)
	$(PDFLATEX) problem_set_4.tex

# Compile solutions
problem_set_4_solutions.pdf: problem_set_4_solutions.tex problem_set_source.TEX $(PROBLEM_TEX)
	$(PDFLATEX) problem_set_4_solutions.tex

# Housekeeping
clean:
	$(RM) *.log *.aux *.fdb_latexmk *.fls *.toc *.nav *.snm *.out *.slnc
	$(RM) problems/*.log problems/*.aux


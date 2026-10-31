LLMK = llmk
FLAGS = --quiet --silent
SRC = $(wildcard *.tex)
PDFS = $(SRC:.tex=.pdf)

DEPS = $(shell find . -mindepth 2 -type f 2>/dev/null)

EXTRA_CLEAN = *.synctex* *-blx.bib *.run.xml *.nav *.snm *.vrb *.fdb_latexmk *.log

.PHONY: all compile clean mrproper recompile

all: $(PDFS)

%.pdf: %.tex $(DEPS)
	@$(LLMK) $(FLAGS) $<
	@$(LLMK) --quiet --clean $<
	@rm -f $(EXTRA_CLEAN)

clean:
	@for f in $(SRC); do \
		$(LLMK) --quiet --clean $$f ; \
	done
	@rm -f $(EXTRA_CLEAN)

mrproper: clean
	@for f in $(SRC); do \
		$(LLMK) --quiet --clobber $$f ; \
	done
	@rm -f $(PDFS) $(EXTRA_CLEAN)
	@latexmk -C > /dev/null

recompile: mrproper all clean

# vim: set ft=make noet ts=8 sw=8 :

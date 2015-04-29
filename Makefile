#Commands
TEX = pdflatex -interaction=nonstopmode

#Files
TEXSRC = $(wildcard *.tex)
PDF = $(TEXSRC:.tex=.pdf)

#Commands + arguments
TEXCOMPILE = $(TEX) $(TEXSRC)

#Windows
ifeq ($(OS),Windows_NT)
	SHELL = C:/Windows/System32/cmd.exe
endif

all : clean $(PDF)

$(PDF) : $(TEXSRC) $(TEXSUBSRC)
	$(TEXCOMPILE)
	$(TEXCOMPILE)
	$(TEXCOMPILE)

clean :
	rm -rf *.tdo *.idx *.nlo *.log *.lof *.lot *.bbl *.blg *.thm *.pdf *.aux *.backup *.bak *.toc *.out *.ilg *.nls *~ .*~ img/*eps-converted-to.pdf

distclean: clean
	rm -rf $(PDF)

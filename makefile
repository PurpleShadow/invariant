ARTICLE=JSCC2016-v1
ARTICLE_SRC=$(ARTICLE).tex

all:article

article:$(ARTICLE).pdf

$(ARTICLE).pdf: $(ARTICLE_SRC)
	pdflatex $(ARTICLE).tex
	bibtex  $(ARTICLE).aux
	pdflatex $(ARTICLE).tex
	pdflatex $(ARTICLE).tex

clean:
	rm -f *.aux *.toc *.lon *.lor *.lof *.ilg *.idx *.ind *.out *.log *.exa
	rm -f *.nav *.snm *.bbl *.blg
	rm -f $(ARTICLE).pdf

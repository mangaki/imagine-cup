equipe:
	pandoc -t latex equipe-en.md -o content-equipe.tex
	xelatex equipe
	open equipe.pdf

pres:
	pandoc -t latex presentation-en.md -o content-presentation.tex
	xelatex presentation
	open presentation.pdf

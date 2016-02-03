equipe:
	pandoc -t latex equipe-en.md -o content-equipe.tex
	xelatex equipe

pres:
	pandoc -t latex presentation-en.md -o content-presentation.tex
	xelatex presentation
	open presentation.pdf

tech:
	pandoc -t latex tech.md -o content-tech.tex
	xelatex tech

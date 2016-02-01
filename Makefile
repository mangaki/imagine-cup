equipe:
	pandoc -t latex equipe-en.txt -o content-equipe.tex
	xelatex equipe
	open equipe.pdf

pres:
	pandoc -t latex presentation-en.txt -o content-presentation.tex

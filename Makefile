MAIN=subsuper-proposal

pdf:
	latexmk -pdf $(MAIN) -auxdir=output -outdir=output

travis:
	#Old latexmk doesn't understand auxdir and outdir options
	latexmk -pdf -pdflatex='pdflatex %S %O -interaction=nonstopmode -halt-on-error' $(MAIN)

arxiv: pdf
	mkdir -p arxiv
	cp -ivR figures/*/* output/*.bbl *.tex arxiv
	echo Fix paths to images before continuing
	#Test build
	cd arxiv && latexmk -pdf $(MAIN) -auxdir=crap -outdir=crap && rm -rf crap
	cd arxiv && zip arxiv.zip *

clean:
	rm -rvf *.bbl *.blg *.aux *.fls *.fdb_latexmk *.log *.out *.toc $(MAIN).pdf aux output arxiv


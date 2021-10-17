TEAM_ID = B21116460002
build:
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error $(TEAM_ID).tex
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error $(TEAM_ID).tex
clean:
	rm -f *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind $(TEAM_ID).pdf
submit:
	md5sum $(TEAM_ID).tex

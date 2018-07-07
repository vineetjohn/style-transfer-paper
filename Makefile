filename=emnlp2018
build-dir=build

all:
	mkdir -p $(build-dir)
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename)
	bibtex $(build-dir)/$(filename)
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename)
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename)

pdf:
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename)

bib:
	bibtex $(build-dir)/$(filename)

read: pdf
	xdg-open $(build-dir)/$(filename).pdf &> /dev/null 

clean:
	rm -rf ${build-dir}

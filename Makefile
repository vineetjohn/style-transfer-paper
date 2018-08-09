filename=emnlp2018
build-dir=build

all:
	latexmk -pdf -outdir=$(build-dir) $(filename)

bib:
	bibtex $(build-dir)/$(filename)

read: all
	xdg-open $(build-dir)/$(filename).pdf &> /dev/null 

clean:
	rm -rf ${build-dir}


filename=main
build-dir=build

all:
	latexmk -xelatex -pdf -outdir=$(build-dir) $(filename)

bib:
	bibtex $(build-dir)/$(filename)

read: all
	xdg-open $(build-dir)/$(filename).pdf &> /dev/null 

indent:
	latexindent -w ${filename} &> /dev/null
	mv ${filename}.bak0 indent.log ${build-dir}

clean:
	rm -rf ${build-dir}

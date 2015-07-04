texoptions = -lualatex \
			 -output-directory=build \
			 -interaction=nonstopmode \
			 -halt-on-error


all: build/poster.pdf

build/poster.pdf: poster.tex beamerthemetudoposter.sty | build
	latexmk $(texoptions) poster.tex

build:
	mkdir -p build

clean:
	rm -rf build

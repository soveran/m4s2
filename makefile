MDS := $(patsubst notes/markdown/%.md, public/%.html, $(wildcard notes/markdown/*.md))
all: $(MDS) $(patsubst notes/%.html, public/%.html, $(wildcard notes/*.html))

notes/%.html: notes/markdown/%.md
	./bin/hoedown $< > $@

public/%.html: notes/%.html tmpl/layout.html
	./bin/build $< tmpl/layout.html > $@

clean:
	rm public/*.html

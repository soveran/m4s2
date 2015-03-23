all: $(patsubst notes/%.html, public/%.html, $(wildcard notes/*.html))

public/%.html: notes/%.html tmpl/layout.html
	./bin/build $< tmpl/layout.html > $@

clean:
	rm public/*.html

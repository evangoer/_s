CSS = pure.css theme.css responsive.css
MINIFY_CSS = node_modules/.bin/cleancss
PREPROCESS_CSS = ./bin/rework

vpath %.css css

all: style.css

style.css: $(CSS)
	cat $^ | $(PREPROCESS_CSS) | $(MINIFY_CSS) > $@

clean:
	rm -rf style.css

.PHONY: all clean

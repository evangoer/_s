CSS = pure.css theme.css responsive.css
MINIFY_CSS = node_modules/.bin/cleancss
PREPROCESS_CSS = ./bin/rework
vpath %.css css

JS = navigation.js skip-link-focus-fix.js
MINIFY_JS = node_modules/.bin/uglifyjs
vpath %.js js

all: style.css pure.js

pure.js: $(JS)
	cat $^ | $(MINIFY_JS) > $@

style.css: $(CSS)
	cat $^ | $(PREPROCESS_CSS) | $(MINIFY_CSS) > $@

clean:
	rm -rf style.css pure.js

.PHONY: all clean

CSS = css/pure.css css/theme.css css/responsive.css
MINIFY_CSS = node_modules/.bin/cleancss

all: style.css

style.css: $(CSS)

%.rework:
	cat $(CSS) > $@

%-max.css: %.rework
	cat $< | ./bin/rework > $@

%.css: %-max.css
	$(MINIFY_CSS) $< > $@

clean:
	rm -rf style.css

.PHONY: all clean

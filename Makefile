CSS = css/pure.css css/theme.css css/responsive.css
MINIFY_CSS = node_modules/.bin/cleancss

%.rework:
	cat $(CSS) > $@

%.css: %.rework
	cat $< | ./bin/rework | $(MINIFY_CSS) > $@

CSS = css/pure.css css/theme.css css/responsive.css
MINIFY_CSS = node_modules/.bin/cleancss

style.css: $(CSS)
	cat $(CSS) | $(MINIFY_CSS) > style.css

BABEL = ./node_modules/.bin/babel
BROWSERIFY = ./node_modules/.bin/browserify

all: node

node: lib
	@mkdir -p node/
	$(BABEL) lib -d node

dist: lib
	@mkdir -p dist/
	${BROWSERIFY} -t babelify lib/index.js -o dist/timedown.js

clean:
	rm -rf node/

.PHONY: all clean node
PROJECT=confirmation_popover
CSS = node_modules/@pirxpilot/tip/tip.css \
	build/aurora-tip.css \
	popover.css

all: check compile

check: lint

lint:
	node_modules/.bin/biome ci

format:
	node_modules/.bin/biome check --fix

compile: build/build.js build/build.css build/aurora-tip.css

build:
	mkdir -p $@

build/build.js: index.js | build
	node_modules/.bin/esbuild \
		--bundle \
		--sourcemap \
		--define:DEBUG="true" \
		--global-name=$(PROJECT) \
		--outfile=$@ \
		index.js

build/build.css: $(CSS) | build
	cat $^ > $@

build/aurora-tip.css: | build
	curl \
		--compressed \
		--output $@ \
		https://raw.githubusercontent.com/component/aurora-tip/master/aurora-tip.css

clean:
	rm -fr build

test: compile
	@open test/index.html

.PHONY: all check clean compile lint

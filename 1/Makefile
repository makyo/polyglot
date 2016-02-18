.PHONY: run
run: node_modules/.bin/coffee
	node_modules/.bin/coffee 1.coffee

node_modules/.bin/coffee:
	npm install coffee-script

.PHONY: clean
clean:
	rm -rf node_modules

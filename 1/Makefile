.PHONY: run
run: node_modules/.bin/coffee
	@echo "\033[1;32m"
	node_modules/.bin/coffee 1.coffee
	@echo "\033[0m"

node_modules/.bin/coffee:
	npm install coffee-script

.PHONY: clean
clean:
	rm -rf node_modules

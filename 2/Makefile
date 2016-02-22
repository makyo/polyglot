.PHONY: run
run: node_modules/.bin/elm-make elm-package.json
	node_modules/.bin/elm-make 2.elm --output 2-raw.js
	sh elm-stuff/packages/laszlopandy/elm-console/1.1.0/elm-io.sh 2-raw.js 2.js
	node 2.js

node_modules/.bin/elm-make:
	npm install elm

elm-package.json:
	node_modules/.bin/elm-package install --yes laszlopandy/elm-console

.PHONY: clean
clean:
	rm -rf node_modules elm-stuff elm-package.json *.js

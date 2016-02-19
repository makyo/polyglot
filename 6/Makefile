.PHONY: run
run: packages-canary
	@echo "\033[1;32m"
	racket 6.rkt
	@echo "\033[0m"

packages-canary:
	raco pkg install --batch --skip-installed srfi
	touch packages-canary

.PHONY: clean
clean:
	rm packages-canary

.PHONY: run
run: packages-canary
	racket 6.rkt

packages-canary:
	raco pkg install --batch --skip-installed srfi
	touch packages-canary

.PHONY: clean
clean:
	rm packages-canary

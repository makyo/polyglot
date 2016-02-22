.PHONY: run
run:
	for i in `find . -type d -maxdepth 1 | grep -e "\d\+" | tr './' ' ' | sort -n`; do \
		pushd $$i; \
		echo "\033[1;32m"; \
		make run; \
		echo "\033[0m" \
		make clean; \
		popd; \
	done

.PHONY: deps
deps:
	@echo "I expect: npm ghc go dart racket/raco swift factor gcc perl java" \
		"rust"

.PHONY: run
run:
	for i in `find . -type d -maxdepth 1 | grep -e "\d\+"`; do \
		pushd $$i; \
		make run clean; \
		popd; \
	done

.PHONY: deps
deps:
	@echo "I expect: npm ghc go dart racket/raco"

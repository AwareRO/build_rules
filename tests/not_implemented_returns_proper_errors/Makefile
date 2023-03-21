include build_rules/interfaces/build_rules_unit_test.mk
include build_rules/not_implemented.mk

all-tests: build-test docs-test tests-test clean-test dist-clean-test

.PHONY: build-test docs-test tests-test clean-test dist-clean-test

build-test:
	@$(MAKE) build >/dev/null 2> /dev/null && return 1 || :
docs-test:
	@$(MAKE) docs >/dev/null  2>/dev/null && return 1 || :
tests-test:
	@$(MAKE) tests >/dev/null  2>/dev/null && return 1 || :
clean-test:
	@$(MAKE) clean >/dev/null  2>/dev/null && return 1 || :
dist-clean-test:
	@$(MAKE) dist-clean >/dev/null  2>/dev/null && return 1 || :

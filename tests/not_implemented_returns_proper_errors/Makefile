include build_rules/not_implemented.mk

.PHONY:all-tests
all-tests: desc build-test docs-test tests-test clean-test dist-clean-test
	@echo "Pass"

.PHONY:desc
desc:
	@echo "Start test"
.PHONY:build-test
build-test:
	$(MAKE) build 2> /dev/null && return 1 || :
.PHONY:docs-test
docs-test:
	$(MAKE) docs 2> /dev/null && return 1 || :
.PHONY:tests-test
tests-test:
	$(MAKE) tests 2> /dev/null && return 1 || :
.PHONY:clean-test
clean-test:
	$(MAKE) clean 2> /dev/null && return 1 || :
.PHONY:dist-clean-test
dist-clean-test:
	$(MAKE) dist-clean 2> /dev/null && return 1 || :

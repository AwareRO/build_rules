TESTS=$(wildcard tests/*.sh)

include build_rules/interfaces/tests.mk

.PHONY:all-tests
all-tests: pre-test tests post-test
	@echo "Pass"
.PHONY:pre-test
pre-test:
	@echo "Start test"
	@for test in $(TESTS); do [ ! -f $$(basename $$test) ] || return 1; done
.PHONY:post-test
post-test:
	@for test in $(TESTS); do rm $$(basename $$test) || return 1; done

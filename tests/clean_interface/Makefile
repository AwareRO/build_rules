include build_rules/interfaces/build_rules_unit_test.mk
CLEAN_TARGETS=f1 f2 f3
include build_rules/interfaces/clean.mk

all-tests: clean-test

.PHONY:clean-test
clean-test:
	@touch $(CLEAN_TARGETS)
	@rm f3
	@$(MAKE) clean >/dev/null  2>/dev/null
	@ls | (! egrep "f1|f2|f3") || (echo "^ Didn't clean all targets ^"; return 1)

include build_rules/interfaces/build_rules_unit_test.mk
TESTS=t1.sh t2.sh t3.sh
OUTPUT=out
include build_rules/interfaces/tests.mk

all-tests: run-test

.PHONY:run-test
run-test:
	@$(MAKE) tests > $(OUTPUT)
	@grep -q t1 $(OUTPUT) || (echo "Didn't run test 1"; return 1)
	@grep -q t2 $(OUTPUT) || (echo "Didn't run test 2"; return 1)
	@grep -q t3 $(OUTPUT) || (echo "Didn't run test 3"; return 1)
	@rm $(OUTPUT)

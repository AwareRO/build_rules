include build_rules/interfaces/build_rules_unit_test.mk
DEPS=src/some.conf
BUILD=dist/usr/local/bin/some.conf
include build_rules/templates/compiled_one.mk

$(BUILD):
	@cp -v $(DEPS) $(BUILD)

all-tests: build-clean-test

.PHONY:build-clean-test
build-clean-test:
	@$(MAKE) build >/dev/null 2>/dev/null
	@[ -f $(BUILD) ] || (echo "Failed to build"; return 1)
	@$(MAKE) build >/dev/null 2>/dev/null
	@$(MAKE) clean >/dev/null 2>/dev/null
	@[ ! -d dist ] || (echo "Failed to clean"; return 1)

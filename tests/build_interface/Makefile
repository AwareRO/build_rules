include build_rules/interfaces/build_rules_unit_test.mk
OUT=out
DEPS=dep1 dep2 dep3
include build_rules/interfaces/build.mk

$(BUILD):
	cat $(DEPS) >> $@

all-tests: build-test build-once-test pre-build-test

.PHONY:build-test
build-test:
	@$(MAKE) build >/dev/null 2>/dev/null
	@grep -q "source code" $(BUILD) || (echo "Didn't run the build command"; return 1)
	@rm -r $(BUILD_DIR)

.PHONY:build-once-test
build-once-test:
	@$(MAKE) build >/dev/null 2>/dev/null
	@$(MAKE) build >/dev/null 2>/dev/null
	@wc -l $(BUILD) | grep -q "3" || (echo "Run the build command multiple times"; return 1)
	@rm -r $(BUILD_DIR)

.PHONY:pre-build-test
pre-build-test:
	@$(MAKE) build 2>&1 | grep -q "pre"

pre-build:
	@echo pre

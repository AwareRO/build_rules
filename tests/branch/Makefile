include build_rules/interfaces/build_rules_unit_test.mk
MODULES=m1 m2
include build_rules/branch.mk

all-tests: build-clean-test

build:
	@cp m1/build $(BUILD_DIR)/m1
	@cp m2/build $(BUILD_DIR)/m2

.PHONY:build-clean-test
build-clean-test:
	@$(MAKE) build
	@[ -f $(BUILD_DIR)/m1 ] || (echo "Failed to build"; return 1)
	@[ -f $(BUILD_DIR)/m2 ] || (echo "Failed to build"; return 1)
	@$(MAKE) build
	@$(MAKE) clean >/dev/null 2>/dev/null
	@[ ! -d dist ] || (echo "Failed to clean"; return 1)

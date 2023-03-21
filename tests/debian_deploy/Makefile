include build_rules/interfaces/build_rules_unit_test.mk
PACKAGE_NAME=debian-deploy-unit-test
VERSION=1.0-1
include build_rules/features/deploy/debian.mk
BUILD=test
BUILD_DIR=dist

all-tests: deploy-test

.PHONY:deploy-test
deploy-test:
	@mkdir $(BUILD_DIR)
	@touch $(BUILD_DIR)/$(BUILD)
	@$(MAKE) deploy-debian >/dev/null 2>/dev/null
	@[ -d $(DEBIAN_TARGET) ] || (echo "Failed to deploy"; return 1)
	@[ -f $(DEBIAN_TARGET).deb ] || (echo "Failed to deploy"; return 1)
	@rm -r $(BUILD_DIR) $(DEBIAN_TARGET) $(DEBIAN_TARGET).deb

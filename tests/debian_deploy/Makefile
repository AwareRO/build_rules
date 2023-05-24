include build_rules/interfaces/build_rules_unit_test.mk
include build_rules/features/deploy/debian.mk
BUILD=test
BUILD_DIR=dist

all-tests: deploy-test

.PHONY:deploy-test
deploy-test:
	@[ -n "$(PACKAGE_NAME)" ] || (echo "Failed package name"; return 1)
	@mkdir $(BUILD_DIR)
	@touch $(BUILD_DIR)/$(BUILD)
	@$(MAKE) deploy-debian >/dev/null 2>/dev/null
	@rm -r $(BUILD_DIR)
	@[ -d $(DEBIAN_TARGET) ] || (echo "Failed to deploy"; return 1)
	@rm -r $(DEBIAN_TARGET)
	@[ -f $(DEBIAN_TARGET).deb ] || (echo "Failed to deploy"; return 1)
	@rm -r $(DEBIAN_TARGET).deb

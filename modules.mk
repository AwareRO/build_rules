# recursively call make inside a list of modules
# set $(MODULES) with a list of the modules
# put all outputs in $(BUILD_DIR)
# set build dependencies in $(BUILD_DEPS)
# pass tests and docs rules to $(MODULES)
# cleans up $(CLEAN_TARGETS) and pass clean or clean-dist rules to $(MODULES) via recursive make
# put docs in $(DOCS) directory
# run all $(TESTS)
.PHONY: $(MODULES)
$(MODULES):
	$(MAKE) -C $@ $(MAKECMDGOALS)
include build_rules/directory_module.mk
clean: $(MODULES)
build: $(MODULES)
docs: $(MODULES)
tests: $(MODULES)

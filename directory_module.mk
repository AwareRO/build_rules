# put all outputs in $(BUILD_DIR)
# set build dependencies in $(BUILD_DEPS)
# cleans up $(CLEAN_TARGETS)
# put docs in $(DOCS) directory
# run all $(TESTS)
build: $(BUILD_DIR)
include build_rules/interfaces/build.mk
$(BUILD_DIR):
	@[ -d $(BUILD_DIR) ] || mkdir $(BUILD_DIR)
include build_rules/interfaces/clean.mk
include build_rules/interfaces/docs.mk
include build_rules/interfaces/tests.mk
# Build should create a file $(BUILD)
# set $(BUILD_DEPS) to the build dependencies
# cleans up $(CLEAN_TARGETS)
include build_rules/interfaces/build.mk
include build_rules/interfaces/clean.mk

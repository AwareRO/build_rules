# put all outputs in $(BUILD_DIR)
# set build dependencies in $(TARGETS)
# cleans up $(BUILD_DIR) and $(TARGETS)

build: $(BUILD_DIR)
include build_rules/interfaces/build.mk
$(BUILD_DIR):
	@[ -d $(BUILD_DIR) ] || mkdir -p $(BUILD_DIR)
include build_rules/interfaces/clean.mk
BUILD_DIR?=dist
BUILD?=$(BUILD_DIR)/$(BUILD_PREFIX)/$(OUT)
CLEAN_TARGETS+=$(BUILD_DIR)
BUILD_TARGETS=$(addprefix $(BUILD_DIR)/,$(BUILD_PREFIXES))

all: pre-build build

.PHONY:pre-build build

build: pre-build $(BUILD)

$(BUILD_DIR)/$(BUILD_PREFIX) $(BUILD_TARGETS):
	@mkdir -p $@

$(BUILD): $(DEPS) $(BUILD_DIR)/$(BUILD_PREFIX) $(BUILD_TARGETS)

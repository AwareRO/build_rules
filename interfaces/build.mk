BUILD_DIR?=dist
BUILD?=$(BUILD_DIR)/$(BUILD_PREFIX)/$(OUT)
CLEAN_TARGETS+=$(BUILD_DIR)

all: pre-build build

.PHONY:pre-build build

build: pre-build $(BUILD)

$(BUILD_DIR)/$(BUILD_PREFIX): $(BUILD_DIR)

$(BUILD_DIR)/$(BUILD_PREFIX) $(BUILD_DIR):
	@mkdir -p $@

$(BUILD): $(DEPS) $(BUILD_DIR)/$(BUILD_PREFIX)

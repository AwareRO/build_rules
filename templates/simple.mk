SRC_DIR?=src
SRC=$(shell find $(SRC_DIR) -type f)
BUILD_DIR?=dist
DEPS=$(SRC)
BUILD=$(subst $(SRC_DIR),$(BUILD_DIR)/$(BUILD_PREFIX),$(SRC))
include build_rules/interfaces/build.mk
CLEAN_TARGETS+=$(BUILD_DIR)
include build_rules/interfaces/clean.mk
include build_rules/interfaces/tests.mk

$(BUILD):
	@cp -R $(SRC_DIR)/* $(BUILD_DIR)/$(BUILD_PREFIX)

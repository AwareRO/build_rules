PROJECT_NAME=output_file
BUILD_DIR=dist
BUILD_DEPS=internal
CLEAN_TARGETS=$(BUILD_DIR) internal

include build_rules/directory_output.mk

build:
	@cat internal > $(BUILD_DIR)/$(PROJECT_NAME)
internal:
	@echo "code" >> internal
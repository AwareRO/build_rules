PROJECT_NAME=output_file
BUILD=$(PROJECT_NAME)
BUILD_DEPS=internal
CLEAN_TARGETS=$(BUILD) $(BUILD_DEPS)

include build_rules/single_file_output.mk

$(BUILD):
	@cat internal > $(BUILD)
internal:
	@echo "code" >> $@

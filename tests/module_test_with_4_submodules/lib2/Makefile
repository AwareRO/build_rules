PROJECT_NAME=lib2
BUILD=$(PROJECT_NAME)
BUILD_DEPS=internal
CLEAN_TARGETS=$(BUILD) $(BUILD_DEPS)

include build_rules/single_file_output.mk

$(BUILD):
	cat internal > $@

internal:
	echo "code" >> $@

.PHONY:tests
tests:
.PHONY:docs
docs:

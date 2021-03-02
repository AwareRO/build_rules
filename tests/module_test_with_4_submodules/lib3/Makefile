PROJECT_NAME=lib3
BUILD_DIR=dist
BUILD_DEPS=internal
TESTS=
DOCS=doc
CLEAN_TARGETS=$(BUILD_DIR) $(DOCS) $(BUILD_DEPS)

include build_rules/directory_module.mk

build:
	cat internal > $(BUILD_DIR)/$(PROJECT_NAME)
internal:
	echo "code" >> internal


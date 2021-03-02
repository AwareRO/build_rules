PROJECT_NAME=output_file
BUILD_DIR=dist
MODULES=lib1 lib2 lib3 lib4
DOCS=doc
CLEAN_TARGETS=$(BUILD_DIR) $(DOCS)
include build_rules/modules.mk

build:
	@cp lib1/$(BUILD_DIR)/* $(BUILD_DIR)
	@cp lib2/lib2 $(BUILD_DIR)
	@cp lib3/$(BUILD_DIR)/* $(BUILD_DIR)
	@cp lib4/lib4 $(BUILD_DIR)

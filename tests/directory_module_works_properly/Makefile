PROJECT_NAME=directory_module_works_properly
BUILD_DIR=dist
BUILD_DEPS=internal
TESTS=
DOCS=doc
CLEAN_TARGETS=$(BUILD_DIR) $(DOCS) $(BUILD_DEPS)

include build_rules/directory_module.mk

build:
	@cat internal > $(BUILD_DIR)/$(PROJECT_NAME)
internal:
	@echo "code" >> internal

.PHONY: all-tests
all-tests: pre-test build-test docs-test clean-test
	@echo "Pass"

.PHONY: pre-test
pre-test:
	@echo "Start test"
	@[ ! -d $(BUILD_DIR) ] || rm -r $(BUILD_DIR)
	@[ ! -d $(DOCS) ] || rm -r $(DOCS)
	@[ ! -f internal ] || rm internal

.PHONY: build-test
build-test: build
	@[ -d $(BUILD_DIR) ]

.PHONY: docs-test
docs-test: docs
	@[ -d $(DOCS) ]


.PHONY: clean-test
clean-test: clean
	@[ ! -d $(BUILD_DIR) ]
	@[ ! -d $(DOCS) ]
	@[ ! -f internal ]

.PHONY:all-tests
all-tests:
	@echo "Start test"
	$(MAKE) build-test
	$(MAKE) docs-test
	$(MAKE) clean-test
	@echo "Pass"

.PHONY: build-test
build-test: MAKECMDGOALS=build
build-test: build
	@[ -d $(BUILD_DIR) ]
	@[ -f $(BUILD_DIR)/lib1 ]
	@[ -f $(BUILD_DIR)/lib2 ]
	@[ -f $(BUILD_DIR)/lib3 ]
	@[ -f $(BUILD_DIR)/lib4 ]
	@[ -d lib1/$(BUILD_DIR) ]
	@[ -f lib1/$(BUILD_DIR)/lib1 ]
	@[ -f lib2/lib2 ]
	@[ -d lib3/$(BUILD_DIR) ]
	@[ -f lib3/$(BUILD_DIR)/lib3 ]
	@[ -f lib4/lib4 ]

.PHONY: docs-test
docs-test: MAKECMDGOALS=docs
docs-test: docs
	@[ -d $(DOCS) ]

.PHONY: clean-test
clean-test: MAKECMDGOALS=clean
clean-test: clean
	@[ ! -d $(BUILD_DIR) ]
	@[ ! -f $(BUILD_DIR)/lib1 ]
	@[ ! -f $(BUILD_DIR)/lib2 ]
	@[ ! -f $(BUILD_DIR)/lib3 ]
	@[ ! -f $(BUILD_DIR)/lib4 ]
	@[ ! -f $(DOCS) ]
	@[ ! -d lib1/$(BUILD_DIR) ]
	@[ ! -f lib1/$(BUILD_DIR)/lib1 ]
	@[ ! -f lib2/lib2 ]
	@[ ! -d lib3/$(BUILD_DIR) ]
	@[ ! -f lib3/$(BUILD_DIR)/lib3 ]
	@[ ! -f lib4/lib4 ]

#NOT PROPER
.PHONY: tests-test
tests-test: MAKECMDGOALS=tests
tests-test: tests

#NOT PROPER
.PHONY: docs-test
docs-test: MAKECMDGOALS=docs
docs-test: docs
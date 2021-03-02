.PHONY:all-tests
all-tests: desc build-test clean-test
	@echo "Pass"

.PHONY:desc
desc:
	@echo "Start test"

.PHONY: build-test
build-test: build
	@[ -d $(BUILD_DIR) ]
	@[ -f $(BUILD_DIR)/$(PROJECT_NAME) ]
	@[ -f internal ]

.PHONY: clean-test
clean-test: clean
	@[ ! -d $(BUILD_DIR) ]
	@[ ! -f $(BUILD_DIR)/$(PROJECT_NAME) ]
	@[ ! -f internal ]

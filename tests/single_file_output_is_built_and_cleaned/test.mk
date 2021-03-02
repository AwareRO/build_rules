.PHONY:all-tests
all-tests: desc build-test clean-test
	@echo "Pass"

.PHONY:desc
desc:
	@echo "Start test"

.PHONY: build-test
build-test: build
	@[ -f $(BUILD) ]
	@[ -f internal ]

.PHONY: clean-test
clean-test: clean
	@[ ! -f $(BUILD) ] || echo 1
	@[ ! -f internal ] || echo 2
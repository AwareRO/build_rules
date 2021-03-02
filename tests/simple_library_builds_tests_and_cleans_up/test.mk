.PHONY:tests
all-tests: desc build-test tests-tests clean-test
	@echo "Pass"

.PHONY:desc
desc:
	@echo "Start test"

.PHONY: build-test
build-test: build
	@for o in $(OBJECTS); do [ -f $$o ]; done
	@[ -f $(BUILD) ]
	@for sym in $$(for o in $(OBJECTS); do nm $$o| awk '/ T /{print $$NF}';done); do\
		nm $(BUILD) | grep "T $$sym" -q || return 1; done

.PHONY:tests-tests
tests-tests:
	@$(MAKE) tests
	@for t in $(TESTS); do [ -f $$t ]; done
	@sed -i 's/return 0/return 1/' src/f.c
	@echo "Expect failure on f_returns_0 test"
	@$(MAKE) tests && sed -i 's/return 1/return 0/' src/f.c && return 1 || :
	@sed -i 's/return 1/return 0/' src/f.c


.PHONY: clean-test
clean-test: clean
	@for o in $(OBJECTS); do [ ! -f $$o ]; done
	@for t in $(TESTS); do [ ! -f $$t ]; done
	@[ ! -f $(BUILD) ]
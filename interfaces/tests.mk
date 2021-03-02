.PHONY:tests
tests: $(TESTS)
	@for test in $(TESTS); do ./$$test; done
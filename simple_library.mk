# link all $(OBJECTS) into $(OUTPUT) file
# provides default compile rule for .o files
# provides tests rule for building and running all $(TESTS)
# provides default compile rule for tests using libcheck
# Not implemented docs
# build rule depends on $(TARGETS)
# cleans up $(TARGETS) and $(OUTPUT)
# provides default CFLAGS and CC variables if missing
include build_rules/single_file_output.mk

CFLAGS?=-Wall -Wextra -Werror
CC?=gcc

$(BUILD): $(OBJECTS)
	$(CC) -shared -Wl,-soname,$@ $(OBJECTS) $(LDOBJ) -o $@
%.o: %.c %.h
	$(CC) -c $(CFLAGS) $< -o $@

%.test: $(OBJECTS) %.test.c
	$(CC) -Isrc -lcheck $^ -o $@

.PHONY:tests
tests: build $(TESTS)
	@for test in $(TESTS); do ./$$test; done

.PHONY:docs
docs:
	@echo "Not implemented" && return 1
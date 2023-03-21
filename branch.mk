.PHONY: all
all: build

.PHONY: $(MODULES)
$(MODULES):
	$(MAKE) -C $@ $(MAKECMDGOALS)
include build_rules/interfaces/build.mk
CLEAN_TARGETS+=$(BUILD_DIR)
include build_rules/interfaces/clean.mk
include build_rules/interfaces/docs.mk
include build_rules/interfaces/tests.mk
clean: $(MODULES)
build: $(MODULES)
docs: $(MODULES)
tests: $(MODULES)

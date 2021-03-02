PROJECT_NAME=build_rules
MODULES=$(wildcard tests/*/)
TESTS=$(wildcard tests/*/)
CLEAN_TARGETS=$(addprefix tests/,debian_deploy_makes_package/ simple_library_builds_tests_and_cleans_up/ directory_module_works_properly/ module_test_with_4_submodules/ single_file_output_is_built_and_cleaned/ directory_output_is_built_and_cleaned/)
.PHONY:build
build: tests
	@echo "Finished"

.PHONY:all-tests
all-tests: MAKECMDGOALS=all-tests
all-tests: $(MODULES)

.PHONY: $(MODULES)
$(MODULES):
	BUILD_DIR=../$(BUILD_DIR) $(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY:docs
docs:
.PHONY:clean
clean: $(CLEAN_TARGETS)
.PHONY:dist-clean
dist-clean: clean

PROJECT_NAME=build_rules
VERSION=1.0-1
BUILD_DIR=build
include deploy_debian.mk
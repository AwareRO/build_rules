PACKAGE_NAME=build-rules
VERSION=$(shell ./genver.sh)

MODULES=$(wildcard tests/*/)

BUILD_PREFIX=var/lib/aware-devtools/build_rules
BUILD_DIR=dist
CLEAN_TARGETS=$(BUILD_DIR)
SRC=$(wildcard *.mk) interfaces templates features
BUILD=$(addprefix $(BUILD_DIR)/$(BUILD_PREFIX)/,$(SRC))

.PHONY: all
all: build deploy-debian

include build_rules/features/deploy/debian.mk
CLEAN_TARGETS+=$(DEBIAN_TARGET) $(DEBIAN_TARGET).deb

.PHONY:build
build: all-tests $(BUILD) dist/usr/bin/build-rules-setup.sh

.PHONY:all-tests
all-tests: MAKECMDGOALS=all-tests
all-tests: $(MODULES)

.PHONY: $(MODULES)
$(MODULES):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY:docs
docs:
include build_rules/interfaces/clean.mk

$(BUILD): $(BUILD_DIR)/$(BUILD_PREFIX)

dist/usr/bin/build-rules-setup.sh: dist/usr/bin

$(BUILD_DIR)/$(BUILD_PREFIX) $(BUILD_DIR)/usr/bin:
	@mkdir -pv $@

$(BUILD) dist/usr/bin/build-rules-setup.sh:
	@cp -Rv $(shell echo "$@" | sed -e 's@$(BUILD_DIR)/$(BUILD_PREFIX)/@@' -e 's@dist/usr/bin/@@') $<

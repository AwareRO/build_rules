BUILD_DIR?=dist
BUILD_PREFIX?=usr/local/bin
include build_rules/interfaces/build.mk

CLEAN_TARGETS+=$(BUILD_DIR)
include build_rules/interfaces/clean.mk

include build_rules/interfaces/tests.mk

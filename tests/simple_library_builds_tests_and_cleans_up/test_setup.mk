BUILD=libmylib.so
TESTS=$(patsubst %.c,%,$(wildcard tests/*.c))
OBJECTS=$(patsubst %.c,%.o,$(wildcard src/*.c))
BUILD_DEPS=$(OBJECTS) $(TESTS) $(BUILD)
CLEAN_TARGETS=$(OBJECTS) $(TESTS) $(BUILD)

CFLAGS=-g -Wall -Wextra -Werror
CC=gcc
include build_rules/simple_library.mk


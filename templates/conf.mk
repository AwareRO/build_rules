DEPS=$(notdir $(BUILD))
include build_rules/interfaces/build.mk
include build_rules/interfaces/clean.mk
include build_rules/interfaces/tests.mk

$(BUILD):
	@cp -v `basename $@` $@

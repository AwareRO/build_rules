PACKAGE_NAME?=$(shell awk '/Package: /{print $$2}' debian/control)
VERSION?=$(shell ./genver.sh)
DEBIAN_TARGET=$(PACKAGE_NAME)_$(VERSION)
DEBIAN_DIR?=debian
CLEAN_TARGETS+=$(DEBIAN_TARGET) $(DEBIAN_TARGET).deb

.PHONY: deploy-debian
deploy-debian: $(DEBIAN_TARGET).deb

DEBIAN_DEPS=$(wildcard $(DEBIAN_DIR)/*)
%.deb: %
	@dpkg-deb --build $<

$(DEBIAN_TARGET): $(DEBIAN_TARGET)/DEBIAN
	@[ -z "`ls $(BUILD_DIR)`" ] || cp -Rv $(BUILD_DIR)/* $@
	@touch $@

$(DEBIAN_TARGET)/DEBIAN: $(DEBIAN_DEPS)
	@[ -e $@ ] || mkdir -pv $@
	@cp -Rv $? $@
	@sed -i 's/Version: .*/Version: '"$(VERSION)"'/' $(DEBIAN_TARGET)/DEBIAN/control
	@sed -i 's/_PACKAGE_NAME_/'"$(PACKAGE_NAME)"'/' $(DEBIAN_TARGET)/DEBIAN/control

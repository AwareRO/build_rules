
DEBIAN_TARGET=$(PROJECT_NAME)_$(VERSION)
DEBIAN_DIR?=debian

.PHONY: deploy-debian
deploy-debian: $(DEBIAN_TARGET).deb

DEBIAN_DEPS=$(wildcard $(DEBIAN_DIR)/*)
%.deb: %
	@dpkg-deb --build $<

$(DEBIAN_TARGET): $(DEBIAN_TARGET)/DEBIAN
	@cp -Rv $(BUILD_DIR)/* $@
	@touch $@

$(DEBIAN_TARGET)/DEBIAN: $(DEBIAN_DEPS)
	@[ -e $@/DEBIAN ] || mkdir -pv $@
	@cp -Rv $? $@
	@touch $@
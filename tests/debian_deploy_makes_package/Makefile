PROJECT_NAME=debian-deploy-makes-package
VERSION=1.0-1
BUILD_DIR="build"

include build_rules/deploy_debian.mk

.PHONY: all-tests
all-tests: desc deploy-debian deploy-debian-makes-dir deploy-debian-makes-deb clean
	@echo "Pass"

.PHONY: desc
desc:
	@echo "Start test"

.PHONY: deploy-debian-test
deploy-debian-makes-deb:
	@[ -f $(DEBIAN_TARGET).deb ]

.PHONY: deploy-debian-test
deploy-debian-makes-dir:
	@[ -d $(DEBIAN_TARGET) ]

.PHONY: clean
clean:
	@rm -rvf $(DEBIAN_TARGET) $(DEBIAN_TARGET).deb
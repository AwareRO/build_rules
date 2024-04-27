include build_rules/interfaces/build_rules_unit_test.mk

NGINX_CONF=etc/nginx/sites-available
SYSTEMD_CONF=etc/systemd/system
BUILD_PREFIXES=$(NGINX_CONF) $(SYSTEMD_CONF)

BUILD=$(BUILD_DIR)/$(NGINX_CONF)/test.conf\
$(BUILD_DIR)/$(SYSTEMD_CONF)/test.service

include build_rules/templates/conf.mk

all-tests: build-clean-test

.PHONY:build-clean-test
build-clean-test:
	@$(MAKE) build >/dev/null 2>/dev/null
	@[ -f $(BUILD_DIR)/$(NGINX_CONF)/test.conf ] || (echo "Failed to build nginx"; return 1)
	@[ -f $(BUILD_DIR)/$(SYSTEMD_CONF)/test.service ] || (echo "Failed to build systemd"; return 1)
	@$(MAKE) build >/dev/null 2>/dev/null
	@$(MAKE) clean >/dev/null 2>/dev/null
	@[ ! -d $(BUILD_DIR) ] || (echo "Failed to clean"; return 1)

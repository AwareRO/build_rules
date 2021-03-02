DOCS=doc

include build_rules/interfaces/docs.mk

.PHONY:all-tests
all-tests: pre-test docs post-test
	@echo "Pass"
.PHONY:pre-test
pre-test:
	@echo "Start test"
	@[ ! -d $(DOCS) ]
.PHONY:post-test
post-test:
	@[ -d $(DOCS) ]
	@rm -rvf $(DOCS)

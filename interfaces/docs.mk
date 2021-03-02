.PHONY:docs
docs: $(DOCS)

$(DOCS):
	@[ -d $(DOCS) ] || mkdir $(DOCS)
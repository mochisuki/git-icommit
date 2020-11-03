SCRIPT := git-icommit
CURRENTDIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

PREFIX := ${HOME}/local

.PHONY: all
all:
	@echo "make"
	@echo "    install      install $(SCRIPT) on PREFIX directory."
	@echo "    uninstall    uninstall $(SCRIPT) from PREFIX directory."

.PHONY: install
install:
	mkdir -p $(PREFIX)/bin/
	cp -a $(CURRENTDIR)/$(SCRIPT) $(PREFIX)/bin/

.PHONY: uninstall
uninstall:
	rm -f $(PREFIX)/bin/$(SCRIPT)

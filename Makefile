.PHONY: all depend build

all:
	$(MAKE) depend
	$(MAKE) build

depend:
	./fetch.sh

build:
	./install.sh

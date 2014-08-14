.PHONY: all depend build release

all:
	$(MAKE) depend
	$(MAKE) build

depend:
	./fetch.sh

build:
	./install.sh

# make release VERSION=v0.2
release:
	rm -f ../mirage-xen-minios-$(VERSION).tar.bz2
	cd .. && tar -jcvf mirage-xen-minios-$(VERSION).tar.bz2 mirage-xen-minios --exclude .git
	cd .. && git-upload-release mirage mirage-xen-minios $(VERSION) mirage-xen-minios-$(VERSION).tar.bz2 application/x-bzip2

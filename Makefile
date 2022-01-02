PREFIX = /usr

all:
	@echo Run \'make install\' to install l7-tools.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p l7-tools $(DESTDIR)$(PREFIX)/bin/l7-tools
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/l7-tools

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/l7-tools

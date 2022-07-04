PREFIX = /usr

all:
	@echo Run \'make install\' to install l7-tools.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/share/applications
	@cp -p l7-tools $(DESTDIR)$(PREFIX)/bin/l7-tools
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/l7-tools
	@cp -p langitketujuh.system.upgrade.desktop $(DESTDIR)$(PREFIX)/share/applications/langitketujuh.system.upgrade.desktop

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/l7-tools
	@rm -rf $(DESTDIR)$(PREFIX)/share/applications/langitketujuh.system.upgrade.desktop

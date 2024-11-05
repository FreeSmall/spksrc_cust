PKG_NAME = nethogs
PKG_VERS = 0.8.7
PKG_EXT = tar.gz
PKG_NAME_REAL = nethogs
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/raboof/$(PKG_NAME_REAL)/archive/v$(PKG_VERS)
PKG_DIST_FILE = $(PKG_NAME_REAL)-$(PKG_VERS).$(PKG_EXT)
PKG_DIR = $(PKG_NAME_REAL)-$(PKG_VERS)

DEPENDS = cross/libpcap cross/ncurses

HOMEPAGE = https://github.com/nethogs
COMMENT  = NetHogs is a small 'net top' tool. Instead of breaking the traffic down per protocol or per subnet, like most tools do, it groups bandwidth by process
LICENSE  = GPL-2.0 license

GNU_CONFIGURE = 1
CONFIGURE_TARGET = nop
INSTALL_TARGET = nethogs_install

include ../../mk/spksrc.cross-cc.mk


.PHONY: nethogs_install
nethogs_install:
	install -m 755 $(WORK_DIR)/$(PKG_DIR)/src/nethogs $(STAGING_INSTALL_PREFIX)/bin/$(PKG_NAME)
#	install -d -m 755 $(DESTDIR)$(bin)
#	install -m 755 nethogs $(DESTDIR)$(bin)

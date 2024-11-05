SPK_NAME = lrzsz
SPK_VERS = 0.12.20
SPK_REV = 1
SPK_ICON = src/lrzsz.png

DEPENDS = cross/$(SPK_NAME)

MAINTAINER = freesmall
DESCRIPTION = free x/y/zmodem implementation
DISPLAY_NAME = lrzsz
STARTABLE = no

HOMEPAGE = https://ohse.de/uwe/software/lrzsz.html
LICENSE = GNU

SPK_COMMANDS = bin/rz bin/sz
POST_STRIP_TARGET = lrzsz_install

include ../../mk/spksrc.spk.mk

.PHONY: lrzsz_install
lrzsz_install:
	install -m 755 -d $(STAGING_DIR)/bin/
	cd $(STAGING_DIR)/bin && ln -s lrz rz
	cd $(STAGING_DIR)/bin && ln -s lsz sz

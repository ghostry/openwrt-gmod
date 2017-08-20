#
# Copyright (C) 2017 Ghostry
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=haproxy-guard
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=ghostry <ghostry@ghostry.cn>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/haproxy-guard
	CATEGORY:=Gmod
	SUBMENU:=Network
	TITLE:=haproxy-guard
	PKGARCH:=all
endef

define Package/haproxy-guard/description
	haproxy-guard
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/haproxy-guard/postinst
#!/bin/sh
if [ -z "$${IPKG_INSTROOT}" ]; then
	chmod 755 /bin/haproxy.sh >/dev/null 2>&1
fi
exit 0
endef

define Package/haproxy-guard/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) ./files/haproxy.sh $(1)/bin
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/haproxy.cron $(1)/etc/uci-defaults/haproxy-guard
endef


$(eval $(call BuildPackage,haproxy-guard))

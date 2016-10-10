#
# Copyright (C) 2015 OpenWrt-dist
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-cdns
PKG_VERSION:=0.01
PKG_RELEASE:=1

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=ghostry <ghostry@ghostry.cn>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-cdns
	SECTION:=luci
	CATEGORY:=Gmod
	SUBMENU:=Luci
	TITLE:=CureDNS LuCI interface
	PKGARCH:=all
	DEPENDS:=+cdns
endef


define Package/luci-app-cdns/description
	LuCI Support for cdns.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-cdns/postinst
#!/bin/sh
if [ -z "$${IPKG_INSTROOT}" ]; then
	chmod 755 /etc/init.d/cdns >/dev/null 2>&1
	/etc/init.d/cdns enable >/dev/null 2>&1
fi
exit 0
endef

define Package/luci-app-cdns/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./files/luci/controller/cdns.lua $(1)/usr/lib/lua/luci/controller/cdns.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DATA) ./files/luci/i18n/cdns.*.lmo $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DATA) ./files/luci/model/cbi/cdns.lua $(1)/usr/lib/lua/luci/model/cbi/cdns.lua
endef

$(eval $(call BuildPackage,luci-app-cdns))

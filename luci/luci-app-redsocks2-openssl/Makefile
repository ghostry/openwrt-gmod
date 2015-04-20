#
# Copyright (C) 2015 OpenWrt-dist
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-redsocks2-openssl
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=ghostry <ghostry@ghostry.cn>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-redsocks2-openssl
	SECTION:=luci
	CATEGORY:=Gmod
	SUBMENU:=Luci
	TITLE:=Redsocks2-openssl LuCI interface
	PKGARCH:=all
	DEPENDS:=+luci +redsocks2-openssl
endef


define Package/luci-app-redsocks2-openssl/description
	LuCI Support for redsocks2-openssl.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-redsocks2-openssl/postinst
#!/bin/sh
if [ -z "$${IPKG_INSTROOT}" ]; then
	( . /etc/uci-defaults/luci-redsocks2 ) && rm -f /etc/uci-defaults/luci-redsocks2
	chmod 755 /etc/init.d/redsocks2 >/dev/null 2>&1
	/etc/init.d/redsocks2 enable >/dev/null 2>&1
fi
exit 0
endef

define Package/luci-app-redsocks2-openssl/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./files/luci/controller/redsocks2.lua $(1)/usr/lib/lua/luci/controller/redsocks2.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DATA) ./files/luci/i18n/redsocks2.*.lmo $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DATA) ./files/luci/model/cbi/redsocks2.lua $(1)/usr/lib/lua/luci/model/cbi/redsocks2.lua
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/root/etc/uci-defaults/luci-redsocks2 $(1)/etc/uci-defaults/luci-redsocks2
endef

$(eval $(call BuildPackage,luci-app-redsocks2-openssl))

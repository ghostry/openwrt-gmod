#
# Copyright (C) 2015 Gmod
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-smartdns
PKG_VERSION:=1.2019.06.21
PKG_RELEASE:=2337

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=pymumu <https://pymumu.github.io>,ghostry <ghostry@ghostry.cn>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-smartdns
	SECTION:=luci
	CATEGORY:=Gmod
	SUBMENU:=Luci
	TITLE:=SmartDNS LuCI interface
	PKGARCH:=all
	DEPENDS:=+smartdns
endef


define Package/luci-app-smartdns/description
	LuCI Support for cdns.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-smartdns/postinst
#!/bin/sh
if [ -z "$${IPKG_INSTROOT}" ]; then
	chmod 755 /etc/init.d/cdns >/dev/null 2>&1
	/etc/init.d/cdns enable >/dev/null 2>&1
fi
exit 0
endef

define Package/luci-app-smartdns/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./files/luci/controller/smartdns.lua $(1)/usr/lib/lua/luci/controller/smartdns.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DATA) ./files/luci/i18n/smartdns.*.lmo $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/smartdns
	$(INSTALL_DATA) ./files/luci/view/smartdns/*.htm $(1)/usr/lib/lua/luci/view/smartdns
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model
	$(INSTALL_DATA) ./files/luci/model/smartdns.lua $(1)/usr/lib/lua/luci/model
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/smartdns
	$(INSTALL_DATA) ./files/luci/model/cbi/smartdns/*.lua $(1)/usr/lib/lua/luci/model/cbi/smartdns
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/uci-defaults/50_luci-smartdns $(1)/etc/uci-defaults
endef

$(eval $(call BuildPackage,luci-app-smartdns))

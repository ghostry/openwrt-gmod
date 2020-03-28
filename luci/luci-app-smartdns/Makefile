#
# Copyright (C) 2015 Gmod
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-smartdns
PKG_VERSION:=1.2020.02.25
PKG_RELEASE:=2212

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

define Package/luci-app-smartdns/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./files/usr/lib/lua/luci/controller/smartdns.lua $(1)/usr/lib/lua/luci/controller/smartdns.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DATA) ./files/usr/lib/lua/luci/i18n/smartdns.*.lmo $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
	$(INSTALL_DATA) ./files/usr/share/rpcd/acl.d/luci-app-smartdns.json $(1)/usr/share/rpcd/acl.d
	$(INSTALL_DIR) $(1)/www/luci-static/resources/view/smartdns
	$(INSTALL_DATA) ./files/www/luci-static/resources/view/smartdns/smartdns.js $(1)/www/luci-static/resources/view/smartdns
endef

$(eval $(call BuildPackage,luci-app-smartdns))

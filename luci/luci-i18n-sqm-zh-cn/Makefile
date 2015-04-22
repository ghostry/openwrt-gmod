#
# Copyright (C) 2015 OpenWrt-dist
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-i18n-sqm-zh-cn
PKG_VERSION:=3
PKG_RELEASE:=1

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=ghostry <ghostry@ghostry.cn>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-i18n-sqm-zh-cn
	SECTION:=luci
	CATEGORY:=Gmod
	SUBMENU:=Luci
	TITLE:=zh-cn sqm LuCI interface
	PKGARCH:=all
	DEPENDS:=+luci +luci-app-sqm
endef

define Package/luci-i18n-sqm-zh-cn/description
	LuCI Support for sqm zh-cn.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-i18n-sqm-zh-cn/postinst
endef

define Package/luci-i18n-sqm-zh-cn/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DATA) ./files/luci/i18n/sqm.zh-cn.lmo $(1)/usr/lib/lua/luci/i18n
endef

$(eval $(call BuildPackage,luci-i18n-sqm-zh-cn))

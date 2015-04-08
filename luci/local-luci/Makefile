#
# Copyright (C) 2015 OpenWrt-dist
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=local-luci-zh-cn
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=ghostry <ghostry@ghostry.cn>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/local-luci-zh-cn
	SECTION:=luci
	CATEGORY:=Gmod
	SUBMENU:=Luci
	TITLE:=luci localization configuration
	PKGARCH:=all
	DEPENDS:=+luci +luci-i18n-base-zh-cn +luci-i18n-firewall-zh-cn
endef

define Package/local-luci-zh-cn/description
	luci localization configuration
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/local-luci-zh-cn/postinst
#!/bin/sh
if [ -z "$${IPKG_INSTROOT}" ]; then
    sed -i  's/auto/zh_cn/g' /etc/config/luci
    sed -i  's/UTC/"CST-8"/g' /etc/config/system
fi
exit 0
endef

define Package/local-luci-zh-cn/install
	$(INSTALL_DIR) $(1)/tmp
	$(INSTALL_BIN) ./files/root/tmp/local-luci-zh-cn.log $(1)/tmp/local-luci-zh-cn.log
endef


$(eval $(call BuildPackage,local-luci-zh-cn))

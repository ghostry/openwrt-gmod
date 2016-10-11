#
# Copyright (C) 2015 Gmod
#
# This software is under MIT license.
# See /license.txt for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=BaiduPCS
PKG_VERSION:=0.2.1
PKG_RELEASE:=c59187f5bce774ae5d801cc6a249f5d09f75f219

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_RELEASE).tar.bz2
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/GangZhuo/BaiduPCS.git
PKG_SOURCE_VERSION:=$(PKG_RELEASE)

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=license.txt
PKG_MAINTAINER:=Gang Zhuo <gang.zhuo@gmail.com>

PKG_BUILD_DEPENDS:=libopenssl libcurl libpthread
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)/$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/BaiduPCS
	SECTION:=net
	CATEGORY:=Gmod
	SUBMENU:=Network
	TITLE:=The client for baidu net disk.
	URL:=https://github.com/GangZhuo/BaiduPCS
	DEPENDS:=+libopenssl +libcurl +libpthread
endef

define Package/BaiduPCS/description
	The client for baidu net disk.
endef

define Package/BaiduPCS/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bin/pcs $(1)/usr/bin
endef

$(eval $(call BuildPackage,BaiduPCS))

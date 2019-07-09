#
# Copyright (C) 2015-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v3.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=smartdns
PKG_VERSION:=1.2019.05.21
PKG_RELEASE:=2250

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Gmod
	SUBMENU:=Network
	TITLE:=Smartdns is a DNS proxy software
 	DEPENDS:=+libopenssl
	URL:=https://github.com/pymumu/smartdns/releases
endef


define Package/$(PKG_NAME)/description
smartdns is a DNS proxy software
endef

SMARTDNS_BIN:=smartdns

ifeq ($(ARCH),x86_64)
	PKG_ARCH_SMARTDNS:=amd64
endif
ifeq ($(ARCH),mipsel)
	PKG_ARCH_SMARTDNS:=mipsle
endif
ifeq ($(ARCH),mips)
	PKG_ARCH_SMARTDNS:=mips
endif
ifeq ($(ARCH),i386)
	PKG_ARCH_SMARTDNS:=x86
endif
ifeq ($(ARCH),arm)
	PKG_ARCH_SMARTDNS:=arm
	ifneq ($(BOARD),bcm53xx)
		SMARTDNS_BIN:=smartdns_armv7
	endif
	ifeq ($(BOARD),kirkwood)
		SMARTDNS_BIN:=smartdns
	endif
endif
ifeq ($(ARCH),aarch64)
	PKG_ARCH_SMARTDNS:=arm64
endif

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) ./files/$(PKG_ARCH_SMARTDNS)/$(SMARTDNS_BIN) $(1)/usr/sbin/smartdns
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) ./files/etc/config/smartdns $(1)/etc/config
	$(INSTALL_DIR) $(1)/etc/smartdns
	$(INSTALL_DATA) ./files/etc/smartdns/*.conf $(1)/etc/smartdns
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/etc/init.d/smartdns $(1)/etc/init.d/smartdns
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

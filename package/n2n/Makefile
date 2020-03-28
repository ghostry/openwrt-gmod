include $(TOPDIR)/rules.mk


PKG_NAME:=n2n
PKG_VERSION:=2.6
PKG_RELEASE:=$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/ntop/n2n/archive/
PKG_MD5SUM:=29c5f1b9fcb2835128d5be9f9d2898d5
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE:=$(PKG_VERSION).tar.gz
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/n2n/Default
  SECTION:=net
  CATEGORY:=Gmod
  SUBMENU:=Network
  TITLE:=N2Nv2
  URL:=http://www.ntop.org/n2n/
  DEPENDS:=+kmod-tun +resolveip +libopenssl
endef

define Package/n2n-edge
$(call Package/n2n/Default)
TITLE+= client (edge)
endef

define Package/n2n-supernode
$(call Package/n2n/Default)
TITLE+= server (supernode)
endef

define Package/n2n-edge/description
N2Nv2 client (edge).
endef

define Package/n2n-supernode/description
N2Nv2 server (supernode).
endef

define Build/Configure
	( cd $(PKG_BUILD_DIR); ./autogen.sh )
	$(call Build/Configure/Default)
endef

define Package/n2n-edge/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/edge $(1)/usr/sbin/
endef

define Package/n2n-supernode/conffiles
/etc/config/n2n
endef

define Package/n2n-supernode/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/supernode $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/packages/openwrt/etc/init.d/supernode $(1)/etc/init.d/supernode
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) $(PKG_BUILD_DIR)/packages/etc/n2n/supernode.conf.sample $(1)/etc/config/n2n-supernode.conf
endef

$(eval $(call BuildPackage,n2n-edge))
$(eval $(call BuildPackage,n2n-supernode))

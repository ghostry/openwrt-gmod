include $(TOPDIR)/rules.mk

PKG_NAME:=luci-proto-n2n
PKG_VERSION:=1.0
PKG_RELEASE:=6
PKG_MAINTAINER:=Jason Tse <jasontsecode@gmail.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/luci-proto-n2n
   SECTION:=LuCI
   CATEGORY:=Gmod
   SUBMENU:=Luci
   DEPENDS:=+n2n-edge
   TITLE:=N2N VPN protocol support for LuCI
   MAINTAINER:=Jason Tse <jasontsecode@gmail.com>
   PKGARCH:=all
endef

define Package/luci-proto-n2n/description
N2N VPN protocol support for LuCI
endef

define Package/luci-proto-n2n/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/admin_network
	$(INSTALL_DATA) ./files/cbi/proto_n2n.lua $(1)/usr/lib/lua/luci/model/cbi/admin_network
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/network
	$(INSTALL_DATA) ./files/network/proto_n2n.lua $(1)/usr/lib/lua/luci/model/network
	$(INSTALL_DIR) $(1)/lib/netifd/proto
	$(INSTALL_BIN) ./files/n2n.sh $(1)/lib/netifd/proto
endef

define Build/Compile
endef

$(eval $(call BuildPackage,luci-proto-n2n))

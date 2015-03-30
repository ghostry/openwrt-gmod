# openwrt-gmod

包含内容
-------
    luci-app-aria2
    luci-app-chinadns
    luci-app-redsocks2
    luci-app-shadowvpn
    luci-app-shadowsocks-spec
    chinadns
    redsocks2
    shadowvpn
    shadowsocks-libev
    shadowsocks-libev-spec
    shadowsocks-libev-polarssl
    shadowsocks-libev-spec-polarssl

==============

安装
-------

在你的 feeds.conf.default 文件添加下面这行

    src-git gmod https://github.com/ghostry/openwrt-gmod

然后运行

    ./scripts/feeds update -a && ./scripts/feeds install -a

==============

文件来源
-------
    https://github.com/nanpuyue/openwrt-extra
    https://github.com/aa65535/openwrt-dist-luci
    https://github.com/shadowsocks/openwrt-shadowsocks
    https://github.com/aa65535/openwrt-chinadns
    https://github.com/aa65535/openwrt-shadowvpn
    https://github.com/aa65535/openwrt-redsocks2

==============

感谢
-------
    https://github.com/ziahamza/webui-aria2
    https://github.com/binux/yaaw
    https://github.com/ravageralpha/my_openwrt_mod
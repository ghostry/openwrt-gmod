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

==============

说明
-------
可以使用的方案有

 - chinadns+redsocks2+shadowsocks-libev

 - chinadns+shadowsocks-libev-spec

 - shadowsocks-libev-spec

shadowsocks-libev-spec使用的 IP 忽略列表: /etc/shadowsocks/ignore.list 可以使用下面命令更新

    wget -O- 'http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest' | awk -F\| '/CN\|ipv4/ { printf("%s/%d\n", $4, 32-log($5)/log(2)) }' > /etc/shadowsocks/ignore.list
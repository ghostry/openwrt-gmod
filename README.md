# openwrt-gmod

包含内容
-------
    local-luci  #自动设置语言为中文简体,时区为东8区上海
    luci-app-aria2
    luci-app-chinadns
    luci-app-redsocks2
    luci-app-redsocks2-openssl
    luci-app-shadowvpn
    luci-app-shadowsocks-spec
    aria2		#1.19.0版本
    chinadns
    redsocks2
    redsocks2-openssl  #自带shadowsocks客户端，dns转发
    redsocks2-polarssl  #自带shadowsocks客户端，dns转发
    shadowvpn
    shadowsocks-libev
    shadowsocks-libev-spec
    shadowsocks-libev-polarssl
    shadowsocks-libev-spec-polarssl
    he-6in4  #为6in4更新客户端ip,配合luci-proto-ipv6使用
    redial   #如果拨号获得内网IP则自动重拨

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
    https://github.com/wongsyrone/openwrt-1/tree/master/package/external/redsocks2

==============

感谢
-------
    https://github.com/ziahamza/webui-aria2
    https://github.com/binux/yaaw
    https://github.com/ravageralpha/my_openwrt_mod
    https://github.com/semigodking/redsocks

==============

说明
-------
可以使用的方案有

 - chinadns+redsocks2+shadowsocks-libev

 - chinadns+shadowsocks-libev-spec

 - shadowsocks-libev-spec

 - redsocks2-openssl

 - chinadns+redsocks2-openssl

shadowsocks-libev-spec使用的 IP 忽略列表: /etc/shadowsocks/ignore.list 每天凌晨4点自动更新，你也可以使用下面命令更新

    /etc/init.d/shadowsocks upignore


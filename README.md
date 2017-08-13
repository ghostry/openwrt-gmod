# openwrt-gmod

包含内容
-------
    luci-app-aria2
    luci-app-cdns
    luci-app-chinadns
    luci-app-redsocks2
    luci-app-redsocks2-openssl
    luci-app-shadowsocks
    luci-theme-material #一个自适应界面，弥补了没有手机客户端的遗憾
    aria2		#1.19.3版本
    BaiduPCS		#百度网盘客户端，命令行使用
    cdns		#CureDNS
    chinadns
    redsocks2-openssl  #自带shadowsocks客户端，dns转发
    redsocks2-polarssl  #自带shadowsocks客户端，dns转发
    shadowsocks-libev	#libmbedtls,libsodium,udns这三个是其相关内容
    shadowsocks-libev-server
    he-6in4  #为6in4更新客户端ip,配合luci-proto-ipv6使用
    redial   #如果拨号获得内网IP则自动重拨
    pdnsd    #dns服务，可以修改ttl，支持多个上级dns，带存活测试，支持tcp查询。
    tcpping

==============

安装
-------

把下面这行添加到你的 feeds.conf.default 文件首行

    src-git gmod https://github.com/ghostry/openwrt-gmod

然后运行

    ./scripts/feeds update -a && ./scripts/feeds install -a

==============

文件来源
-------
    github.com,自己编写

==============

说明
-------
如果你要找旧文件,可以查看https://github.com/ghostry/openwrt-gmod/releases/tag/20170723

luci-app-shadowsocks的使用方法可以查看https://github.com/shadowsocks/luci-app-shadowsocks/wiki/Use-UCI-system

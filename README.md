# openwrt-gmod

包含内容
-------
```
luci-app-smartdns
luci-proto-n2n
n2n
smartdns
```
==============

安装
-------

把下面这行添加到你的 feeds.conf.default 文件首行

    src-git gmod https://github.com/ghostry/openwrt-gmod;openwrt-19.07

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

#!/bin/sh
#检测redsocks2运行是否正常,如果不正常就重启,需要加入计划任务使用.
#脚本放在客户机上面运行,需要配置好证书登陆.
list='https://www.youtube.com'
httpcode=`curl -o /dev/null -s -w %{http_code} --connect-timeout 10 "$list"`
if [ $httpcode = 200 ]||[ $httpcode = 301 ]||[ $httpcode = 302 ]
then
echo "$list is checked ok!"
else
echo "$list is down!" 
ssh root@openwrt '/etc/init.d/redsocks2 restart'
fi

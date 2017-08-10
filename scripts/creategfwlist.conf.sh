#!/bin/bash
#根据AutoProxy规则自动创建 dnsmasq.conf文件
#需要wget支持https,base64
#可以配合luci-app-shadowsocks,dnsmasq-full,做成只代理指定域名.
#需要修改luci-app-shadowsocks的/usr/bin/ss-rules文件,其中的-A SS_SPEC_WAN_AC -j SS_SPEC_WAN_FW改为-A SS_SPEC_WAN_AC -j RETURN,让默认都不走代理.
#以下按需修改
mydnsip='192.168.1.1';
mydnsport='2053';
mydnsname=(
dmhy.org
google.com.hk
opensuse.org
github.io
github.com
schmorp.de
libsodium.org
);
#结果文件,生成后上传到路由器/etc/dnsmasq.conf
gfwoutfile='./dnsmasq.conf';
#以下一般不用修改
ipsetname='ss_spec_dst_fw';
baseurl='https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt';
tmpfile='/tmp/gfwlisttmp';
outfile='/tmp/gfwlist.conf';
wget -O- $baseurl|base64 -d >$tmpfile
echo '' > $outfile;
cat $tmpfile |grep -v '^!'|grep -v '^@'|grep -v '%'|grep -v '\['|grep -v '^$'|grep '\.'|while read line;do
line=${line##*/};
line=${line##*|};
line=${line#*.};
line=${line%%/*};
echo ${line} >> $outfile;
done;
rm $gfwoutfile;
cat $outfile|grep -v '%'|grep -v '/'|grep -v '^$'|grep '\.'|while read line;do
cunzai=`cat $gfwoutfile|grep "$line"`;
if [ "$cunzai" == "" ] ;then
echo "server=/.${line}/${mydnsip}#${mydnsport}" >> $gfwoutfile;
echo "ipset=/.${line}/${ipsetname}" >> $gfwoutfile;
else
echo "${line} exists";
fi
done; 

length=${#mydnsname[*]};
i=0;
while [ $i -lt $length ]
do
echo "server=/.${mydnsname[$i]}/${mydnsip}#${mydnsport}" >> $gfwoutfile;
echo "ipset=/.${mydnsname[$i]}/${ipsetname}" >> $gfwoutfile;
let i++;
done;

#!/bin/sh
#删除7天以前的bt种子文件.
#需要find的-mtime参数支持
dir=/mnt/sda1/tmp
config_dir=/mnt/sda1/.aria2
if [ ! -f "/etc/crontabs/root" ]; then 
	echo "1 3 * * 1 /mnt/sda1/.aria2/rmoldtorrent.sh" > /etc/crontabs/root
	echo " " >> /etc/crontabs/root
	echo 'root' >> /etc/crontabs/cron.update
else
	cun=`grep 'rmoldtorrent.sh' /etc/crontabs/root`
	if [ "$cun" = "" ];then
		sed -i 1i\\'1 3 * * 1 /mnt/sda1/.aria2/rmoldtorrent.sh' /etc/crontabs/root
	fi
fi
grep -i '.torrent' $config_dir/aria2.session > /tmp/list1
find $dir -type f -iname '*.torrent' -mtime +7  > /tmp/list2
grep -vf /tmp/list1 /tmp/list2 | xargs rm -rf
find $dir -type d -exec rmdir {} \;


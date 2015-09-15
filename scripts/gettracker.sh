#!/bin/sh
#在luci添加修改附加的tracker感觉有点麻烦.
#可以修改tracker.list文件,一行一个.然后用这个脚本导出luci用的格式直接添加到config文件里
echo "       option bt_tracker '"$(cat tracker.list | grep -v '^$'|sed ':x;N;s/\n/,/g;b x')"'";

#!/bin/sh
server=`ps w | grep haproxy| grep -v grep| grep -v haproxy.sh`
if [ ! "$server" ]; then
 /etc/init.d/haproxy start
fi

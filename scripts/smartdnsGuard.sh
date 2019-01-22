#!/bin/sh
runing=`netstat -nulp|grep smartdns|grep 5353|wc -l`
if [ "$runing" -eq 1 ] ;then
	echo runing;
else
	echo no;
	/etc/init.d/smartdns restart;
fi


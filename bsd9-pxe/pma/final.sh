#!/bin/sh
/usr/sbin/bsdinstall hostname
/usr/sbin/bsdinstall netconfig
cat /etc/rc.conf /tmp/bsdinstall_etc/rc.conf.* > /tmp/rc.conf
mv /tmp/rc.conf /etc/rc.conf
cp /tmp/bsdinstall_etc/resolv.conf /etc/resolv.conf
rm -rf /tmp/bsdinstall_*/
rm /tmp/final.sh

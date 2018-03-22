#!/bin/bash

modprobe ufs || echo "Couldn't modprobe ufs."

list=`fdisk -l | grep UFS | cut -d '/' -f 3 | cut -d ' ' -f 1`

for device in $list; do
	rm -r $device 2>/dev/null
	mkdir -r $device 2>/dev/null
	mount -r -t ufs -o ufstype=ufs2 /dev/$device $device 2>/dev/null
done

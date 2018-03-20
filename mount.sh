#!/bin/bash

dev_list=`lsblk | grep -oE 'sd[bcd][0-9]'`

for item in $dev_list; do
	rm -r $item 2>/dev/null
	mkdir $item
	mount /dev/${item} $item 2>/dev/null
done




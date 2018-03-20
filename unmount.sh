#!/bin/bash

dev_list=`ls | find . -iname '*sd*' | sed 's/\.\///g'`

for mount_point in $dev_list; do
	umount $mount_point 2>/dev/null
	rm -r $mount_point 2>/dev/null
done


#!/bin/bash
#checking whether the disk space is utilized above 80%
echo "checking disk utilization!!!!!......"
disk_size=$(df -h|grep "/dev/nvme0n1p2"|awk '{print $5}'|cut -d '%' -f 1)
echo "$disk_size% of disk is filled "
if [ $disk_size -gt 80 ];
then
	echo "disk is utilized more than 80%,expand or delete files soon!!!..."
else
	echo "enough disk is available"
fi
	

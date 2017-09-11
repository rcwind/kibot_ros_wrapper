#!/bin/sh 
# usage: source setup_network_pc.sh
#ip_of_pc=`ifconfig eth0|grep 'inet add'|awk -F "[: ]" '{print $13}'`
# 用户配置这个，使用的网卡设备名字
#NET_DEV=eth0
NET_DEV=wlan0
export IP_OF_KIBOT=`ifconfig $NET_DEV |awk -F\: '/inet / {print $2}'|awk '{print $1}'`

export ROS_MASTER_URI=http://$IP_OF_KIBOT:11311
export ROS_HOSTNAME=$IP_OF_KIBOT

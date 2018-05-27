#!/bin/sh 
# usage: source setup_network_pc.sh
#IP_OF_REMOTE=`ifconfig eth0|grep 'inet add'|awk -F "[: ]" '{print $13}'`
# 用户配置这个，使用的网卡设备名字
#NET_DEV=eth0
NET_DEV=wlan0
export IP_OF_REMOTE=`ifconfig $NET_DEV |awk -F\: '/inet / {print $2}'|awk '{print $1}'`
# 用户配置这个，kibot机器人上的笔记本ip地址
export IP_OF_KIBOT=172.29.0.3
#export IP_OF_kibot=192.168.10.213
# 用户配置这个，kibot机器人上笔记本ssh登录名字
export USERNAME_IN_KIBOT=kidil
# 用户配置这个，kibot机器人上笔记本ssh登录后提示的信息，也即终端的输出前缀，比如[kibot@localhost ~]，可以使用通配符
export LOGIN_PROMPT="kidil@orangepipcplus:*"
#export LOGIN_PROMPT="*~$*"

export ROS_MASTER_URI=http://$IP_OF_KIBOT:11311
export ROS_HOSTNAME=$IP_OF_REMOTE

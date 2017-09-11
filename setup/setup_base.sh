#!/bin/sh 
# usage: source setup_base.sh
# turtlebot默认的base就是kobuki, 默认的3d sensor是 asus xtion pro
#export TURTLEBOT_BASE=kobuki
#export TURTLEBOT_STACKS=hexagons
#export TURTLEBOT_3D_SENSOR=kinect
#export TURTLEBOT_SIMULATION=false
# 修改成底盘控制器的串口号
serial=ttyUSB0
#serial=rfcomm0

export TURTLEBOT_SERIAL_PORT=/dev/$serial    

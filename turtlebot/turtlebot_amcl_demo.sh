#!/bin/sh 
# Autonomous Navigation of a Known Map with TurtleBot
# usage: source turtlebot_amcl_demo.sh
export TURTLEBOT_MAP_FILE=/opt/ros/indigo/share/turtlebot_navigation/maps/willow-2010-02-18-0.10.yaml
roslaunch turtlebot_navigation amcl_demo.launch

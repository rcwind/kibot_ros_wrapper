#!/bin/bash
this_script_dir=$(cd "$(dirname "$0")"; pwd)
source $this_script_dir/env.sh && roslaunch turtlebot_rviz_launchers view_robot.launch

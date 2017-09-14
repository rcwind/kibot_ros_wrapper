#!/bin/bash
this_script_dir=$(cd "$(dirname "$0")"; pwd)
source $this_script_dir/env.sh && rosrun rqt_robot_monitor rqt_robot_monitor

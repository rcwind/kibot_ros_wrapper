#!/bin/bash
this_script_dir=$(cd "$(dirname "$0")"; pwd)
source $this_script_dir/env.sh && roslaunch kibot_nav odom_out_and_back.launch --screen

#!/bin/bash
this_script_dir=$(cd "$(dirname "$0")"; pwd)
source $this_script_dir/env.sh && rostopic pub turtlebot_panorama/take_pano std_msgs/Empty

#!/bin/bash
this_script_dir=$(cd "$(dirname "$0")"; pwd)
source $this_script_dir/env.sh && rosservice call turtlebot_panorama/take_pano 2 360.0 30.0 0.3

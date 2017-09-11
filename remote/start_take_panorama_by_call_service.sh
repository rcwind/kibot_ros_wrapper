#!/bin/bash
this_script_dir=$(cd "$(dirname "$0")"; pwd)
if [ $# = 1 ]; then
        degree=$1
else
        degree=360.0
fi

source $this_script_dir/env.sh && rosservice call turtlebot_panorama/take_pano 0 $degree 30.0 0.3

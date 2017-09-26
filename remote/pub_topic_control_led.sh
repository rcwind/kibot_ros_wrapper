#!/bin/bash
#参数
#off=0
#red=1
#green=2
#blue=3

this_script_dir=$(cd "$(dirname "$0")"; pwd)
if [ $# != 2 ]; then
        echo "please set the parameter"
        exit
else
        if [[ $1 != led1 && $1 != led2 ]]; then
                echo "parameter 1 is not correct"
                exit
        fi

        if [[ $2 != off && $2 != r && $2 != g && $2 != b ]]; then
                echo "parameter 2 is not correct"
                exit
        fi
fi

if [[ $2 == off ]]; then
        value=0
elif [[ $2 == g ]]; then
        value=1
elif [[ $2 == b ]]; then
        value=2
elif [[ $2 == r ]]; then
        value=3
fi

source $this_script_dir/env.sh && rostopic pub /mobile_base/commands/$1 kobuki_msgs/Led "value: $value"

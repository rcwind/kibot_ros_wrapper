#!/bin/bash
this_script_dir=$(cd "$(dirname "$0")"; pwd)
if [ $# != 1 ]; then
	echo "please set the parameter(on or off)"
        exit
else
        if [[ $1 != on && $1 != off ]]; then
		echo "parameter is not correct(on or off)"
                exit
        fi
fi

if [[ $1 == on ]]; then
	value=0
else
	value=1
fi

source $this_script_dir/env.sh && rostopic pub /mobile_base/commands/sound kobuki_msgs/Sound "value: $value"

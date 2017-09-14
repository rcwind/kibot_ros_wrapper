# !/bin/sh 
# buzzer on
rostopic pub /mobile_base/commands/sound kobuki_msgs/Sound "value: 0"
# buzzer off
#rostopic pub /mobile_base/commands/sound kobuki_msgs/Sound "value: 1"

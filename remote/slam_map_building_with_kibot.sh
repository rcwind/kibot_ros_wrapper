#!/bin/bash
#TODO:
#测试发现，kibot上的笔记本如果没用tmux建多窗口，首次执行这个脚本launch_cmd不会在kibot笔记本的终端执行，原因未知
#而且必须需要留一个多余的窗口出来执行launch_cmd
this_script_dir=$(cd "$(dirname "$0")"; pwd)
var=$0
file=${var##*/}
file_prefix=${file%%.*}
source $this_script_dir/env.sh
#make the minimal software been launched
ssh -t $USERNAME_IN_KIBOT@$IP_OF_KIBOT "sh /home/$USERNAME_IN_KIBOT/kibot_ros_wrapper/kibot/kill_tmux_window.sh"
#launch_cmd="$this_script_dir/expect/$file_prefix.expect $IP_OF_kibot $USERNAME_IN_kibot $LOGIN_PROMPT"
launch_cmd="$this_script_dir/kibot.expect $IP_OF_KIBOT $USERNAME_IN_KIBOT $LOGIN_PROMPT $file_prefix 1"
sleep 1
tmux kill-window -t :0 >>/dev/null || true
tmux new-window -k -t :0 "$launch_cmd"
tmux select-window -t :0

#start rviz already configured to visualize the robot and its sensor's output
sleep 8
tmux kill-window -t :1 >>/dev/null || true
tmux new-window  -k -t :1
tmux select-window -t :1
tmux send-keys -t :1 "source $this_script_dir/env.sh" Enter
tmux send-keys -t :1 "roslaunch turtlebot_rviz_launchers view_navigation.launch" Enter

tmux select-window -t :0


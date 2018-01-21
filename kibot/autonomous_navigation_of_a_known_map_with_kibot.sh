#!/bin/sh
#该脚本由kibot机器上笔记本使用
this_script_dir=$(cd "$(dirname "$0")"; pwd)

#make the minimal software been launched
#tmux kill-window -t :0
#sleep 1
sh $this_script_dir/bringup_kibot.sh

#start amcl_demo on the turtlebot laptop
#tmux kill-window -t :1
sleep 5
tmux new-window -k -t :1 
tmux select-window -t :1
tmux send-keys -t :1 "source $this_script_dir/env.sh" Enter
tmux send-keys -t :1 "roslaunch turtlebot_navigation amcl_demo.launch map_file:=/tmp/my_map.yaml" Enter


sleep 5
if [ $# = 0 ];then
        sleep 1
        tmux kill-window -t :2 >>/dev/null || true
        tmux new-window  -k -t :2
        tmux select-window -t :2
        tmux send-keys -t :2 "source $this_script_dir/env.sh" Enter
        tmux send-keys -t :2 "roslaunch turtlebot_rviz_launchers view_navigation.launch" Enter
fi

#!/bin/sh
#该脚本由kibot机器上笔记本使用
this_script_dir=$(cd "$(dirname "$0")"; pwd)
setup_base_path=$this_script_dir/../setup

#make the minimal software been launched
#tmux kill-window -t 0

sleep 1 

tmux new-window -k -t 0
tmux select-window -t 0

tmux send-keys -t 0 "source $this_script_dir/env.sh" Enter
tmux send-keys -t 0 "source $setup_base_path/setup_base.sh" Enter
tmux send-keys -t 0 "roslaunch kibot_bringup kibot_minimal.launch --screen" Enter

#start gmapping_demo on the turtlebot laptop
#tmux kill-window -t 1
sleep 5

#不使用robot_pose_ekf,使用robot_pose_ekf经常会出现filter time older than odom message buffer
#tmux new-window -k -t 1 
#tmux select-window -t 1
#tmux send-keys -t 1 "source $this_script_dir/env.sh" Enter
#tmux send-keys -t 1 "roslaunch kibot_bringup odom_ekf.launch" Enter

## 直接执行kibot文件夹下的该脚本应该不带参数，参数个数为0；执行remote文件夹下的同名脚本来执行kibot下的该脚本，需要带参数执行，参数随意，默认为1
#if [ $# = 0 ];then
        #sleep 1
        #tmux kill-window -t :2 >>/dev/null || true
        #tmux new-window  -k -t :2
        #tmux select-window -t :2
        #tmux send-keys -t :2 "source $this_script_dir/env.sh" Enter
        #tmux send-keys -t :2 "rosrun rviz rviz -d `rospack find kibot_nav`/rviz/nav_ekf.rviz" Enter
#fi
if [ $# = 0 ];then
        sleep 1
        tmux kill-window -t :1 >>/dev/null || true
        tmux new-window  -k -t :1
        tmux select-window -t :1
        tmux send-keys -t :1 "source $this_script_dir/env.sh" Enter
        tmux send-keys -t :1 "rosrun rviz rviz -d `rospack find kibot_nav`/rviz/nav_odom.rviz" Enter
fi

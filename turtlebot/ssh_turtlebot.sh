# !/bin/sh 
#ip_of_pc=`ifconfig eth0|grep 'inet add'|awk -F "[: ]" '{print $13}'`
# 可以设置免输密码，只需要第一次输入，后面的都不需要输入
# 修改成你的turtlebot ip地址
ip_of_turtlebot=10.0.2.75
# 修改成你的turtlebot机器上Ubuntu系统某个用户名
user_in_turtlebot=Administrator

if [ "$ip_of_turtlebot" == "" ]
then
        echo "error: The ip of the turtlebot is NOT set"
        return
fi

if [ "$user_in_turtlebot" == "" ]
then
        echo "error: The user name in the turtlebot is NOT set"
        return
fi

ssh $user_in_turtlebot@$ip_of_turtlebot

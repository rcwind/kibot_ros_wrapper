#!/bin/sh
#####################README###########################################
# display all session: tmux ls
# kill session: tmux kill-session -t session_name

#SESSIONS="arm work play"
SESSIONS="work"
#TMUX=`tmux new-session -d -s name`
#TMUX=


function has_session 
{
        tmux has-session -t $1 2>/dev/null
}

function except 
{
        if [ "$?" -eq 1 ] ; then
                $1
        fi
}

# Configure your sessions here
function create_session_work
{
        tmux new-session -d -s work 
        tmux new-window -t work:0 
        tmux new-window -t work:1 
        tmux new-window -t work:2 

        tmux select-window -t work:0
}


function session_arm
{
        cd ~/ftu/arm/arm/src/ 
        #echo "cd ~/ftu/arm/arm/src"
        tmux new-session -d -s arm
        cd ~/ftu/arm/arm/src/
        #tmux new-window -k -t arm:0 -n 'board' './logging_ut.expect'
        #tmux new-window -k -t arm:0 -n 'board' './logging_ut.expect'
        tmux new-window -k -t arm:0 -n 'board' 
        cd ~/ftu/arm/arm/src/ 
        tmux new-window -k -t arm:1 -n 'vim' 
        #tmux new-window -k -t arm:2 -n 'update' 'sudo yum update'

        tmux select-window -t arm:1
}


function session_play
{
        tmux new-session -d -s play
        tmux neww -k -t play:1
}
#MAIN 
for x in $SESSIONS
do
        #echo "check tmux if has session $x"
        #has_session $x
        #except session_$x
        tmux has-session -t $x 2>/dev/null
        if [ "$?" -eq 1 ] ; then
                #echo "tmux does not has session $x"
                create_session_$x
                tmux -2 attach-session -t $x
        else
                #echo "tmux has session $x, attach it"
                tmux -2 attach-session -t $x
        fi

done

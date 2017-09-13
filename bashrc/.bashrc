# .bashrc

################################################################################
# rm to trash, restore-trash
alias rm!="/bin/rm -vi"
# alias rm=trash


################################################################################
# directory for NFS export. Otherwise nfs.service start FAIL.
#mkdir -p ~/ftu/arm/drv/output
#mkdir -p ~/ftu/arm/arm/src/out/arm/release/build/bin
#mkdir -p ~/ftu/arm/arm/src/out/arm/debug/build/bin

################################################################################
# editor
#unalias -a
#export LC_ALL=C
set -o vi
export EDITOR="vim"
################################################################################
# alias
# User specific aliases and functions
alias vi="vim"
#alias pip="/usr/bin/pip-python"

# sys=~/ftu/arm/sys
# alias tosys='cd $sys'

# drv=~/ftu/arm/drv
# alias todrv='cd $drv'

# rls=~/ftu/arm/dturls
# alias torls='cd $rls'

# root=~/ftu/arm/arm/src
# src=$root/src
# inc=$root/inc
# ut=$root/utest
# debug=$root/out/arm/debug/build/bin
# alias toroot='cd $root'
# alias tor='cd $root'
# alias tod='cd $debug'

# alias tosrc='cd $src'
#alias tos='cd $src'
# tos() { 
        # if [ $# == 0 ]; then
                # # such as you are in <inc/xxx> now, you command tos, shell will 
                # # try jump to <src/xxx> if the path is exist, else jump to <src>.
                # bn=`basename $PWD`
                # obj_dir=$src/$bn
                # if [ -d $obj_dir ]; then
                        # cd $obj_dir
                # else
                        # cd $src
                # fi
        # else
                # cd $src/$@

        # fi
# }
# alias toc=tos

# alias toinc='cd $inc'
#alias toi='cd $inc'
#alias toh='cd $inc'
# toi() { 
        # if [ $# == 0 ]; then
                # bn=`basename $PWD`
                # obj_dir=$inc/$bn
                # if [ -d $obj_dir ]; then
                        # cd $obj_dir
                # else
                        # cd $inc
                # fi
        # else
                # cd $inc/$@

        # fi
# }
# alias toh='toi'

# alias toutest='cd $ut'
# #alias tou='cd $ut'
# tou() { 
        # if [ $# == 0 ]; then
                # bn=`basename $PWD`
                # obj_dir=$ut/$bn
                # if [ -d $obj_dir ]; then
                        # cd $obj_dir
                # else
                        # cd $ut
                # fi
        # else
                # cd $ut/$@

        # fi
# }

# alias tobuild='cd $build'
# alias tob='cd $build'

################################################################################
# http proxy
#export http_proxy="http://10.0.4.3:808"
#export https_proxy="http://10.0.4.3:808"
#export ftp_proxy="http://10.0.4.3:2121"

################################################################################
# cd
# pushd()
# {
        # if [ $# -eq 0 ]; then
                # DIR="${HOME}"
        # else
                # DIR="$1"
        # fi

        # builtin pushd "${DIR}" > /dev/null
        # #echo -n "DIRSTACK: "
        # #dirs
# }

# pushd_builtin()
# {
        # builtin pushd > /dev/null
        # #echo -n "DIRSTACK: "
        # #dirs
# }

# popd()
# {
        # builtin popd > /dev/null
        # #echo -n "DIRSTACK: "
        # #dirs
# }

#alias cd='pushd'
#alias back='popd'
#alias cd-='popd'
#alias flip='pushd_builtin'


################################################################################
# arm
#source ~/ftu/arm/toolchain/set_env.sh
#cd ~/ftu/arm/dturls/bin/ && ./set_env_create.sh && cd - > /dev/null
#source ~/ftu/arm/dturls/bin/set_env.sh
source ~/ubuntu_env_conf/bin/tmux_session.sh
# export ARM_ROOT=~/ftu/arm/arm/src

#export burn=~/ftu/arm/sys/burn/ftu/
#alias toburn='cd $burn'

#mkdir -p ~/ftu/arm/dtudebugenv
#sudo mount -t nfs 10.0.2.74:/home/all/dtudebugenv ~/ftu/arm/dtudebugenv

################################################################################
# disable ctrl-S lock putty scrren.
stty ixany
stty ixoff -ixon

# echo .bashrc ran $(date)


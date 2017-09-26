#!/bin/bash
this_script_dir=$(cd "$(dirname "$0")"; pwd)
source $this_script_dir/env.sh
mount_dst_dir=$IP_OF_KIBOT
fusermount -u ~/$mount_dst_dir

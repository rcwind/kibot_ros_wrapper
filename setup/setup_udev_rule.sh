#!/bin/sh
baseDirForScriptSelf=$(cd "$(dirname "$0")"; pwd)

sudo cp $baseDirForScriptSelf/70-ttyusb.rules /etc/udev/rules.d/
#重新插拔设备即可
sudo udevadm control --reload

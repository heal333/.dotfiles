#!bin/bash

state=$(bluetoothctl show | grep Powered | cut -d " " -f 2)

if [ $state = "yes" ];then
  bluetoothctl disconnect
  bluetoothctl power off
elif [ $state == "no" ];then

  bluetoothctl power on
fi

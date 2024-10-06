#!bin/bash
wifiState=$(nmcli r wifi)

if [ $wifiState == "enabled" ];then
  nmcli radio wifi off
elif [ $wifiState == "disabled" ];then
  nmcli radio wifi on
fi

#!bin/bash
wifiState=$(nmcli r wifi)

if [ $wifiState == "enabled" ];then
  nmcli radio wifi off
  nmcli networking off
elif [ $wifiState == "disabled" ];then
  nmcli networking on
  nmcli radio wifi on
fi

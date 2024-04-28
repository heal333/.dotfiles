#!bin/bash

currentState=$(cat /sys/class/backlight/intel_backlight/brightness)
maxState=$(cat /sys/class/backlight/intel_backlight/max_brightness)

if [ $1 == "++" ];then
  if (( currentState > 5000 ));then
    brightnessctl set +3%
  else
    brightnessctl set +1%
  fi
elif [ $1 == "--" ]; then
  if (( currentState > 10000 ));then
    brightnessctl set 3%-
  elif (( currentState > 1000 )); then
    brightnessctl set 1%-
  else
    brightnessctl set 1
  fi
fi


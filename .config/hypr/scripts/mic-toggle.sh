#!/bin/sh

wpctl set-mute @DEFAULT_SOURCE@ toggle

if wpctl get-volume @DEFAULT_SOURCE@ | grep -q "\[MUTED\]"; then
  notify-send "Microphone OFF"
else
  notify-send "Microphone ON"
fi


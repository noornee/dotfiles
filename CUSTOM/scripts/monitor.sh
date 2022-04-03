#!/bin/bash

export XAUTHORITY="/home/noornee/.Xauthority"
export DISPLAY=":0"
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$UID/bus"

internal_monitor="LVDS1"
external_monitor="DP-1-3" 
external_monitor_status=$(xrandr | grep $external_monitor | awk '{print $2}')

if [[ $external_monitor_status == "connected" ]]
then
	xrandr --output $external_monitor --mode "1920x1080"
	notify-send --urgency low --expire-time 2000 "connected to external monitor" $external_monitor
else
	xrandr --output $external_monitor --off --output $internal_monitor --primary --auto
	notify-send --urgency low --expire-time 2000 "connected to primary monitor" $internal_monitor
fi

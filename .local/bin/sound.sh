#!/bin/bash

function send_notification()
{
	vol_level=$(pactl get-sink-volume 0 | awk '{print $5}')
	dunstify -i /home/noornee/.local/share/icons/volume.png -u low -r 9478 -t 1000 -h int:value:$vol_level "volume: $vol_level%"
}

case $1 in
	"up")
		pactl set-sink-volume 0 +10%
		send_notification $1;;

	"down")
		pactl set-sink-volume 0 -10%
		send_notification $1;;
esac


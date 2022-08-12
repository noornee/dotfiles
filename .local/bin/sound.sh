#!/bin/bash

function send_notification()
{
	vol_level=$(amixer get Master | grep '%'| cut -d '[' -f2 | cut -d '%' -f1)
	dunstify -i /home/noornee/.config/CUSTOM/icons/volume.png -u low -r 9478 -t 1000 -h int:value:$vol_level "volume: $vol_level%"
}

case $1 in
	"up")
		amixer set 'Master' 10+
		send_notification $1;;

	"down")
		amixer set 'Master' 10-
		#amixer -D default set Master 10-
		send_notification $1;;
esac


#!/bin/bash

function send_notification()
{
	back_level=$(brillo)
	dunstify -i /home/noornee/.local/share/icons/brightness.png -u low -r 9478 -t 1000 -h int:value:$(brillo) "Brightness: $back_level%"
}

case $1 in
	"up")
		brillo -A 3
		send_notification $1;;
	"down")
		brillo -U 3
		send_notification $1;;
esac


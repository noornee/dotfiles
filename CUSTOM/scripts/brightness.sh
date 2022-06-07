#!/bin/bash

function send_notification()
{
	back_level=$(xbacklight -get | awk '{print int($1)}')
	dunstify -i /home/noornee/.config/CUSTOM/icons/brightness.png -u low -r 9478 -t 1000 -h int:value:$(xbacklight -get) "Brightness: $back_level%"
}

case $1 in
	"up")
		xbacklight -inc 10
		send_notification $1;;
	"down")
		xbacklight -dec 10
		send_notification $1;;
esac


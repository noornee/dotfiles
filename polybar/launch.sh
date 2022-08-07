#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


# Launch Polybar, using default config location ~/.config/polybar/config

polybar main --config=~/.config/polybar/config.ini &

if [[ $(xrandr | grep "DP-1-3 connected") ]];then
	$HOME/.local/bin/screen.sh
	polybar external --config=~/.config/polybar/config.ini &
fi


echo "Polybar launched..."

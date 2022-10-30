#!/bin/sh
internal="LVDS-1"
external="DP-1-3"

#xrandr --output $internal --off --output $external --mode 1920x1080 
xrandr --output $internal --auto --output $external --mode 1920x1080 --right-of $internal
xrandr --output $external --set underscan on
xrandr --output $external --set "underscan hborder" 30 --set "underscan vborder" 18

#!/bin/bash

# change directory to .config
cd $HOME/.config/
# copies all custom configs to the dotfiles repo
cp -r CUSTOM bspwm mpv nvim picom polybar rofi sxhkd ./dotfiles
# deletes watch_later
rm -r $HOME/.config/dotfiles/mpv/watch_later

# send notification
ret_status=$?
if [[ $ret_status -eq 0 ]]
then
    notify-send -t 1000 -u low "done updating"
else
    notify-send -t 2000 -u critical "there was an error updating dotfiles"
fi

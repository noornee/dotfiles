#!/bin/bash

cd $HOME/.config/
cp -r CUSTOM bspwm mpv nvim picom polybar sxhkd zathura tmux alacritty $HOME/.zshrc ./dotfiles

# send notification
ret_status=$?
if [[ $ret_status -eq 0 ]]
then
    notify-send -t 1000 -u low "done updating"
else
    notify-send -t 2000 -u critical "there was an error updating dotfiles"
fi

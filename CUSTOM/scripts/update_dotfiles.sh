#!/bin/bash

cd $HOME/.config/
rsync -hav \
	alacritty bspwm CUSTOM lf mpv nvim picom polybar sxhkd tmux zathura zsh $HOME/.zshenv \
	$HOME/.config/dotfiles/


# send notification
ret_status=$?
if [[ $ret_status -eq 0 ]]
then
    notify-send -t 1000 -u low "done updating"
else
    notify-send -t 2000 -u critical "there was an error updating dotfiles"
fi

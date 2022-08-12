#!/bin/bash

cp $HOME/.zshenv $HOME/.config/dotfiles

rsync -hav $HOME/.local/bin/* $HOME/.config/dotfiles/.local/bin/

rsync -hav \
	$HOME/.config/{alacritty,bspwm,lf,mpv,nvim,picom,polybar,sxhkd,tmux,zathura,zsh} \
	$HOME/.config/dotfiles/.config/



# send notification
ret_status=$?
if [[ $ret_status -eq 0 ]]
then
    notify-send -t 1000 -u low "done updating"
else
    notify-send -t 2000 -u critical "there was an error updating dotfiles"
fi

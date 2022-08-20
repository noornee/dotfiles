#!/bin/bash

cp $HOME/{.zshenv,.Xresources} $HOME/.config/dotfiles
cp $HOME/.local/bin/* $HOME/.config/dotfiles/.local/bin/
cp $HOME/.local/share/icons/* $HOME/.config/dotfiles/.local/share/icons/

rsync -hav \
	$HOME/.config/{alacritty,bspwm,lf,mpv,nvim,picom,polybar,sxhkd,tmux,zathura,zsh,ncmpcpp} \
	$HOME/.config/dotfiles/.config/

cp $HOME/.config/mpd/mpd.conf $HOME/.config/dotfiles/.config/mpd




# send notification
ret_status=$?
if [[ $ret_status -eq 0 ]]
then
    notify-send -t 1000 -u low "done updating"
else
    notify-send -t 2000 -u critical "there was an error updating dotfiles"
fi

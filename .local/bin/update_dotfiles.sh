#!/bin/bash

cp $HOME/.local/bin/* $HOME/.config/dotfiles/.local/bin/

rsync -hav \
	$HOME/.config/{lf,nvim,tmux,zsh} \
	$HOME/.config/dotfiles/.config/

cp "$HOME/.zshenv" "$HOME/.config/dotfiles/"

# send notification
ret_status=$?
if [[ $ret_status -eq 0 ]]
then
    termux-toast "done updating"
else
    termux-toast "there was an error updating dotfiles"
fi

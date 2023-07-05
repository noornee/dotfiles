#!/usr/bin/bash

SAVE_PATH="$HOME/media/pictures/screenshots"

IMG_OLD=$(scrot --select --freeze -e 'echo $f')
IMG_NEW=$(echo $IMG_OLD | dmenu -i -p "rename:")



# send notfication with notify-send
function send_notification(){
	notify-send --icon $1 "scrot" $1
}

if [[ $IMG_NEW == *.png ]]; then
	# if the image name wasnt changed, move it to a new path
	NEW_PATH="$SAVE_PATH/$IMG_NEW"
	mv $HOME/$IMG_OLD $NEW_PATH
	send_notification $NEW_PATH
else
	# if the image name was changed, move it to a new path called "$SAVE_PATH/named" and rename
	# if i rename an image then its cos i wanna use it for something so i choose to move it to a different directory for quick access
	NEW_PATH="$SAVE_PATH/named/$IMG_NEW.png"
	mv $HOME/$IMG_OLD $NEW_PATH
	send_notification $NEW_PATH
fi



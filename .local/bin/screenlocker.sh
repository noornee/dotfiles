#!/usr/bin/env bash

# lock screen in 10 minutes of idleness
xautolock -time 10 \
	-locker "i3lock-fancy -f  Iosevka-Bold-Italic-Nerd-Font-Complete -t 'Input Password to Unlock' --nofork" \
	-detectsleep

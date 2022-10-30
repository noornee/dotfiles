if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx "$HOME/.config/x11/xinitrc" 2>/dev/null
fi

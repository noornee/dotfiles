#!/bin/bash

#notify-send -h int:value:100 "Working . " 

prompt=$(echo -e "Reboot\nShutdown" | dmenu -i -p "Power Options: ")

#-------------------------------------------------------#
# timer							#
# accepts two args, its duration in seconds and message #
# e.g. timer 10 "shutting down"				#								
#-------------------------------------------------------#
function timer() 
{
	dur=$1
	msg=$2
	while [[ $dur != 0 ]]
	do
		dur=$((dur - 1))
		notify-send --urgency=critical --expire-time=1000 "$msg in $dur seconds"
		sleep 1
	done
}

function clear_zsh_history()
{
	cat /dev/null > ~/.zsh_history
	notify-send --urgency=low --expire-time=1000 "zsh history cleared!"
}


function power_prompt()
{
	if [[ $prompt == "Reboot" ]];then
		bool=$(echo -e "No\nYes" | dmenu -i -p "Are you Sure You Want To Reboot ?")
		if [[ $bool == "Yes" ]];then
			timer 10 "rebooting"; sleep 10
			clear_zsh_history; reboot
		fi
	elif [[ $prompt == "Shutdown" ]];then
		bool=$(echo -e "No\nYes" | dmenu -i -p "Are you Sure You Want To ShutDown ?")
		if [[ $bool == "Yes" ]];then
			clear_zsh_history; shutdown -h 
			timer 60 "shutting down"
		fi	
	fi
}

power_prompt


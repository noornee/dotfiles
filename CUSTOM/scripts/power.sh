#!/bin/bash

#notify-send -h int:value:100 "Working . " 

#prompt=$(echo -e "No\nYes" | dmenu -i -p "Are you Sure You Want To ShutDown ?")

alias clh="history -c"

prompt=$(echo -e "Reboot\nShutdown" | dmenu -i -p "Power Options: ")

function power_prompt()
{
	if [[ $prompt == "Reboot" ]];then
		bool=$(echo -e "No\nYes" | dmenu -i -p "Are you Sure You Want To Reboot ?")
		case $bool in
			"Yes")
				echo "hi" | clh ;;
		esac
	elif [[ $prompt == "Shutdown" ]];then
		bool=$(echo -e "No\nYes" | dmenu -i -p "Are you Sure You Want To ShutDown ?")
		if [[ $bool == "Yes" ]];then
			shutdown now | clh
		fi	
	fi
}

power_prompt

function power(){
	echo "hi"
#	if [[ $1 == "Yes" ]];then
#		for t in $(seq 0 4 | tr '\n' ' ' | rev)
#		do
#			if [[ $t != 0 ]];then
#				notify-send --urgency=critical --expire-time=1000 "shutting down in" $t
#				sleep 1
#			elif [[ $t == 0 ]]
#			then
#		 		shutdown now | history -c 
#				#echo "boom"
#			fi
#		done
#	elif [[ $1 == "No" ]];then
#		notify-send --expire-time=1000 "disengage from shutting down"
#	else
#		notify-send "invalid input"
#	fi
}


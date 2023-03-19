#!/bin/zsh
i3status --config ~/.i3status.conf | while :
do
	        read line
		        LG=$(setxkbmap -query | awk '/layout/{print $2}') 
			        echo "LG: $LG | $line" || exit 1
			done

#!/bin/zsh

if xrandr | grep -w 'HDMI-2 connected'; then 
	if xrandr | grep -w 'DP-1 connected'; then
		xrandr --output eDP-1 --off --output HDMI-2 --primary --mode 2560x1080 --rate 75.00 --output DP-1 --rotate right --right-of HDMI-2
		nitrogen --set-auto ~/Pictures/desktop1.jpg --head=0
		nitrogen --set-auto ~/pictures/desktop2.jpg --head=1 
	else 
		xrandr --output eDP-1 --off --output HDMI-2 --primary --mode 2560x1080 --rate 75.00       	
		nitrogen --set-auto ~/Pictures/desktophd.jpg --head=0
	fi
else
    nitrogen --set-auto ~/Pictures/desktop1.jpg --head=0
fi	

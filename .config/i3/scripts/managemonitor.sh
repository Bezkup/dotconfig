#!/bin/zsh

if xrandr | grep -w 'HDMI-1 connected'; then 
	if xrandr | grep -w 'DP-1 connected'; then
		xrandr --output eDP-1 --off --output HDMI-1 --primary --mode 2560x1080 --rate 75.00 --output DP-1 --rotate right --right-of HDMI-1
		nitrogen --set-auto ~/Pictures/desktop1.jpg --head=0
		nitrogen --set-auto ~/Pictures/desktop2.jpg --head=1 
	else 
		xrandr --output eDP-1 --off --output HDMI-1 --primary --mode 2560x1080 --rate 75.00       	
		nitrogen --set-auto ~/Pictures/desktophd.jpg --head=0
	fi
else
    xrandr --output eDP-1 --primary
    nitrogen --set-auto ~/Pictures/desktop1.jpg --head=0
fi	

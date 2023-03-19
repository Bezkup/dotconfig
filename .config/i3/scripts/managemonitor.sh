#!/bin/zsh

if xrandr | grep -E 'HDMI-2 connected'; then 
	if xrandr | grep -E 'DP-1 connected'; then
		xrandr --output eDP-1 --off --output HDMI-2 --primary --mode 2560x1080 --rate 75.00 --output DP-1 --rotate right --right-of HDMI-2
		nitrogen --set-auto ~/Pictures/desktop1.jpg --head=0
		nitrogen --set-auto ~/Pictures/desktop2.jpg --head=1 
	else 
		xrandr --output eDP-1 --off --output HDMI-2 --primary --mode 2560x1080 --rate 75.00       	
		nitrogen --set-auto ~/Pictures/desktop1.jpg --head=0
	fi
fi	

nitrogen --set-auto ~/Pictures/desktop1.jpg --head=0

#!/bin/sh
    
pkill -x sxhkd
sxhkd -c ~/.config/bspwm/sxhkdrc &

feh --bg-scale /usr/share/wallpapers/DarkestHour/contents/images/1920x1080.jpg

pkill -x picom
picom -b

pkill -x polybar
polybar bspwm-DP-2 &
polybar bspwm-DP-0 &

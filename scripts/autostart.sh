#!/bin/sh

#-#-#--AUTOSTART~~~
sxhkd &
# killall -p polybar &
polybar -c ~/.config/polybar/config main &
dunst -conf ~/.config/dunst/dunstrc &
picom -b
feh --no-fehbg --bg-scale "$1"



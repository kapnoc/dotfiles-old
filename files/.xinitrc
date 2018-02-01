#!/bin/sh
# $XConsortium: xinitrc.cpp,v 1.4 91/08/22 11:41:34 rws Exp $

setxkbmap us_intl
blueman-applet &
nm-applet &
compton -b --xrender-sync-fence --config ~/.config/compton.conf
/home/tanguy/bin/aled-flux
feh --bg-center /home/tanguy/Pictures/Wallpapers/wallpaper2.png
xset -b

#exec perso/kekwm/kekwm
#exec bspwm
#exec startxfce4
#compton -c -b
#xrandr --output DP2 --mode 1920x1080 --right-of eDP1
slstatus &
ssh-agent dwm
#exec ck-launch-session dbus-launch xfce4-session
#exec ck-launch-session dbus-launch awesome
#exec ck-launch-session dbus-launch startkde
#exec cinnamon-session
#exec ck-launch-session dbus-launch gnome-session
#exec ck-launch-session dbus-launch i3
#exec ck-launch-session dbus-launch mate-session

#feh --bg-center /home/tanguy/Pictures/Wallpapers/wallpaper2.png
#/home/tanguy/bin/xflux -l 48.7 -g 6.2 -k 2500

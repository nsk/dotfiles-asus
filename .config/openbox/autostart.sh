#!/bin/bash
# D-bus
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
       eval `dbus-launch --sh-syntax --exit-with-session`
fi

#brightness in userspace
xbacklight -set 30 &
numlockx &
nitrogen --restore &
xcompmgr -c -t-3 -l-5 -r4.2 &
dropboxd &
tint2 & 
volwheel&
thunar --daemon &
mpd ~/.mpd/config &
sonata --hidden &
pidgin &
gnote&
parcellite &

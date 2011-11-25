#!/bin/bash

# D-bus
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
       eval `dbus-launch --sh-syntax --exit-with-session`
fi

###  se non faccio finta di avere una sessione aperta di gnome tweetdeck non parte :)
########################################################




####
#brightness in userspace
xbacklight -set 30 &
####
###
# numlock attivo all'avvio
numlockx &
###



nitrogen --restore &
#xcompmgr -c -t-5 -l-5 -r4.2 -o.55 & # -I1 -O1 -m0.90 &
xcompmgr -c -t-3 -l-5 -r4.2 &
#numlockx on &
dropboxd &
tint2 & 
volwheel&
thunar --daemon &
mpd ~/.mpd/config &
#mpdscribble &
#bmpanel2 &
sonata --hidden &
#wicd-gtk &
pidgin &
gnote&
########################################################

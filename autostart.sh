#!/usr/bin/env bash

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run picom	    # composoitor
run nm-applet	# gui for network manager
run pasystray	# sound control

run xset r rate 250 25
# run exec setxkbmap -layout us,ru -option grp:lctrl_lwin_toggle


# other
run ~/develop/other/scripts/autostart.sh

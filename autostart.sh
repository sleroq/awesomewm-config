#!/usr/bin/env bash

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run picom	# composoitor
run flameshot	# screenshots
run nm-applet	# gui for network manager
run pasystray	# sound control
# pavucontrol-qt
run xset r rate 250 25
# run exec setxkbmap -layout us,ru -option grp:lctrl_lwin_toggle

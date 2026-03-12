#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
#run "/usr/bin/pipewire"
setxkbmap -layout "us,se,ee" -option grp:alt_shift_toggle -option compose:rctrl 
xset b off
#nitrogen --restore
feh --bg-scale /usr/share/backgrounds/archlinux/simple.png
run "/usr/bin/picom"

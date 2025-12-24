#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
run "/usr/bin/pipewire"
setxkbmap -layout "us,ee,se" -option grp:alt_shift_toggle -option compose:rctrl 
run "compton &"

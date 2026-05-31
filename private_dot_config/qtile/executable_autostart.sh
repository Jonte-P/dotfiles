#!/bin/sh
run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
#run "/usr/bin/pipewire"
run "/usr/bin/gentoo-pipewire-launcher"
run "/usr/libexec/polkit-gnome-authentication-agent-1"
run "xfce4-power-manager"
xset b off
#nitrogen --restore
run "wpaperd"
#run "xcompmgr"

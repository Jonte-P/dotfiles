#!/bin/sh
run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
run "/usr/bin/pipewire"
run "/usr/libexec/xfce-polkit"
run "xfce4-power-manager"
xset b off
nitrogen --restore
run "xcompmgr"

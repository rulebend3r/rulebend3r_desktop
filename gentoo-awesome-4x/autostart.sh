#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run "compton"
pkill conky

sleep 3
run "conky -c /home/rulebend3r/.config/awesome/conky/conkyrc"

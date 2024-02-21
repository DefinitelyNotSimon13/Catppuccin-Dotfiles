#! /bin/env bash

function percent() {
  brightnessctl -m | cut -d "," -f 4 | sed 's/%//'
}

function set() {
  if [ -z "$1" ]; then
    notify-send "Empty"
    exit 1
  fi
  brightnessctl s "$1"%
}

function follow() {
  local brightness=""
  brightness=$(percent)
  echo "$brightness"
  local newBrightness=""
  while sleep 0.1; do
    newBrightness=$(percent)
    if [[ $newBrightness -ne $brightness ]]; then
      brightness=$newBrightness
      echo "$newBrightness"
    fi
  done
}

case "$1" in
  "percent") percent;;
  "set") set "$2";;
  "follow") follow;;
  *) echo "Unknown parameter!";;
esac

#! /bin/env bash

function wifiBool() {
  statusWifi=$(nmcli r wifi)
  statusNetwork=$(nmcli n)
  [[ "$statusWifi" == "enabled" && "$statusNetwork" == "enabled" ]]\
    && echo 1 || echo 0
}

function networkBool() {
  statusNetwork=$(nmcli n)
  [[ "$statusNetwork" == "enabled" ]] && echo 1 || echo 0
}

function toggleWifi() {
  status=$(nmcli r wifi)
  if [ "$status" == "enabled" ];then
    nmcli r wifi off
  elif [ "$status" == "disabled" ];then
    nmcli r wifi on
  else
    notify-send "Error" "Unknown wifi status"
  fi
}

function toggleNetworking() {
  status=$(nmcli n)
  if [ "$status" == "enabled" ];then
    nmcli n off
  elif [ "$status" == "disabled" ];then
    nmcli n on
  else
    notify-send "Error" "Unknown network status"
  fi
}

function followWifi(){
  local enabled=""
  enabled=$(wifiBool)
  echo "$enabled"
  local newEnabled=""
  while sleep 1; do
    newEnabled=$(wifiBool)
    if [ "$newEnabled" -ne "$enabled" ]; then
      enabled=$newEnabled
      echo "$newEnabled"
    fi
  done
}

function followNetworking(){
  local enabled=""
  enabled=$(networkBool)
  echo "$enabled"
  local newEnabled=""
  while sleep 1; do
    newEnabled=$(networkBool)
    if [ "$newEnabled" -ne "$enabled" ]; then
      enabled=$newEnabled
      echo "$newEnabled"
    fi
  done
}

case "$1" in
  "toggleWifi") toggleWifi;;
  "toggleNetworking") toggleNetworking;;
  "followWifi")followWifi;;
  "followNetworking")followNetworking;;
  *) echo "Unknown parameter"
esac

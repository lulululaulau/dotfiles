#!/bin/bash


target=$(defaults read com.apple.screencapture target)

if [[ "${target}" == "clipboard" ]]; then
  sketchybar --set $NAME label="clipboard"
else
  sketchybar --set $NAME label="$(defaults read com.apple.screencapture location)"
fi


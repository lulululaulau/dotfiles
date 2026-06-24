#!/bin/bash

echo $$ > ~/.config/sketchybar/plugins/spotifyHandlerPID
sleep 1
if [ $$ -ne $(cat ~/.config/sketchybar/plugins/spotifyHandlerPID) ]; then
  exit
fi

sketchybar --trigger spotify_change

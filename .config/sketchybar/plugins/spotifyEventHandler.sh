#!/bin/bash

echo $$ > ~/.config/sketchybar/plugins/spotifyHandlerPID
sleep 0.3
if [ $$ -ne $(cat ~/.config/sketchybar/plugins/spotifyHandlerPID) ]; then
  exit
fi

sketchybar --trigger spotify_change

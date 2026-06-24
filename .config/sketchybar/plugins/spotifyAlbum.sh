#!/bin/bash
RUNNING=$(osascript -e 'if application "Spotify" is running then return 0')
if [ "$RUNNING" == "" ]; then
  RUNNING=1
fi
STOPPED=1
TRACK=""
ALBUM=""
ARTIST=""
if [ "$(osascript -e 'if application "Spotify" is running then tell application "Spotify" to get player state')" == "stopped" ]; then
  STOPPED=0
fi
TRACK=$(osascript -e 'tell application "Spotify" to get name of current track')
ARTIST=$(osascript -e 'tell application "Spotify" to get artist of current track')
ALBUM=$(osascript -e 'tell application "Spotify" to get album of current track')
if [ $RUNNING -eq 0 ] && [ $STOPPED -eq 1 ]; then
  LABEL="$ARTIST - $ALBUM"
  LABEL=$(echo ${LABEL} | sed -e "s/’/'/g")
  LABEL=$(echo ${LABEL} | sed -e "s/　/ /g")
  sketchybar -m --set $NAME label="$LABEL"
else
  sketchybar -m --set $NAME label="Not Playing"
fi

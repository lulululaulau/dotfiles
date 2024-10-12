#!/bin/bash
# from https://github.com/ssate/dotfiles/blob/master/sketchybar/plugins/spotifyIndicator.sh
RUNNING=$(osascript -e 'if application "Spotify" is running then return 0')
if [ "$RUNNING" == "" ]; then
  RUNNING=1
fi
TRACK=""
ALBUM=""
ARTIST=""
#if [ "$(osascript -e 'if application "Spotify" is running then tell application "Spotify" to get player state')" == "playing" ]; then
  TRACK=$(osascript -e 'tell application "Spotify" to get name of current track')
  ARTIST=$(osascript -e 'tell application "Spotify" to get artist of current track')
  ALBUM=$(osascript -e 'tell application "Spotify" to get album of current track')
#fi
if [ $RUNNING -eq 0 ]; then
  if [ "$ARTIST" == "" ]; then
    LABEL="$ALBUM - $TRACK"
  else
    LABEL="$ARTIST - $TRACK"
  fi
  if (( $(echo $LABEL | wc -c) > 60 )); then
    LABEL="$(echo $LABEL | head -c 56) ..."
  fi
  sketchybar -m --set $NAME label="$LABEL"
else
  sketchybar -m --set $NAME label=""
fi


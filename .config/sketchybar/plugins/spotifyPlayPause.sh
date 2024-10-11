RUNNING=$(osascript -e 'if application "Spotify" is running then return 0')
if [ "$RUNNING" == "" ]; then
  RUNNING=1
fi

if [ "$(osascript -e 'if application "Spotify" is running then tell application "Spotify" to get player state')" == "playing" ]; then
  PLAYING=0
else
  PLAYING=1
fi

if [ $RUNNING -eq 0 ]; then
  sketchybar -m --set $NAME drawing=on
  if [ $PLAYING -eq 0 ]; then
    LABEL=""
  else
    LABEL=""
  fi
  sketchybar -m --set $NAME label="$LABEL"
else
  sketchybar -m --set $NAME drawing=off
  sketchybar -m --set $NAME label=""
fi


#!/bin/bash



if ( \
  curl $(osascript -e 'tell application "Spotify" to get artwork url of current track') \
  --output ~/.config/sketchybar/plugins/image.jpg
); then
  echo "image success"
else
  cp ~/.config/sketchybar/plugins/defaultImage.jpg ~/.config/sketchybar/plugins/image.jpg
fi

sketchybar -m --set $NAME background.image="~/.config/sketchybar/plugins/image.jpg"

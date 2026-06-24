#!/bin/bash

if ( \
  curl -s $(osascript -e 'tell application "Spotify" to get artwork url of current track') \
  --output ~/.config/sketchybar/plugins/image.jpg
); then
  sketchybar -m --set $NAME background.image="~/.config/sketchybar/plugins/image.jpg"
else
  sketchybar -m --set $NAME background.image="~/.config/sketchybar/plugins/defaultIimage.jpg"
  # cp ~/.config/sketchybar/plugins/defaultImage.jpg ~/.config/sketchybar/plugins/image.jpg
fi


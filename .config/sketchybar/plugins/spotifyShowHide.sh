#!/bin/bash
sketchybar --set spotifyNext drawing=toggle \
  --set spotifyPlayPause drawing=toggle \
  --set spotifyIndicator drawing=toggle \
  --set spotifyVol drawing=toggle

if ( \
  sketchybar --query spotifyVol | \
  tail -n +$(sketchybar --query spotifyVol | \
  grep "\"popup\"" -n | \
  sed -e "s/:.*//g") | \
  tail -n +2 | \
  sed -e ':again' -e N -e '$!b again' -e 's/{[^}]*}//g' | \
  grep "drawing" | \
  grep -q -e "on" \
); then
  sketchybar --set spotifyVolSlider drawing=off
  sketchybar --set spotifyVol popup.drawing=off
else
  sketchybar --set spotifyVolSlider drawing=on
fi


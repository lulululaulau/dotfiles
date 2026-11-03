#!/bin/bash

if ( \
  sketchybar --query spotifyIndicator | \
  tail -n +$(sketchybar --query spotifyIndicator | \
  grep "\"popup\"" -n | \
  sed -e "s/:.*//g") | \
  tail -n +2 | \
  sed -e ':again' -e N -e '$!b again' -e 's/{[^}]*}//g' | \
  grep "drawing" | \
  grep -q -e "on" \
); then
  sketchybar --set spotifyIndicator popup.drawing=off
fi

sketchybar --set spotifyNext drawing=toggle \
  --set spotifyPlayPause drawing=toggle \
  --set spotifyIndicator drawing=toggle \

#!/bin/bash
curl -s http://wttr.is/\?u\&format\="%l\n%c%C\n%t+(feels+like+%f)" --output ~/.config/sketchybar/plugins/weatherData

sketchybar --set $NAME label="$(cat ~/.config/sketchybar/plugins/weatherData | sed '3q;d' | sed -e "s/F//g" | sed -e "s/+//g" | head -c 4)"


sketchybar --trigger weatherUpdated


#!/bin/bash
sketchybar --set $NAME label="$(curl http://wttr.in/\?u\&format\="%f" | sed -e "s/F//g" | sed -e "s/+//g" | head -c 20)"



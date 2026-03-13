#!/bin/bash
sketchybar --set $NAME label="$(curl http://wttr.in/\?format\="%f" | sed -e "s/F//g" | sed -e "s/+//g")"



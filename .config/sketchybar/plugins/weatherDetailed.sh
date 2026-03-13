#!/bin/bash
# sketchybar --set $NAME label="$(curl http://wttr.in/\?format\="%c%C+%t(%f)")"
# sketchybar --set $NAME label="$(curl http://wttr.in/\?format\="%c")"
weatherData=$(curl http://wttr.in/\?format\="%c\n%C\n%t\n%f\n")
IFS=$'\n' read -rd '' -a weather <<<"$weatherData"

weatherIcon=${weather[0]}
weatherName=${weather[1]}
weatherTemp=$(echo ${weather[2]} | sed -e "s/°F//g" | sed -e "s/+//g")
weatherFeel=$(echo ${weather[3]} | sed -e "s/°F//g" | sed -e "s/+//g")

sketchybar --set $NAME label="${weatherIcon}${weatherName} ${weatherTemp}(${weatherFeel})°F"



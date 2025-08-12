#!/bin/bash

if [ ${1} -eq 1 ]; then
  ~/calendar/fiveevents.py > ~/.config/sketchybar/plugins/calendarEvents
  sketchybar --trigger calendarLoaded
fi
event=$(sed -n "${1}p" ~/.config/sketchybar/plugins/calendarEvents)

numEvents=$(wc -l ~/.config/sketchybar/plugins/calendarEvents | cut -c8-8)
if [ ${1} -gt ${numEvents} ]; then
  if [ ${1} -gt 1 ]; then
    LABEL="No More Events"
  else
    LABEL="No Events"
  fi
else
  if ( echo ${event} | cut -c11- | grep -q -e "^T" ) ; then
    datetime=$(gdate -d "$(echo ${event} | head -c 25)" +"%b %-d %-H:%M")
    summary=$(echo ${event} | cut -c27-)
  else
    datetime=$(gdate -d "$(echo ${event} | head -c 10)" +"%b %-d")
    summary=$(echo ${event} | cut -c12-)
  fi
  LABEL="${datetime} ${summary}"


  if (( $(echo $LABEL | wc -c) > 40 )); then
    LABEL="$(echo $LABEL | head -c 36) ..."
  fi
fi
sketchybar -m --set $NAME label="$LABEL"



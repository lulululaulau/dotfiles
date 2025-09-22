#!/bin/bash

# check internet connection before calling fiveevents.py
if [ ${1} -eq 0 ]; then
  if ( system_profiler SPAirPortDataType | grep -q "Status: Connected" ) ; then
    ~/calendar/fiveevents.py > ~/.config/sketchybar/plugins/calendarEvents
  fi
  sketchybar --trigger calendarLoaded
fi
if [ ${1} -gt 0 ]; then
  event=$(sed -n "${1}p" ~/.config/sketchybar/plugins/calendarEvents)
else
  event=$(sed -n "1p" ~/.config/sketchybar/plugins/calendarEvents)
fi

numEvents=$(wc -l ~/.config/sketchybar/plugins/calendarEvents | cut -c8-8)
if [ ${1} -gt ${numEvents} ]; then
  if [ ${1} -gt 1 ]; then
    LABEL="No More Events"
  else
    LABEL="No Events"
  fi
  if [ ${1} -eq 0 ]; then
    if [ ${numEvents} -gt 0 ]; then
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



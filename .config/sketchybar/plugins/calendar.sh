#!/bin/bash
event=$(~/calendar/nextevent.py)
date=$(echo ${event} | head -c 10) # YYYY-MM-DD
time=$(echo ${event} | cut -c12-19) # HH:MM:SS
# TODO handle all day events
# TODO check time zones?
summary=$(echo ${event} | cut -c27-) # text lol
LABEL="$(echo ${date} | cut -c6-7)/$(echo ${date} | cut -c9-10) $(echo ${time} | head -c 5) ${summary}"

if (( $(echo $LABEL | wc -c) > 40 )); then
  LABEL="$(echo $LABEL | head -c 36) ..."
fi
sketchybar -m --set $NAME label="$LABEL"




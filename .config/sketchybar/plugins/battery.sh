#!/bin/bash
LABEL=$(pmset -g batt | tail -n1 | grep -Eo "\d+%")

case "$LABEL" in
  0[0-9]%) ICON="󰂃" ;;
  [1-5][0-9]%) ICON="󰁾" ;;
  *) ICON="󰁹" ;;
esac

pmset -g batt | grep 'AC Power' > /dev/null && ICON="󰂄"

sketchybar --set $NAME icon="$ICON"
sketchybar --set $NAME icon.padding_right=5
sketchybar --set $NAME label="$LABEL"

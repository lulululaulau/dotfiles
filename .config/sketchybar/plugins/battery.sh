#!/bin/bash
LABEL=$(pmset -g batt | tail -n1 | grep -Eo "\d+%")

# 󰂎 󰁺 󰁻 󰁼 󰁽 󰁾 󰁿 󰂀 󰂁 󰂂 󰁹
case "$LABEL" in
  0[0-9]%) ICON="󰂃" ;;
  1[0-9]%) ICON="󰁺" ;;
  2[0-9]%) ICON="󰁻" ;;
  3[0-9]%) ICON="󰁼" ;;
  4[0-9]%) ICON="󰁽" ;;
  5[0-9]%) ICON="󰁽" ;;
  6[0-9]%) ICON="󰁿" ;;
  7[0-9]%) ICON="󰂀" ;;
  8[0-9]%) ICON="󰂁" ;;
  9[0-9]%) ICON="󰂂" ;;
  100%) ICON="󰁹" ;;
  # *) ICON="󰁹" ;;
  *)
    ICON=󰂃
    LABEL=$(pmset -g batt | tail -n2 | head -n1 | grep -Eo "\d+%")
    ;;
esac

pmset -g batt | grep 'AC Power' > /dev/null && ICON="󰂄"

sketchybar --set $NAME icon="$ICON"
sketchybar --set $NAME label="$LABEL"

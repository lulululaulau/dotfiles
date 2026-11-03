sketchybar --add event calendarLoaded


sketchybar --add item calEvent1 e \
    --set calEvent1 script="$PLUGINDIR/calendar.sh 0" \
                  click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
                  update_freq=3600 \
                  popup.y_offset=-24

calSubitem=(
  update_freq=0
  background.padding_right=5
)


sketchybar --add item cal1Clone popup.calEvent1 \
    --set cal1Clone script="$PLUGINDIR/calendar.sh 1" \
                    "${calSubitem[@]}" \
                    click_script="sketchybar -m --set calEvent1 popup.drawing=toggle" \
    --subscribe cal1Clone calendarLoaded
sketchybar --add item calEvent2 popup.calEvent1 \
    --set calEvent2 script="$PLUGINDIR/calendar.sh 2" \
                    "${calSubitem[@]}" \
    --subscribe calEvent2 calendarLoaded
sketchybar --add item calEvent3 popup.calEvent1 \
    --set calEvent3 script="$PLUGINDIR/calendar.sh 3" \
                    "${calSubitem[@]}" \
    --subscribe calEvent3 calendarLoaded
sketchybar --add item calEvent4 popup.calEvent1 \
    --set calEvent4 script="$PLUGINDIR/calendar.sh 4" \
                    "${calSubitem[@]}" \
    --subscribe calEvent4 calendarLoaded
sketchybar --add item calEvent5 popup.calEvent1 \
    --set calEvent5 script="$PLUGINDIR/calendar.sh 5" \
                    "${calSubitem[@]}" \
    --subscribe calEvent5 calendarLoaded

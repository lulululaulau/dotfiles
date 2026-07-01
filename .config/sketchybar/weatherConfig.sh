sketchybar --add item weather right \
    --set weather script="$PLUGINDIR/weather.sh" \
                  update_freq=600 \
                  click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
                  popup.align=right

sketchybar --add item weatherDetailed popup.weather \
    --set weatherDetailed script="$PLUGINDIR/weatherDetailed.sh" \
                          update_freq=600

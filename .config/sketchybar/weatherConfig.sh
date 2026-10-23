sketchybar --add event weatherUpdated

sketchybar --add item weather right \
    --set weather script="$PLUGINDIR/weather.sh" \
                  update_freq=600 \
                  click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
                  popup.align=right

sketchybar --add item weatherLocation popup.weather \
    --set weatherLocation script="$PLUGINDIR/weather.sh 1" \
    --subscribe weatherLocation weatherUpdated

sketchybar --add item weatherCondition popup.weather \
    --set weatherCondition script="$PLUGINDIR/weather.sh 2" \
    --subscribe weatherCondition weatherUpdated

sketchybar --add item weatherTemp popup.weather \
    --set weatherTemp script="$PLUGINDIR/weather.sh 3" \
    --subscribe weatherTemp weatherUpdated

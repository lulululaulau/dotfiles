sketchybar --add event weatherUpdated

sketchybar --add item weather right \
    --set weather script="$PLUGINDIR/weather.sh" \
                  update_freq=600 \
                  click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
                  popup.align=right

sketchybar --add item weatherLocation popup.weather \
    --set weatherLocation script="sketchybar -m --set \$NAME label=\"$(cat ~/.config/sketchybar/plugins/weatherData | sed '1q;d')\"" \
    --subscribe weatherLocation weatherUpdated

sketchybar --add item weatherCondition popup.weather \
    --set weatherCondition script="sketchybar -m --set \$NAME label=\"$(cat ~/.config/sketchybar/plugins/weatherData | sed '2q;d')\"" \
    --subscribe weatherCondition weatherUpdated

sketchybar --add item weatherTemp popup.weather \
    --set weatherTemp script="sketchybar -m --set \$NAME label=\"$(cat ~/.config/sketchybar/plugins/weatherData | sed '3q;d')\"" \
    --subscribe weatherTemp weatherUpdated

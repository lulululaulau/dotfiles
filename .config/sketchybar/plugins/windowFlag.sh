if ( cat /Library/Application\ Support/org.pqrs/tmp/karabiner_grabber_manipulator_environment.json | grep '"window_flag": 1' ) ; then
  LABEL="WM FLAG"
else
  LABEL=""
fi


sketchybar --set $NAME icon="$ICON"
sketchybar --set $NAME label="$LABEL"

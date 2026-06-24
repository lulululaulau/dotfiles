sketchybar --add event spotify_change "com.spotify.client.PlaybackStateChanged"
sketchybar --add event spotify_vol

sketchybar --add item spotifyShowHide q \
    --set spotifyShowHide label="" \
    drawing=on \
    click_script="$PLUGINDIR/spotifyShowHide.sh"

sketchybar --add item spotifyVol q \
    --set spotifyVol script="$PLUGINDIR/spotifyVol.sh" \
                     click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
                     update_freq=60 \
    --subscribe spotifyVol spotify_vol

sketchybar --add slider spotifyVolSlider popup.spotifyVol 100 \
    --set spotifyVolSlider click_script="$PLUGINDIR/spotifySetVol.sh" \
                           script="sketchybar -m --set spotifyVolSlider slider.percentage=\"$(osascript -e 'tell application "Spotify" to sound volume as integer')\"" \
                           update_freq=60 \
                           slider.percentage="$(osascript -e 'tell application "Spotify" to sound volume as integer')" \
                           slider.knob="" \
                           background.color=${primary_color} \
                           background.height=1

sketchybar --add item spotifyNext q \
    --set spotifyNext label="󰒭" \
                      click_script="osascript -e 'tell application \"Spotify\" to next track'"

sketchybar --add item spotifyPlayPause q \
    --set spotifyPlayPause script="$PLUGINDIR/spotifyPlayPause.sh" \
                          click_script="osascript -e 'tell application \"Spotify\" to playpause'" \
                          update_freq=60 \
    --subscribe spotifyPlayPause spotify_change

sketchybar --add item spotifyIndicator q \
    --set spotifyIndicator script="$PLUGINDIR/spotifyIndicator.sh" \
                          click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
                          update_freq=60 \
    --subscribe spotifyIndicator spotify_change

sketchybar --add item spotifyImage popup.spotifyIndicator \
    --set spotifyImage script="$PLUGINDIR/spotifyImage.sh" \
                      click_script="$PLUGINDIR/spotifyImage.sh" \
                      update_freq=0 \
                      background.drawing=on \
                      background.image="$PLUGINDIR/image.jpg" \
                      background.image.drawing=on \
                      background.image.scale=0.4 \
                      background.image.corner_radius=9 \
    --subscribe spotifyImage spotify_change


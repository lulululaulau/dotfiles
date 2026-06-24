sketchybar --add event spotify_change "com.spotify.client.PlaybackStateChanged"

sketchybar --add item spotifyShowHide q \
    --set spotifyShowHide label="" \
    drawing=on \
    click_script="$PLUGINDIR/spotifyShowHide.sh"

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
                          click_script="$PLUGINDIR/spotifyDetails.sh" \
                          update_freq=60 \
                          scroll_texts=on \
                          label.max_chars=40 \
                          popup.align=center \
    --subscribe spotifyIndicator spotify_change

sketchybar --add item spotifyImage popup.spotifyIndicator \
    --set spotifyImage script="$PLUGINDIR/spotifyImage.sh" \
                      click_script="$PLUGINDIR/spotifyImage.sh" \
                      update_freq=0 \
                      y_offset=-4 \
                      background.drawing=on \
                      background.image="$PLUGINDIR/image.jpg" \
                      background.image.drawing=on \
                      background.image.scale=0.4 \
                      background.image.corner_radius=9 \
    --subscribe spotifyImage spotify_change

sketchybar --add item spotifyAlbum popup.spotifyIndicator \
    --set spotifyAlbum script="$PLUGINDIR/spotifyAlbum.sh" \
                      update_freq=60 \
                      scroll_texts=on \
                      label.max_chars=30 \
    --subscribe spotifyAlbum spotify_change

# sketchybar --add item spotifyControls popup.spotifyIndicator \
#     --set spotifyControls popup.drawing=off \
#                           popup.horizontal=on \
#                           popup.background.border_width=0 \
#                           popup.align=center
#
# sketchybar --add item spotifyPlayPauseClone popup.spotifyControls \
#     --set spotifyPlayPauseClone script="$PLUGINDIR/spotifyPlayPause.sh" \
#                           drawing=off \
#                           click_script="osascript -e 'tell application \"Spotify\" to playpause'" \
#                           update_freq=60 \
#     --subscribe spotifyPlayPauseClone spotify_change
#
# sketchybar --add item spotifyNextClone popup.spotifyControls \
#     --set spotifyNextClone label="󰒭" \
#                       drawing=off \
#                       click_script="osascript -e 'tell application \"Spotify\" to next track'"

sketchybar --add slider spotifyVolSlider popup.spotifyIndicator 252 \
  --set spotifyVolSlider click_script="$PLUGINDIR/spotifySetVol.sh" \
  script="sketchybar -m --set spotifyVolSlider slider.percentage=\"$(osascript -e 'tell application "Spotify" to sound volume as integer')\"" \
  update_freq=60 \
  slider.percentage="$(osascript -e 'tell application "Spotify" to sound volume as integer')" \
  slider.knob="" \
  background.color=${primary_color} \
  background.height=1



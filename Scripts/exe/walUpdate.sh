#!/bin/bash

pathtowallpaper=$(plutil -p ~/Library/Application\ Support/com.apple.wallpaper/Store/Index.plist | grep file | head -n 1 | grep -o 'file:[^"]*' | grep -o '\/Users.*')
wal -i ${pathtowallpaper}
qutebrowser :config-source
sketchybar --reload
brew services restart borders
echo "You may need to restart yabai"


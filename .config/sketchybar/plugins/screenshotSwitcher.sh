#!/bin/bash

target=$(defaults read com.apple.screencapture "target-screenshot")

if [[ "${target}" == "clipboard" ]]; then
  defaults write com.apple.screencapture "target-screenshot" "file"
  defaults write com.apple.screencapture location "~/Screenshots"
  defaults write com.apple.screencapture "location-screenshot" "~/Screenshots"
else
  defaults write com.apple.screencapture "target-screenshot" "clipboard"
fi





#!/bin/bash

target=$(defaults read com.apple.screencapture target)

if [[ "${target}" == "clipboard" ]]; then
  defaults write com.apple.screencapture target "file"
  defaults write com.apple.screencapture location "~/Screenshots"
else
  defaults write com.apple.screencapture target "clipboard"
fi





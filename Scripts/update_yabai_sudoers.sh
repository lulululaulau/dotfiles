#!/bin/bash
echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) /Users/llau/Documents/Personal/CompSci/yabai/bin --load-sa" | sudo tee /private/etc/sudoers.d/yabai

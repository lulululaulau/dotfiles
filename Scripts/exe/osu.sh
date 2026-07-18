#!/bin/bash
unzip ~/Downloads/osu.app.Apple.Silicon.zip
rm -r /Applications/osu\!
mv ~/Documents/osu\! /Applications/osu\!
rm ~/Downloads/osu.app.Apple.Silicon.zip
open -a osu!

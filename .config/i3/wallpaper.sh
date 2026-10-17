#!/bin/bash

DIR="$HOME/walls-catppuccin-mocha/"

WALLPAPER=$(find "$DIR" -type f \( -name "*.png" -o -name "*.jpg" \) | shuf -n 1)

feh --bg-fill "$WALLPAPER"

betterlockscreen -u "$WALLPAPER" &

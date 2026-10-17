#!/bin/bash

WINDOW_ID=$(xdotool search --class "floating_playlist" 2>/dev/null | tail -n 1)

if [ -z "$WINDOW_ID" ]; then
    st -c "floating_playlist" -e ncmpcpp &
else
    xdotool windowclose "$WINDOW_ID" || xdotool windowkill "$WINDOW_ID"
fi

#!/bin/bash
while mpc idle player > /dev/null; do
    artist=$(mpc current -f %artist%)
    title=$(mpc current -f %title%)

    if [ -n "$artist" ] || [ -n "$title" ]; then
        notify-send -r 9999 -i "media-playback-start" "Now playing" "$artist\n$title"
    fi
done

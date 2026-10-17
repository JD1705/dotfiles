#!/bin/bash

zscroll -l 28 \
    --delay 0.3 \
    --match-command "mpc status" \
    --match-text "playing" "--scroll 1" \
    --match-text "paused" "--scroll 0" \
    --update-check true "mpc current" & wait

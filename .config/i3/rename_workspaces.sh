#!/bin/bash
workspaces=( "一" "二" "三" "四" "五" "六" "七" "八" "九" "零" )
for i in {1..10}; do
    i3-msg "rename workspace $i to $i: ${workspaces[$i-1]}"
done

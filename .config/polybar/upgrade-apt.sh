#!/bin/bash

updates=$(apt list --upgradable 2>/dev/null | tail -n +2 | wc -l)

if [ "$updates" -gt -1 ]; then
    echo "$updates"
else
    echo ""
fi

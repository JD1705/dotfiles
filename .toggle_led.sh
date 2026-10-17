# ~/scripts/toggle_led.sh
#!/bin/bash
if [ $(xset q | grep "LED mask" | awk '{print $NF}') -eq "00000000" ]; then
    xset led 3
else
    xset -led 3
fi

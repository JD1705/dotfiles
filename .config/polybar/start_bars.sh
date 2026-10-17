#!/bin/bash
# Mata todas las barras existentes
killall -q polybar
# Espera hasta que los procesos estén cerrados
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done
# Lanza la barra
polybar main & polybar left & polybar right & polybar lower &

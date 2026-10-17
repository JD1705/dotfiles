#!/bin/bash
# Abrir la terminal en pantalla completa con el comando
# Usamos i3-msg para asegurar que la siguiente ventana sea fullscreen
i3-msg "exec terminator -e drift"
sleep 0.5
i3-msg "fullscreen enable"

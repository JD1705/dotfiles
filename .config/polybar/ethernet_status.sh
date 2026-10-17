#!/bin/bash

INTERFACE="ens33"  # Nombre REAL de tu interfaz (no el alias)
ACTION="$1"

get_status() {
    if nmcli -t -f GENERAL.STATE dev show "$INTERFACE" | grep -q "connected"; then
        echo "    "  # Conectado
    else
        echo "   "  # Desconectado
    fi
}

case "$ACTION" in
    "connect")
        nmcli dev connect "$INTERFACE"
	get_status
        ;;
    "disconnect")
        nmcli dev disconnect "$INTERFACE"
	get_status
        ;;
    *)
        get_status
        ;;
esac

# Mostrar estado si no se pasó acción
[ -z "$ACTION" ] && get_status

#!/bin/bash
options="Close Session\nReset\nShutdown\nSuspend\nHibernate"
chosen=$(echo -e "$options" | rofi -dmenu -p "Energy Options:")

case "$chosen" in
	"Close Session") i3-msg exit ;;
	"Reset") notify-send "This wont fix anything, you know...?" && sleep 1.5  && systemctl reboot ;;
	"Shutdown") notify-send "See you later, JD..." && sleep 1.5 && systemctl poweroff ;;
    "Suspend") notify-send "Finally you use this option..." && sleep 1.5 && systemctl suspend ;;
	"Hibernate") notify-send "Im a bear now..." && sleep 1.5 && systemctl hibernate ;;
esac

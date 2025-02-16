#!/bin/bash

chosen=$(echo -e "🔒 Zablokuj\n🔄 Restart\n⏳ Uśpij\n⏻ Wyłącz\n🚪 Wyloguj" | wofi --dmenu --width 300 --height 200)

case "$chosen" in
"🔒 Zablokuj") swaylock ;;
"🔄 Restart") systemctl reboot ;;
"⏳ Uśpij") systemctl suspend ;;
"⏻ Wyłącz") systemctl poweroff ;;
"🚪 Wyloguj") hyprctl dispatch exit ;;
esac

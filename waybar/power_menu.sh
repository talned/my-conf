#!/bin/bash

# Display a menu with power options using wofi
ACTION=$(echo -e "Shutdown\nReboot\nSuspend\nLog Out" | wofi --conf=/home/tal/.config/waybar/power_menu_config)

case $ACTION in
  Shutdown)
    shutdown now
    ;;
  Reboot)
    reboot
    ;;
  Suspend)
    systemctl suspend
    ;;
  Log\ Out)
    swaymsg exit
    ;;
esac


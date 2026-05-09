#!/bin/bash
LAYOUT=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap')
notify-send "Keyboard Layout" "$LAYOUT" -t 1000
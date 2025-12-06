#!/bin/bash

if systemctl --user is-active hypridle >/dev/null 2>&1; then
    text="󰒲"
    tooltip="Hypridle is Running"
    class="active"
else
    text="󰒳"
    tooltip="Hypridle is Stopped"
    class="inactive"
fi

echo "{\"text\": \"$text\", \"tooltip\": \"$tooltip\", \"class\": \"$class\"}"

#!/bin/bash
rofi_command="rofi -theme themes/vscode.rasi"

options="$(ls -d ~/workspace/swvl/*/ -lA | awk -F':[0-9]* ' '/:/{print $2}' | xargs -I% basename %)"

chosen="$(echo -e "$options" | $rofi_command -p " SWVL " -dmenu -selected-row 0)"

if [[ $chosen != "" ]]; then
    code "./workspace/swvl/${chosen}/"
fi

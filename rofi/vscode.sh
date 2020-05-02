#!/bin/bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme themes/vscode.rasi"


options="$(ls -d ./workspace/swvl/*/ -lA | awk -F':[0-9]* ' '/:/{print $2}')"

chosen="$(echo -e "$options" | $rofi_command -p " SWVL " -dmenu -selected-row 0)"


if [[ $chosen != "" ]]; then
    code $chosen
fi



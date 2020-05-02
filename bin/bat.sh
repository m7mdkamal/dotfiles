#!/usr/bin/env bash

fg="$(xrdb -query | grep -w color2 | head -n1 | awk '{print $2}')"
light="$(xrdb -query | grep -w color7 | head -n1 | awk '{print $2}')"

cap=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$status" = "Charging" ]]
then
	echo -ne "%{F$light}+bat %{F$fg}$cap%"
else
	echo -ne "%{F$light}bat %{F$fg}$cap%"
fi
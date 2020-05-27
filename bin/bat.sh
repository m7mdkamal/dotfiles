#!/usr/bin/env bash

valueColor="$(xrdb -query | grep -w polybarValue | head -n1 | awk '{print $2}')"
keyColor="$(xrdb -query | grep -w polybarKey | head -n1 | awk '{print $2}')"

cap=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$status" = "Charging" ]]
then
	echo -ne "%{F$keyColor}+bat %{F$valueColor}$cap%"
else
	echo -ne "%{F$keyColor}bat %{F$valueColor}$cap%"
fi
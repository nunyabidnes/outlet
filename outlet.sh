#!/usr/bin/bash

#Set Threshold for bat_low
lowThreshold=45

#Set Threshold for bat_high
highThreshold=55

#Current charging or discharging status
batStatus=$(cat /sys/class/power_supply/BAT0/status)

#Current charge level
batCharge=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $batStatus = "Charging" ] && [ $batCharge -gt $highThreshold  ]; then
	curl -X POST https://maker.ifttt.com/trigger/bat_high/with/key/YourKeyHere

elif [ $batStatus = "Discharging" ] && [ $batCharge -lt $lowThreshold ]; then
	curl -X POST https://maker.ifttt.com/trigger/bat_low/with/key/YourKeyHere
fi

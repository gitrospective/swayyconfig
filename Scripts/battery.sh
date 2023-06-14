#!/bin/bash
threshold=20  #you can set it to whichever percent you prefer
while true; do

	battery_level=$(acpi | awk '{print $4}' | tr -d ',' | tr -d '%')
	battery_status=$(acpi | awk '{print $3}' | tr -d ',')

	if [[ $battery_level -le $threshold && $battery_status = "Discharging" ]]; then
		dunstify -u critical "Battery Low" "Battery level is at ${battery_level}%!"
	fi
	sleep 5
done
